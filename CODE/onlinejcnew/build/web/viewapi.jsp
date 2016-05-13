<%-- 
    Document   : viewapi
    Created on : Feb 24, 2011, 4:45:00 PM
    Author     : VINAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.*" %>
<%@page import = "java.lang.reflect.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>API Information</title>
        <link rel="stylesheet" href="menu.css"/>
        <style type="text/css">
            .apiinfo
            {
               border:1px solid #FFFFFF;
                 width:78%;
                 padding:2%;
                 color: white;
                 position: absolute;
                background-color: #9b3b81;
                top: 24%;
                 left:8.5%;
            }
        </style>
        
        <script src="jquery.js" type="text/javascript"></script>  
        <script src="jeasing.js" type="text/javascript"></script>  
        <script src="menujs.js" type="text/javascript"></script>
    </head>
    <body background="back new1.jpg">
        <div class="header"> JavaCompiler</div>
        <div class="cap">with security editor</div>
                
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
        Class c;
        String name=request.getParameter("apiname");
        try
		{
			c=Class.forName(name);
			Constructor cc[]=c.getConstructors();
			Method m[]=c.getMethods();
			Field f[]=c.getFields();
          %>
          <div class="apiinfo">
          <center>
              <h2>Java API Classes</h2>  </center>
              <h4><u>Java API Fields</u></h4>
              
              <%
                for(int i=0;i<f.length;i++)
                {
              %>
              <br>
              <%= f[i] %>
              <% } %>
              <h4><u>Java API Constructors</u></h4>
              <%
                    for(int i=0;i<cc.length;i++)
			{
              %>
              <br>
              <%= cc[i] %>
              <% } %>
              <h4><u>Java API Methods</u></h4>
              <%
                for(int i=0;i<m.length;i++)
			{
              %>
              <br>
              <%= m[i] %>
              <% 
                }
                }
                catch(Exception e)
		{
              %>
              <div class="apiinfo">
                  <center><br><br><br>
              <h2>Invalid API class name.</h2><br><br><br><br><br>
              <p>Go to <a href="api.jsp"><b>API Information </b></a>Page to Retry!</p><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                  </center>
              </div>
              <% } %>
              
        
          </div>
        
    </body>
</html>
