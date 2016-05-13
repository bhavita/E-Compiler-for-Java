/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

   function createfile()
   			{
   
       				if(document.create.javacode.value=="")
       				{
                			window.alert("Please write your java code.");
                 			document.create.javacode.focus();
                			 return false;
       				}
        			else
           			if(document.create.filename.value=="")
           			{
                 			window.alert("Please Enter the FIle Name!");
                 			document.create.filename.focus();
                 			return false;
           			}
       
          			else
              			{
                  			return true;
             			 }
   			}
                        
                        
                        
   function compilefile()
   			{
   
       				if(document.compile.javafile.value=="")
       				{
                			window.alert("Please Enter Your File Name!");
                 			document.create.javacode.focus();
                			 return false;
       				}
          			else
              			{
                  			return true;
             			 }
   			}
