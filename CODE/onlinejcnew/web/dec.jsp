<%-- 
    Document   : intext
    Created on : Mar 19, 2011, 11:37:11 AM
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
        <title>Java Compiler - API Information</title>
           
  
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
            <p class="subtext">Please logout Here...</p>  
        </li>
    </ul>
        </div>
           <%
                String encmsg=session.getValue("emsg").toString();
           %>
        
        <div class="subback">	
            <div class="inhead"><h3>DECRYPTION PROCESS USING RSA ALGORITHM</h3></div>
    
            <div class="content2">
              
    <form method="post" action="Decresponse.jsp">
	<input type="hidden" name="msg" value=<%=encmsg%>>
	<table align=center cellspacing="20px">
            <tr>
	<td align="left">ENTER N VALUE   <td align=center><input type="password" name="nvalue" align=center size=40></tr>
            <tr>
	<td align="left">ENTER  SECRET KEY     <td align=center><input type="password" name="key" align=center size=40>
            </tr>
            <tr>
	<td  align=center colspan="2"><hr/><input type="submit" name="compile" value="DECRYPT"></td>
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