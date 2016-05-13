<%-- 
    Document   : loginpage
    Created on : Feb 9, 2011, 11:36:32 AM
    Author     : VINAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.lang.*" %>
<%@page import="java.sql.*" %>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlinejc","onlinejc");
    Statement st=con.createStatement();
    //out.println("Connected to DataBase...");
    
    String user=request.getParameter("uname");
    String emailid=request.getParameter("email");
    String passwd=request.getParameter("pwd");
    String ques=request.getParameter("question");
    String ans=request.getParameter("answer");
    
     
    String qry="select uname from register where uname='"+user+"'";
    ResultSet rs=st.executeQuery(qry);
    
    if(rs.next())
    {
       %>
      
          
       
       <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <script src="validate.js"></script>
        <style type="text/css">
            .register
            {
                 background:#e5eecc;
                 border:1px solid #FFFFFF;
                 width:39%;
                 position:absolute;
                 left:31%;
                 padding:2%;
            }
            th
            {
                text-align:left;
            }
            h1
            {
                background:#9b3b81;
            }
            .header
            {
               position: absolute;
               top:60%;
               color:white;
               font-size: 40pt;
               text-decoration: none;
            }
            p
            {
                
                color: white;
              
            }
            p a
            {
                color: white;
           
            }
        </style>
    </head>
    <body background="back new1.jpg">
        <h1 align="center">Registration</h1>
        <p>Goto <a href="index.jsp">HOME</a> page.</p>
        <a href="index.jsp"><div class="header">JavaCompiler</div></a>
        <div class="register">
            <form name="registration" onSubmit="return regvalidate();" method="post" action="loginpage.jsp">
        <table align="center" cellspacing="20px" border="0">
            <tr>
                <td colspan="2">UserName already taken. Please choose another.</td>
            </tr>
            <tr>
                <td colspan="2">Please Enter Your Details.</td>
            </tr>
           <tr>
                <th>Enter UserName:</th>
                <td><input type="text" value="" name="uname"></td>
            </tr>
            <tr>
                <th>Enter Email Id:</th>
                <td><input type="text" value="" name="email" ></td>
            </tr>
            <tr>
                <th>Create Password:</th>
                <td><input type="password" value="" name="pwd"></td>
            </tr>
            <tr>
                <th>ReEnter Password:</th>
                <td><input type="password" value="" name="repwd"></td>
            </tr>
            <tr>
                <th>Security Question:</th>
                <td>
                    <select name="question">
                        <option>Choose your security question.</option>
                        <option>What is the name of your best friend?</option>
                        <option>What is your first phone number?</option>
                        <option>What is your library card number?</option>
                        <option>What is the name of your favorite teacher?</option>
                        <option>What is your vehicle registration number?</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Answer:</th>
                <td><input type="text" value="" name="answer"></td>
            </tr>
            <tr>
                <th colspan="2"><input type="checkbox" name="accept"> I accept to Terms and Conditions.</th>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Create My Account" name="submit"></td>
            </tr>
        </table>
            </form>
        </div>
    </body>
</html>

      
       
       <%
       
    }
    
    else
        {
    
    st.executeUpdate("insert into register(uname,email,pwd,question,answer) values('"+user+"','"+emailid+"','"+passwd+"','"+ques+"','"+ans+"')");
    
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <script src="validate.js"></script>
        <style type="text/css">
            .login
            {
                position:absolute;
                width:30%;
                left:35%;
                top:30%;
                background:#d27e34;
                padding:2%;
            }
            h1
            {
                color:white;
            }
            a
            {
                color:white;
                text-decoration: none;
            }
        </style>
    </head>
    <body background="back new1.jpg">
        <h1>Successfully Registered...</h1>
        <div class="login">
                    <form name="login" onSubmit="return loginval();" method="post" action="logindirect.jsp">
                        <h3>Please Login...</h3><hr/><br>
                        <table align="center" cellspacing="10%">
                            <tr>
				<th align="left">UserName</th>
                                <td><input type="text" value="" name="uname"></td>
                            </tr>
                            <tr>
				<th align="left">Password</th>
                                <td><input type="password" value="" name="pwd"></td>
                            </tr>
                            <tr>
                                <th><input type="submit" value="SignIn" name="signin"> </th>
                                <th><a href="forgotpwd.jsp">forgot password?</a></th>
                             </tr>
                        </table>	
		    </form>
	</div>
    </body>
</html>
<%
    }
%>
