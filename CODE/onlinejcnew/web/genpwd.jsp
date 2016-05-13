<%-- 
    Document   : genpwd
    Created on : Mar 24, 2011, 1:01:08 AM
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
    
    String qry="select question from register where uname='"+user+"'";
    ResultSet rs=st.executeQuery(qry);
    
    if(rs.next())
    {
        String ques=rs.getString(1);
 %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generate pwd</title>
        <script language="javascript">
              function showpwd()
            {
                                if(document.f1.ans.value=="")
             			 {
                			 window.alert("Please fill the answer.");
                 			document.f1.ans.focus();
                 			return false;
              			  }
         			 else
              			{
                			 return true;
              			}
            }
        </script>
    </head>
    <body bgcolor="#e5eecc">
        <center>
        <h3>Please answer the below security question...</h3><hr><br>
        <b><%=ques%></b><br><br>
        <form name="f1" action="showpwd.jsp" onSubmit="return showpwd();">
        <input type="text" value="" name="ans"><br><br>
        <h3>UserName:</h3>
        <input type="text" value="" name="username"><br><br>
        <input type="submit" value="OK" name="submit">
        </form>
        </center>
    </body>
</html>
<%
    }
%>
