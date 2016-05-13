<%-- 
    Document   : index
    Created on : Feb 20, 2011, 2:46:42 PM
    Author     : VINAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"%>
<%@page import="java.lang.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.*" %>


<%

   Cookie cookie = null;
   Cookie[] cookies = null;
   // Get an array of Cookies associated with this domain
   cookies = request.getCookies();
   if( cookies != null ){
      
      for (int i = 0; i < cookies.length-1; i++){
         cookie = cookies[i];
         cookie.setMaxAge(0);
         response.addCookie(cookie);
         //out.print("Name : " + cookie.getValue( ) + ",  ");
      }
  }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Compiler - Home</title>
           
  
    <link rel="stylesheet" href="menu.css"/>  
  
    <script src="validate.js" type="text/javascript"></script>
    <script src="jquery.js" type="text/javascript"></script>  
    <script src="jeasing.js" type="text/javascript"></script>  
    <script src="menujs.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="header"> JavaCompiler</div>
        <div class="cap">with security editor</div>
                
        <div id="menu">
    <ul>  
        <li class="purple">  
            <p><a href="index.jsp">Home</a></p>  
            <p class="subtext">The front page</p>  
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
            <p><a href="register.jsp">Register</a></p>  
            <p class="subtext">Please Register Here...</p>  
        </li>
    </ul>
        </div>
        
        <div class="login">
			<form name="login" onSubmit="return loginval();" method="post" action="logindirect.jsp">
				<h3>SignIn...</h3><hr/><br>
				<b>UserName</b><br>
				<input type="text" value="" name="uname"><br><br>
				<b>Password</b><br>
				<input type="password" value="" name="pwd"><br><br>
				<input type="submit" value="SignIn" name="signin">
				<a class="indexpage" href="forgotpwd.jsp">forgot password?</a><br><br><hr/><br>
				<b>Not Yet Registered?</b><br>
				<a class="indexpage" href="register.jsp">Please Register</a>
			</form>
		</div>
		<div class="content">
			<h2>About Online Java Compiler</h2><hr/>
			<p>
				     As it is a competitive world and very fast world, every thing in the universes is to be internet. In this internet world all the things are on-line. So we created software called “On-line java compiler with security editor”.</p><br><br>

<p>                The main aim of this project we can easily to write a java program and compile it and debug in on-line. The client machine doesn’t having java development kit .The client machine only connected to the server.  The server having java compiler .so server executes the java code and produce the error message to the appropriate client machine.</p><br><br>

<p>              In this project is also creating a security editor. This editor performs Encrypt and decrypts the file. Encryption and decryption process perform using RSA Algorithms. There is lot of security algorithms are there, but RSA algorithm is very efficient to encrypt and decrypt the file. </p><br><br>

   <p>       In this project is used to view all type of java API .It is very useful for writing the java program easily, for example if any error in the format of API means we can able to view API throw this modules.

			</p><br>
		</div>
    </body>
</html>
