/* 
 * Java script to choose between the webpages(create java file and the compile)
 */

function go()
{
    if(document.f1.compiler[0].checked==true)
        {
            location.href="sample.html";
        }
    else if(document.f1.compiler[1].checked==true)
            location.href="compilejava.jsp";
    else
        window.alert("Please select one option");
}  


   function regvalidate()
  			 {
       				 var RE1=/^[a-z A-Z]+$/;	
          			var RE2=/^.+@.+\..{3}$/;
         
              			if(document.registration.uname.value=="")
             			 {
                			 window.alert("Username should  NOT Be empty");
                 			document.registration.uname.focus();
                 			return false;
              			}
         			 else
              			if(document.registration.uname.value.length<6)
              			{
                			 window.alert("Username must be atleast 6 characters");
                 			document.registration.uname.focus();
                			 return false;
              			}
        			else
              			if(RE1.test(document.registration.uname.value)==false)
              			{
                  			window.alert("username should contain only letters ");
                  			document.registration.uname.focus();
                  			return false;
             			}
          
	 			else
              			if( (document.registration.email.value=="")||(document.registration.email.value==null))
              			{
                 			 window.alert("Email Id should not be empty");
                 			 document.registration.email.focus();
                  			return false;
              			}
          			else
              			if(RE2.test(document.registration.email.value)==false)
              			{
                 			 window.alert("Invalid Email Id");
                  			document.registration.email.focus();
                  			return false;
              			}
				else
              			if(document.registration.pwd.value=="")
              			{
                  			window.alert("Password should NOT Be empty");
                  			document.registration.pwd.focus();
                  			return false;
              			}
          			else
              			if(document.registration.pwd.value.length<6)
              			{
                 			 window.alert("Password  must be atleast 6 characters");
                  			document.registration.pwd.focus();
                  			return false;
              			}
				else
				if(document.registration.repwd.value=="")
				{
					window.alert("Confirm Password field must not be empty");
					document.registration.repwd.focus();
					return false;
				}
         
				else
	     			if(document.registration.pwd.value!=document.registration.repwd.value)
	     			{
		 			window.alert("Both the passwords did not match.");
					 document.registration.repwd.focus();
					return false;
	     			}
				else
	     			if(document.registration.question.selectedIndex==0)
	     			{
					window.alert("Choose the security question..,");
					document.registration.question.focus();
					return false;
	     			}
				else
	     			if(document.registration.answer.value=="")
	     			{
					window.alert("Please answer the security question.");
					document.registration.answer.focus();
					return false;
	     			}
        			 else
             			if(document.registration.accept.checked==false)
             			{
               				 window.alert("Please accept the terms and conditions");
                			return false;
             			}
        			 else
             			{
                			 window.alert("You are Registered. Please Login.");
                 			return true;
             			}
  			 }
                         
   function loginval()
   {
       var RE1=/^[a-z A-Z]+$/;	
       
         
       if(document.login.uname.value=="")
       {
                window.alert("Username should  NOT Be empty");
                 document.login.uname.focus();
                 return false;
       }
        else
           if(document.login.uname.value.length<6)
           {
                 window.alert("Username must be atleast 6 characters");
                 document.login.uname.focus();
                 return false;
           }
        else
           if(RE1.test(document.login.uname.value)==false)
           {
                  window.alert("username should contain only letters ");
                  document.login.uname.focus();
               	return false;
           }
       else
          if(document.login.pwd.value=="")
         {
                  window.alert("Password should NOT Be empty");
                  document.login.pwd.focus();
                  return false;
          }
        else
           if(document.login.pwd.value.length<6)
           {
                 window.alert("Password  must be atleast 6 characters");
                 document.login.pwd.focus();
                 return false;
            }
          else
              {
                  return true;
              }
   }

