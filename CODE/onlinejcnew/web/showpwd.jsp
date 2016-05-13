<%-- 
    Document   : showpwd
    Created on : Mar 24, 2011, 1:18:45 AM
    Author     : VINAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.io.*"%>
<%@page import="java.lang.*" %>
<%@page import="java.sql.*" %>
<%

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlinejc","onlinejc");
    Statement st=con.createStatement();
    //out.println("Connected to DataBase...");
    
    String user=request.getParameter("username");
    String answer=request.getParameter("ans");
    
    String qry="select answer,pwd from register where uname='"+user+"'";
    ResultSet rs=st.executeQuery(qry);
    
    if(rs.next())
    {
        String ansr = rs.getString(1);
        String pwd = rs.getString(2);
     
    
    if(ansr != null && answer.equals(ansr))
        {
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Password</title>
    </head>
    <body bgcolor="#e5eecc">
        <h3>Your Password</h3>
        <%=pwd%><br><br>
        
        Please <a href="index.jsp"><b>Login</b></a>
    </body>
</html>
<%
    }
        }
%>
