<%-- 
    Document   : myfiles
    Created on : Mar 15, 2011, 11:14:33 PM
    Author     : VINAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.io.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.*" %>
<% 
        String cookieName = "uname";
       // String dir1=request.getRemoteHost();
        int i;
   
    Cookie cookies [] = request.getCookies ();
    Cookie myCookie1 = null;
   
    if (cookies != null)
    {
        for (i = 0; i < cookies.length; i++) 
        {
            if (cookies [i].getName().equals (cookieName))
            {
                myCookie1 = cookies[i];
                break;
            }
        }
    }
    
               String dir=request.getRemoteHost();
	
                File folder = new File("c:/"+myCookie1.getValue()+"/");
                File[] listOfFiles = folder.listFiles();
                try
                        {
                for (i = 0; i < listOfFiles.length; i++) 
                {
                    
                    if (listOfFiles[i].isFile())
                
		{       
                       try
                       {
                           out.println(listOfFiles[i].getName()+"\n");
                       }
                       catch(Exception e)
                       {
                           out.println("file error");
                       }
                    }
                    }
                }
                catch(Exception e)
                {
                    out.println("ERROR:"+e);
                }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
