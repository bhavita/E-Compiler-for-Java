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
        <title>Java Compiler - Decryption</title>
         
  
         <link rel="stylesheet" href="rsa.css"/>
    <link rel="stylesheet" href="menu.css"/>  
    
  
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
        <div class="decrypt">Decryption Process</div>
                <div class="decryptfile">
                    <form name="dec" action="Decresponse.jsp" method="post">
                    <table cellspacing="15px" align="center">
                        <tr>
                            <th>Enter N Value:</th>
                            <td><input type="text" value="" name="nvalue"></td>
                        </tr>
                        <tr>
                            <th>Enter the Secret Key:</th>
                            <td><input type="text" value="" name="key"></td>
                        </tr>
                        <tr>
                            <td colspan="2"><hr/><br><b>Select source File:</b></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="file" value="Browse" name="sfile" size="25%"></td>
                        </tr>
                        
                        <tr>
                            <td colspan="2"><input type="submit" value="Decrypt" name="decrypt"></td>
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