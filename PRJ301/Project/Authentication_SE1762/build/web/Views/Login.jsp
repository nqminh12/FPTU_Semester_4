<%-- 
    Document   : Login
    Created on : Oct 4, 2023, 4:35:15 PM
    Author     : Duy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        ${error}
        <form action="Login" method="post">
            <input type="text" name="user" value="abc"><br/><!-- comment -->
            <input type="password" name="pass" value="123"><br/><!-- comment -->
            <input type="number" name="roll" value="0" min="0" max="10"><br/><!-- comment -->
            <input type="submit" name="Login" value="Login">
        </form>
    </body>
</html>
