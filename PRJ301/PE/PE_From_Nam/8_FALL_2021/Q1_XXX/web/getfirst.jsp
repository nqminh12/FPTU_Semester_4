<%-- 
    Document   : getfirst
    Created on : Nov 2, 2023, 10:54:35 PM
    Author     : Fpt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div><h1>HE176167</h1></div>
        <form action="getfirst" method="post">
            <div>Get first<input type="text" name="number"> letter(s)</div>
            <div><button>get</button></div>    
        </form>
        <div>${mess}</div>

    </body>
</html>
