<%-- 
    Document   : index
    Created on : Feb 20, 2011, 2:46:42 PM
    Author     : VINAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.util.*"%>
<%@ page import ="java.sql.*"%>
<%
 String cookieName = "uname";
String cookiepwd = "pwd";
Cookie cookies [] = request.getCookies ();
Cookie myCookie1 = null;
Cookie myCookie2 = null;
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
for (int i = 0; i < cookies.length; i++) 
{
if (cookies [i].getName().equals (cookiepwd))
{
myCookie2 = cookies[i];
break;
}
}
}

if(myCookie1!=null)
    {
   
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Compiler - Encryption</title>
           
  
    <link rel="stylesheet" href="menu.css"/>  
    <link rel="stylesheet" href="rsa.css"/>  
    
    <script src="rsa.js" type="text/javascript"></script> 
  
    <script src="jquery.js" type="text/javascript"></script>  
    <script src="jeasing.js" type="text/javascript"></script>  
    <script src="menujs.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="header"> JavaCompiler</div>
        <div class="cap">with security editor</div>
        <div> <h3 style="color:white; position: absolute;left:80%">Welcome <%=myCookie1.getValue()%> </h3> <br>
            
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
        <div class="encrypt">Encryption Process</div>
                <div class="generate">
                        <form action="GenerateServlet" name="gen" onSubmit="return generatekeys();">
                        <table cellspacing="20px" align="center">
                            <tr>
                                <th>Enter the First Prime Number(P):</th>
                                <td><input type="text" value="" name="first"></td>
                            </tr>
                            <tr>
                                <th>Enter the Second Prime Number(Q):</th>
                                <td><input type="text" value="" name="second"></td>
                            </tr>
                            <tr>
                                <td colspan="2"><hr/><br><input type="submit" value="Generate Keys" name="generatekeys"></td>
                            </tr>
                        </table>
                        </form>
                      
                    
	<%String msg1=request.getParameter("ms1");
	  String msg2=request.getParameter("ms2");
	  String msg3=request.getParameter("ms3");
	  String msg4=request.getParameter("ms4");
	  String pubkey=request.getParameter("pkey"); 
	  String seckey=request.getParameter("skey"); 
	  String nvalue=request.getParameter("nval"); 
	%>
        
        <%
		if(msg1!=null)
		{
	%>
		<b><%=msg1%></b>

	<%
		}
		else if(msg2!=null)
		{
	%>
		<b><%=msg2%></b>
    		

	<%
		}
		else if(msg3!=null)
		{
	%>
		<b><%=msg3%></b>
		

	<%
		}
		else if(msg4!=null)
		{
	%>
		<b><%=msg4%></b>
    		
	<%
		}
	%>



	<table cellspacing="20px"  align=center>
            <caption></caption>
            <tr>
	<td >PUBLIC KEY (E)<td align=center>
	<%if(pubkey!= null)
	{%>
	<input type="text"name="first" size=25 value="<%=pubkey%>">
	<%}
	else
		{
	%>
	<input type="text"name="first" size=25>
	<%}%>
            </tr>
	
	
            <tr>
	<td>SECRET KEY (D)<td align=center >
	<% if(seckey!=null)
     {%>
	<input type="text" name="skey" size=25 value="<%=seckey%>">
	
	<%}
	else
	{%>
	<input type="text"name="first" size=25>
	<%}%>
            </tr>
	
            <tr>
	<td>N VALUE (N)<td align=center>
	<%if(nvalue!=null)
	{%><input type="text" name="first" size=25 value="<%=nvalue%>">
	<%}else{%>
	<input type="text"name="first" size=25>
	<%}%>
            </tr>
        </table>
            
	<form method="post" action="intext.jsp" >
	<input type="hidden"name="skey" value="<%=seckey%>">
	<input type="hidden"name="nv" value="<%=nvalue%>">

	<table align="center">
	<tr>
	<th  align=center><input type="submit" name="compile" value="SEND KEYS"></th>
        </tr>
        
	</table>
        </form>
        
	
                </div>
                
        </div>
    </body>
</html>

<%
    }
    else
        {
%>

<jsp:forward page="loginpage1.jsp"/>

<%
        }
%>
