/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
 function generatekeys()
   {
   
       		if(document.gen.first.value=="")
       		{
                	window.alert("Please Enter First Prime Number.");
                 	document.gen.p1.focus();
                	return false;
       		}
        	else
           	if(document.gen.second.value=="")
           	{
                 	window.alert("Please Enter Second Prime Number.");
                 	document.gen.p2.focus();
                 	return false;
           	}
       
          	else
              	{
                  	return true;
             	}
   }
   
   function apival()
   {
       if(document.apiform.apiname.value=="")
       	{
                	window.alert("Please Enter the Java API.");
                 	document.apiform.apiname.focus();
                	return false;
       	}
        else
         {
                  	return true;
          }
   }

