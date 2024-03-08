<%-- 
    Document   : login
    Created on : Nov 2, 2023, 11:34:05 PM
    Author     : Fpt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="post">
            <div>Username: <input type="text" name="username"></div>
            <div>Password <input type="text" name="password"></div>
            <div><button>Login</button></div>
            
        </form>
        <div>${mess}</div>
    </body>
</html>
