<%-- 
    Document   : tron
    Created on : Oct 15, 2023, 1:26:09 PM
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
        <h1>Bai1</h1>
        <form action="tinh" method="post">
            enter radius:<input type="text" name="r"/><br/>
            <input type="submit" value="SUBMIT"/>
        </form>
        <%
            if(request.getAttribute("dt")!= null){
                String s = (String)request.getAttribute("dt");
                
        %>  
        <h2>Dien tich: <%= s%></h2>
        <%
            }
        %>
    </body>
</html>
