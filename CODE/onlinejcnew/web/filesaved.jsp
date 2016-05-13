<%-- 
    Document   : filesaved
    Created on : Feb 21, 2011, 11:09:19 PM
    Author     : VINAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.*" %>
<%@page import = "java.lang.*" %>

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

    FileOutputStream fos;
    String s=request.getParameter("javacode");
    String ff=request.getParameter("filename");
    String dir=request.getRemoteHost();
   // File kk=new File("c:/");
   // boolean bb=kk.mkdir();
    File kk1=new File("c:/" +myCookie1.getValue());
    boolean bb1=kk1.mkdir();
    System.out.println("file dir created" + bb1);
    fos=new FileOutputStream(kk1+"/"+ff);
    int end=s.length();
    int start=0;
    while(start<end)
    {
	fos.write(s.charAt(start));
    start++;	
    }
	fos.close();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Compiler - Home</title>
           
  
    <link rel="stylesheet" href="menu.css"/> 
	<style type="text/css" >
		h1
		{
			padding:1%;
			
		}
	</style>
  
   
    <script src="jquery.js" type="text/javascript"></script>  
    <script src="jeasing.js" type="text/javascript"></script>  
    <script src="menujs.js" type="text/javascript"></script>
    </head>
    <body>
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
<div class="subback">
	<h1>The file is successfully stored...</h1>

	<br><br><hr/><br><br>
	<center>
		<b>Please go to <a href="compiler.jsp">Compiler</a> section to compile the saved files..</b>
	</center>
</div>    
</body>

</html>

