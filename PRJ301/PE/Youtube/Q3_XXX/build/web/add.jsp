<%-- 
    Document   : add
    Created on : Nov 2, 2023, 4:31:11 PM
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
        <c:if test="${acc == null}">
            <h1>Access Denied</h1>
        </c:if>
        <c:if test="${acc != null}">
            <form action="add" method="post">
                <div>id: <input type="text" name="id" required=""></div>
                <div>Name: <input type="text" name="name" required=""></div>
                <div>dob: <input type="date" name="dob" required=""></div>
                <div>Gender: <input type="radio" name="gender" value="1" required=""> Male <input type="radio" name="gender" value="0" required=""> Famale</div>
                <div>Certificates: <br>
                    <c:forEach items="${cert}" var="cert">
                        <input type="checkbox" name="certid" value="${cert.certid}"> ${cert.certname} at <input type="date" name="date"><br>
                    </c:forEach>
                    
                </div>
                <div><button>Save</button></div>
            </form>
            <div>${mess}</div>

        </c:if>

    </body>
</html>
