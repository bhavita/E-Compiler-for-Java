/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){  
  
    //When mouse rolls over  
    $("li").mouseover(function(){  
        $(this).stop().animate({height:'120px'},{queue:false, duration:600, easing: 'easeOutBounce'})  
    });  
  
    //When mouse is removed  
    $("li").mouseout(function(){  
        $(this).stop().animate({height:'50px'},{queue:false, duration:600, easing: 'easeOutBounce'})  
    });  
  
});
