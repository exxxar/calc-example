/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
   $('.dog').click(function(){
       var left = $(this).css("left");
       var top = $(this).css("top");
       $.post('./rotateDog',
       {
            _left:left,
            _top:top
       },
       function(data,status){
      
           if (data==="ok"){
               $('.dog').addClass('rotateDog');
              // alert("we are here");
           }
           else
               alert("error dog can't rotate");
        });
   }); 
   
   setInterval(function(){
        $("#sun").html($("#strelka-pivot").offset().left);
   },500);
   
   $("input[type='button']").click(function(){
       var _x = $("#x").val();
       var _y = $("#y").val();
       $.post("./startTrees", 
       {
           x:_x,
           y:_y
       },
       function(data){
         alert(data)
         var left = 0;
         var top = 0;
        if (data>=0 && data<=90)
        {
            left = -1000;
            top = -1000;
        } 
         if (data>=90 && data<=180)
        {
            left = 1000;
            top = -1000;
        } 
        
         if (data<=-90 && data>=-180)
        {
            left = 1000;
            top = 1000;
        } 
        
         if (data<0 && data>=-90)
        {
            left = -1000;
            top = 1000;
        } 
        $('.tree').css({
            "transform":"rotate("+data+"deg)",
            "transition":"5s",
            "transform-origin":"0% 100%",
            "top":top+"px",
            "left":left+"px"
        });
   });
   });
});
