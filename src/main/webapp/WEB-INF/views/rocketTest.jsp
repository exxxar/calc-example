<%-- 
    Document   : rocketTest
    Created on : 31.10.2015, 12:43:10
    Author     : Aleks
--%>

<%@page contentType="text/html" pageEncoding="windows-1251"%>
<!DOCTYPE html>
<html>

<head>
  <title>kek</title>
  <link href="./resources/site.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="./resources/dogAction.js"></script>
    <style> 
#cl1 {
    background-image: url(cl1.png);
    -webkit-animation: mymove 20s linear infinite;
}

#cl2 {
    background-image: url(cl2.png);
    -webkit-animation: mymove2 14s linear infinite;
}

#cl3 {
    background-image: url(cl3.png);
    -webkit-animation: mymove3 10s linear infinite;
}

#table {
    background-image: url(table.png);
 }  

#strelka {
     transform-origin:50% 100%;
     background-image: url(strelka.png); 
    -webkit-animation:fuel 0.9s linear infinite;
}
   

        
    </style>
    
</head>

<body>
  <div id="sun"></div>   
<div id="body"></div>

<div id="cl1"></div>
    
<div id="cl2"></div>
    
<div id="cl3"></div>
<div id="table"></div>
<div id="strelka"></div>
<div id="fire"></div>
<div id="rocket"></div>
<div id="trava1"></div>
<div id="trava2"></div>
<div id="trava3"></div>
<div id="trava4"></div>
<div id="trava5"></div>
<div id="trava6"></div>
<div id="trava7"></div>
<div id="trava8"></div>
<div id="trava9"></div>
<div id="trava10"></div>
<div id="trava11"></div>
<div id="trava12"></div>
<div id="trava13"></div>
<div id="trava14"></div>
<div id="trava15"></div>
<div id="strelka-pivot"></div>


</body>
</html>