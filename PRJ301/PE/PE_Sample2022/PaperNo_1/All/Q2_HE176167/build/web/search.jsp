<%-- 
    Document   : search
    Created on : Nov 3, 2023, 10:49:29 PM
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
        <form action="search" method="post">
            <div>Name <input type="text" name="name" value="${name}"> <button>Search</button></div>
        </form>
        <c:if test="${std != null && std.size() != 0}">
            <table border="1px solid black">
                <thead>
                    <tr>
                        <th>sid</th>
                        <th>name</th>
                        <th>gender</th>
                        <th>dob</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${std}" var="std">
                        <tr>
                            <td>${std.sid}</td>
                            <td>${std.name}</td>
                            <td>${std.gender}</td>
                            <td>${std.dob}</td>

                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </c:if>


    </body>
</html>
