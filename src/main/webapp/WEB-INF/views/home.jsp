<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>This is the homepage!</p>
        ${hello}
        <h1>CALCULATE</H1>
        <%
            int k = 10;
            
          System.out.print("k="+k);
         %>
        
        <c:if test="">
        
        
    </c:if>
        <form action="/calc/" method="GET">  
            <input type="text" value="${a}" placeholder="A" name="a"/>
            <input type="text" value="${b}" placeholder="B" name="b"/>
            <select name="operator">
                <option value="1">+</option>
                <option value="2">-</option>
                <option value="3">*</option>
                <option value="4">/</option>
            </select>
            <input type="text" value="${c}" disabled="true"/>
            <input  type="submit"/>
        </form>
    </body>
</html>
