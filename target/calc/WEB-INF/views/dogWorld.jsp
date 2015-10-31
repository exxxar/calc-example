<%-- 
    Document   : dogWorld
    Created on : 31.10.2015, 11:08:07
    Author     : Aleks
--%>

<%@page contentType="text/html" pageEncoding="windows-1251"%>
<!DOCTYPE html>
<html>
    <head>
        <title>First page</title>
        <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script src="./resources/dogAction.js"></script>
    </head>

    <style>
        #world {
            width:2000px;
            height:800px;
            background-color:lightblue;
            position:absolute;
            left:0px;
            top:0px;
            border:1px red solid;
            perspective: 1000px;
        }

        .sun {
            width:100px;
            height:100px;
            background:yellow;
            border-radius:50%;
            position:absolute;
            left:100px;
            top:50px;
            border:1px red dashed;

        }

        .cloud {
            width:200px;
            height:80px;
            background:gray;
            border-radius:10px 10px 10px 10px;
            position:absolute;
            left:400px;
            top:70px;
            border:1px red dotted;	
        }

        .cloud:nth-of-type(2) {
            left:700px;
            top:30px;
        }

        .cloud:nth-of-type(3) {
            left:1100px;
            top:90px;
        }

        .house {
            width:200px;
            height:200px;
            background:white;
            border-radius:100px 100px 0px 0px;
            position:absolute;
            left:200px;
            top:500px;
            border:5px black solid;	
        }

        .grass {
            width:100%;
            height:90px;
            background:lime;
            position:absolute;
            left:0px;
            top:700px;
            z-index:1;
        }

        .dog {
            width:150px;
            height:150px;
            position:absolute;
            left:1000px;
            top:600px;
            z-index:10;
            transform:rotateY(150deg);
            //-webkit-animation:dogAnim 5s ease infinite;
        }

        .dog .head {
            width:40px;
            height:40px;
            border-radius:50%;
            position:absolute;
            background:brown;
        }
        .dog .body {
            width:100px;
            height:70px;
            border-radius:25%;
            position:absolute;
            background:brown;
            margin-top:40px;
            margin-left:40px;
            z-index:10;
        }

        .dog .leg {
            width:8px;
            height:30px;
            border-radius:0px 0px 2px 2px;
            position:absolute;
            background:black;
            margin-top:100px;
            margin-left:60px;
            z-index:9;
        }

        .dog .l2 {
            left:50px;
        }

        .dog .tail {
            width:50px;
            height:7px;
            border-radius:0px 2px 2px 0px;
            position:absolute;
            background:black;
            margin-top:70px;
            margin-left:130px;
            z-index:9;
            transform-origin:0% 0%;
            transform:rotate(-45deg);
            -webkit-animation:tailAnim 1s linear infinite;
        }

        @-webkit-keyframes tailAnim {
            0%,100% {
                transform:rotateZ(-100deg);
            }
            50% {
                transform:rotateZ(100deg);
            }
        }

        @-webkit-keyframes dogAnim {
            0%,100% {
                transform:translateX(0px);
            }
            50% {
                transform:translateX(-500px);
            }
        }
        .rotateDog .body {

            background: yellow;
            transition:2s;
        }
        .tree {
            width:50px;
            height:100px;
            background:green;
            position:absolute;
        }

        .tree:before {
            content:'';
            width:100px;
            height:200px;
            border-radius:70px 70px 10px 10px;
            background:orange;
            position:absolute;
            margin-top:-200px;
            margin-left:-25px;
        }

        .t1 {
            left:500px;
            top:600px;
        }

        .t2 {
            left:650px;
            top:600px;
        }

        .t3 {
            left:800px;
            top:600px;
        }

        .form {
            position:absolute;
            width:300px;
            height:200px;
            top:500px;
            left:1500px;
            border:2px brown dotted;
            padding: 15px;
        }

        .form input[type="text"] {
            width:100%;
            height:30px;
            padding-top:5px;
            padding-bottom: 5px;
            font-size: 12pt;
            float:left;
            margin-bottom: 10px;
        }

        .form input[type="button"]{
            width: 100px;
            height: 40px;
            padding: 10px;
            text-align: center;
            background-color: lime;
            color: white;
            cursor: pointer;
            float: left;
            border: none;
        }

    </style>

    <body>
        <div id="world">
            <div class="sun"></div>
            <div class="cloud"></div>
            <div class="cloud"></div>
            <div class="cloud"></div>
            <div class="house"></div>
            <div class="tree t1"></div>
            <div class="tree t2"></div>
            <div class="tree t3"></div>
            <div class="dog">
                <div class="head"></div>
                <div class="body"></div>
                <div class="leg"></div>
                <div class="leg l2"></div>
                <div class="tail"></div>
            </div>
            <div class="grass"></div>
            <div class="form">
                <input type="text" value="" id="x" placeholder="x:"/>
                <input type="text" value="" id="y" placeholder="y:"/>
                <input type="button" value="press me"/>
            </div>
        </div>
    </body>
</html>
