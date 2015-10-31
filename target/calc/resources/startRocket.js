/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    
    $('.startBtn').click(function(){
        $.post("http://localhost:8080/calc/testRoket",
        {
            rocket_mass:"300",
            fuel_mass:"20",
            weight_mass:"20"
        },
        function(data,status){
            if (data==="ok")
                $(".rocket").addClass("startFlyRocket");
            if (data==="bad")
                 $(".rocket").addClass("detonateRocket");
        });
    });
    
});

