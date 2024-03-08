<%-- 
    Document   : Search
    Created on : Nov 2, 2023, 9:49:19 AM
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
        <form action="search"  method="post">
            <div>Account: <select name="username">
                        <c:forEach items="${acc}" var="acc">
                            <option   value="${acc.username}" ${username eq acc.username ? "selected" : ""}>${acc.displayname}</option>
                        </c:forEach>
                </select> <button>Search</button></div>
        </form>
        <c:if test="${emp.size() != 0 and emp != null}">
            <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>Employee Id</th>
                        <th>Name</th>
                        <th>Dob</th>
                        <th>Gender</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${emp}" var="emp">
                        <tr>
                            <td>${emp.empid}</td>
                            <td>${emp.empname}</td>
                            <td>${emp.date}</td>
                            <td>${emp.empgender == true ? "Male" : "Female"}</td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>

        </div>
        </c:if>
        


    </body>
</html>
