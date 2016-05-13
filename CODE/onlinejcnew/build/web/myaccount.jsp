<%-- 
    Document   : myaccount
    Created on : Mar 29, 2011, 2:53:59 PM
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


if(myCookie1!=null && myCookie2!=null)
    {
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlinejc","onlinejc");
    Statement st=con.createStatement();
    //out.println("Connected to DataBase...");
    String user=myCookie1.getValue();
    
        String qry="select * from register where uname='"+user+"'";
    ResultSet rs=st.executeQuery(qry);
    
    while(rs.next())
    {
        String username=rs.getString(1);
        String email=rs.getString(2);
        String password=rs.getString(3);
        String question=rs.getString(4);
        String answer=rs.getString(5);
    
   
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account</title>
       
    </head>
    <body bgcolor="#e5eecc">
        <h2 align="center">My Account</h2>
        <p align="right"><b><a href="index.jsp">Logout</a></b></p><hr/>
        <table align="center" cellspacing="10%">
            <tr>
                <th align="left">Your UserName  </th>
                <td><b>:</b> <%=username%></td>
            </tr>
            <tr>
                <th align="left">Password  </th>
                <td><b>:</b> <%=password%></td>
            </tr>
            <tr>
                <th align="left">Email Id  </th>
                <td><b>:</b> <%=email%></td>
            </tr>
            <tr>
                <th align="left">Your Security Question </th>
                <td><b>:</b> <%=question%></td>
            </tr>
            <tr>
                <th align="left">Answer  </th>
                <td><b>:</b> <%=answer%></td>
            </tr>
        </table><br><br><br><br>
        <center>Go to <b><a href="compiler.jsp">Compiler</a></b> Section</center>
    </body>
</html>

<%
    }
    }
}
%>
