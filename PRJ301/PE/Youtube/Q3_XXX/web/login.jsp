<%-- 
    Document   : login
    Created on : Nov 2, 2023, 4:31:04 PM
    Author     : Fpt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="post">
            <div>Username: <input type="text" name="username" required=""></div>
            <div>Password: <input type="password" name="password" required=""></div>
            <button>Login</button>
        </form>
        <div>${mess}</div>
    </body>
</html>
