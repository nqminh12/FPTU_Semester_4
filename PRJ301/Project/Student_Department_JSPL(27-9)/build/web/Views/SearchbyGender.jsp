<%-- 
    Document   : SearchbyGender
    Created on : Oct 16, 2023, 3:12:44 AM
    Author     : thanh
--%>
<%@page import="DAL.*"%>
<%@page import="Models.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/loadDB.css"/>
    </head>
    <body>
        <h1></h1>
        <%  DAO d = (DAO)request.getAttribute("dao"); %>       
        <table>
            <%for(Student s : d.getStdg()){ %>
            <tr>
                <td><%= s.getId()%></td>
                <td><%= s.getName()%></td>
                <td><%= s.isGender()?"Male":"Female"%></td>
                <td><%= (d.getDept().get(s.getDepartId()) != null) ? d.getDept().get(s.getDepartId()).getName() : "Unknown" %></td>
                <td><%= s.getAge()+" tuổi "%></td>
                <td><%= s.getGpa()%></td>
                <td><%= s.getAdd()%></td>
                <td><%= s.getImg()%></td>
                <td><%= s.getDob()%></td>

            </tr>
            <%}%>
        </table>
    </body>
</html>