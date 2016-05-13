<%-- 
    Document   : filecompiled
    Created on : Feb 23, 2011, 10:37:09 PM
    Author     : VINAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<%@page import="java.lang.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
             String cookieName = "uname";

    Cookie cookies [] = request.getCookies ();
    Cookie myCookie1 = null;

    if (cookies != null)
    {
        for (int i = 0; i < cookies.length; i++) 
        {
            if (cookies [i].getName().equals (cookieName))
            {
                myCookie1 = cookies[i];
                break;
            }
        }
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result page</title>
        <link rel="stylesheet" href="menu.css"/>
        
    <script src="jquery.js" type="text/javascript"></script>  
    <script src="jeasing.js" type="text/javascript"></script>  
    <script src="menujs.js" type="text/javascript"></script>
    </head>
    <body background="back new1.jpg">
        <div class="header"> JavaCompiler</div>
        <div class="cap">with security editor</div>
                
        <div> <h3 style="color:white; position: absolute;left:80%">Welcome <%=myCookie1.getValue()%>  <br>
            </h3>
    </div>
                
        <div id="menu">
    <ul>  
         <li class="purple">  
            <p><a href="myaccount.jsp">My Account</a></p>  
            <p class="subtext">View My Account</p>  
        </li> 
        <li class="purple">  
            <p><a href="compiler.jsp">Compiler</a></p>  
            <p class="subtext">Create and Compile Java Files</p>  
        </li>  
        <li class="purple">  
            <p><a href="encrypt.jsp">Encrypt</a></p>  
            <p class="subtext">Encrypt the Java Code</p>  
        </li>  
        <li class="purple">  
            <p><a href="decrypt.jsp">Decrypt</a></p>  
            <p class="subtext">Decrypt the Java Code</p>  
        </li>  
        <li class="purple">  
            <p><a href="api.jsp">API Info</a></p>  
            <p class="subtext">Get the API information in Java</p>  
        </li>  
        <li class="purple">  
            <p><a href="help.jsp">Help</a></p>  
            <p class="subtext">Read the FAQs...</p>  
        </li>
        <li class="purple">  
            <p><a href="index.jsp">Logout</a></p>  
            <p class="subtext">Please Logout Here...</p>  
        </li>
    </ul>
        </div>
           <%
  
           
    String s=request.getParameter("javafile");
		String dir=request.getRemoteHost();
		
		InputStream is;
		int c;
		int i;
		//StringExtract se=new StringExtract(s);
		//if(se.extract())
                File folder = new File("c:/"+myCookie1.getValue()+"/");
                File[] listOfFiles = folder.listFiles();
                for (i = 0; i < listOfFiles.length; i++) {
                    
                    if (listOfFiles[i].isFile())
                
		{       
                       try
                       {
			FileInputStream fs=new FileInputStream("c:/"+myCookie1.getValue()+"/"+s);
                        
			Runtime r=Runtime.getRuntime();
			Process p=r.exec("javac "+"c:/"+myCookie1.getValue()+"/"+s);
			is=p.getErrorStream();
			c=is.read();
			if( c!=-1)
			{
%>
                        <div class="subback">
                            <h2>Error Report:</h2>
                            <form name="f1" action="filesaved.jsp"><b style="color:white">
                            <%
                                while(c!=-1)
				{
					c=is.read();
					if((char)c=='^')
					{
						out.println("<br>");
						c=is.read();
					}
					out.print((char)c);

				}
                             %>
                                </b><br><br><center><textarea rows="30" cols="60" name="javacode">
                            <%
                                while(fs.available()>0)
				{
					out.print((char)fs.read());	
				}
                            %>
                            </textarea></center><br>
                            <table align="center">
                            <tr>
                                <th>File Path:</th>
                                <td><input type="text" name="filename" value="<%=s%>"/></td>
                                <td><input type="submit" name="savefile" value="Update"></td>
                            </tr>
                            </table>
                            </form>
                        </div>
                            <% 
                                break;
                                }
                                else 
                                {
                                    
                            %>
                            <div class="subback">
                            <h3><%=s%>:Code has No Error..</h3><br><br>
                            
                          
                            <%
                                int c1;
                                
                        try
                        {
                           StringTokenizer st=new StringTokenizer(s,".");
                           String name=st.nextToken();
                           
                           
			Runtime r1=Runtime.getRuntime();
			Process p1=r1.getRuntime().exec("java -classpath "+"c:/"+myCookie1.getValue()+" "+name);
                        
			is=p1.getInputStream();
			InputStreamReader isr = new InputStreamReader(is);
                         BufferedReader br = new BufferedReader(isr);
                        
                         
                         String x = br.readLine();
                         String line=x;
                         while(!x.isEmpty())
                         {
                             line+=x;
							 x=br.readLine();
							 
                         }
                         
                         //out.println("Output:"+line);
                      %>
                      <h2 style="color:white">OUTPUT for<u> <%=s%> </u>is </h2>
                      <h3><%= line %></h3><br><br><br><br><br>
                      
                      <center><b>Go to <a href="compiler.jsp">Compiler</a> to create another file.</b></center<br>
                      
                      <%
                        
                            
                         }
                        catch(Exception e)
                        { 
                        %>
                        <h4>RUN TIME ERROR : <%= e %></h4>
                            </div>
                        <%
                            
                        }
                                break;
                                }
                                }
                                catch(Exception e)
                                 {
                             %>
                                    <div class="subback">
                                        <h2>File Not Found...</h2><br>
                                        <b>Please Go to <a href="compiler.jsp"> compiler </a> section to give the correct name</b>
                                    </div>
                             <%
                                }
                                }
                                    else
                                        {
                                           
                            %>
                            <h2>File is not Java File.</h2><br>
                            <b>Go to <a href="compiler.jsp">compiler</a> section to compile the correct file</b>
                            <%
                                    }
                                    }
                            %>
                            
            
        
    </body>
</html>
