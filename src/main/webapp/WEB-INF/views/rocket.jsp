<%-- 
    Document   : rocket
    Created on : 28.10.2015, 10:01:32
    Author     : Aleks
--%>

<%@page contentType="text/html" pageEncoding="windows-1251"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
        <title>JSP Page</title>
        <link href="../resources/style.css"/>
    </head>
    <style>
        .world {
            width:3000px;
            height:800px;
            background-color: #00cc99;
            position: relative;
        }
        
        .sun, .cloud, .grass, .house, .rocket, .rocketPanel, .tree, .startBtn {
            position: absolute;
        }
        
        .sun {
            width:100px;
            height:100px;
            background: transparent url('../resource/img/sun.png') center no-repeat;
            background-size:cover;
            left:50px;
            top:50px;
        }
        
         .grass {
            width:100%;
            height:50px;
            background: transparent url('../resource/img/grass.png') center;
            background-size:cover;
            left:0px;
            bottom:0px;
        }
        
         .house {
            width:100px;
            height:100px;
            background: transparent url('../resource/img/house.png') center no-repeat;
            background-size:cover;
            left:200px;
            bottom:50px;
        }
        
         .cloud:nth-child(1) {
            width:150px;
            height:40px;
            background: transparent url('../resource/img/house.png') center no-repeat;
            background-size:cover;
            left:800px;
            top:50px;
        }
        
         .cloud:nth-child(2) {
            width:150px;
            height:40px;
            background: transparent url('../resource/img/house.png') center no-repeat;
            background-size:cover;
            left:1000px;
            top:150px;
        }
        
         .cloud:nth-child(3) {
            width:150px;
            height:40px;
            background: transparent url('../resource/img/house.png') center no-repeat;
            background-size:cover;
            left:800px;
            top:50px;
        }
        
         .tree:nth-child(1) {
            width:70px;
            height:300px;
            background: transparent url('../resource/img/tree-1.png') center no-repeat;
            background-size:cover;
            left:800px;
            bottom:50px;
        }
        
        .tree:nth-child(2) {
            width:70px;
            height:300px;
            background: transparent url('../resource/img/tree-2.png') center no-repeat;
            background-size:cover;
            left:900px;
            bottom:50px;
        }
        
        .tree:nth-child(3) {
            width:70px;
            height:300px;
            background: transparent url('../resource/img/tree-3.png') center no-repeat;
            background-size:cover;
            left:1000px;
            bottom:50px;
        }
    </style>
    <body>
        <div clas="world">
            <div class="sun"></div>
            <div class="cloud"></div>
            <div class="cloud"></div>
            <div class="cloud"></div>
            <div class="house"></div>
            <div class="grass"></div>
            <div class="tree"></div>
            <div class="tree"></div>
            <div class="tree"></div>
            <div class="rocket"></div>
            <div class="rocketPanel">
                
                
            </div>
            <div class="startBtn"></div>
        </div>
    </body>
</html>

}





