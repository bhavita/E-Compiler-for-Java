<%-- 
    Document   : forgotpwd
    Created on : Mar 10, 2011, 11:07:25 PM
    Author     : VINAY KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <script language="javascript">
            function validate()
            {
                                if(document.forgotpwd.username.value=="")
             			 {
                			 window.alert("Username should  NOT Be empty");
                 			document.forgotpwd.username.focus();
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
        <h1>Forgot password???</h1>
        <h3>Please Enter Your UserName.</h3><br>
        <form name="forgotpwd" action="genpwd.jsp" onSubmit="return validate();">
        <input type="text" value="" name="username"><br><br>
        <input type="submit" value="Submit" name="submit">
        </form>
        <br><br>
        <a href="index.jsp">HOME</a>
        </center>
    </body>
</html>
