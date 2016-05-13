<%-- 
    Document   : loginpage
    Created on : Feb 9, 2011, 11:36:32 AM
    Author     : VINAY KUMAR
--%>


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
        <h1>Please Login...</h1>
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