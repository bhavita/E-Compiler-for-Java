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
        <title>Java Compiler - Help</title>
          
  
    <link rel="stylesheet" href="menu.css"/>  
    <link rel="stylesheet" href="rsa.css"/>  
  
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
        
        <div class="help">Help</div>
                <div class="faq">
                    <h2>Frequently Asked Questions</h2>
                    <b>What is online java compiler?</b><br>
                    <p>     As it is a competitive world and very fast world, every thing in the universes is to be internet. In this internet world all the things are on-line. So we created software called “On-line java compiler with security editor”.</p>
                    <br>
                    
                    <b>How to compile java file</b><br>
                    <p>Firstly write the java code in the editor and save it in you PC. Then compile the saved file using the compile option in the compiler menu</p>
                    <br>
                    <b>What is encryption?</b><br>
                    <p>Encryption is process of making the actual code to cipher code which is not understandable by anyone. By this way we can provide security to java code and reduce the unauthorized access of the code.</p>
                    <br>
                    <b>What is Decryption?</b><br>
                    <p>The cipher text should be converted to the actual text in order to make it understandable to the machine as well as the user. Hence the encrypted code must be converted to the actual code. This process of conversion from cipher text to actual code is called as the Decryption</p>
                    <br>
                    <b>What Algorithm is used for Encryption and Decryption?</b><br>
                    <p>The Algorithm used for Encryption and Decryption is RSA Algorithm.</p>
                    <br>
                    <b>What is RSA Algorithm?</b><br>
                    <p>RSA (which stands for Rivest, Shamir and Adleman who first publicly described it) is an algorithm for public-key cryptography.[1] It is the first algorithm known to be suitable for signing as well as encryption, and was one of the first great advances in public key cryptography. RSA is widely used in electronic commerce protocols, and is believed to be secure given sufficiently long keys and the use of up-to-date implementations.</p>
                    <br>
                    
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
