<%-- 
    Document   : login
    Created on : Oct 15, 2023, 10:09:27 PM
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
        <h1>Login form</h1>
        <%
            String u_init = getServletContext().getInitParameter("user");
            String p_init = getServletContext().getInitParameter("pass");
            if(request.getParameter("user")!= null && request.getParameter("pass") != null){
                String u = request.getParameter("user");
                String p = request.getParameter("pass");
                if(u.equalsIgnoreCase(u_init) && p.equalsIgnoreCase(p_init)){
            //nhap dung
            %>
            <jsp:forward page="welcome.jsp">
                <jsp:param name="name"  value="<%= u%>"/>
            
            </jsp:forward>
        
        <%
            } else {

            String err = "Ban nhap sai, de nghi nhap lai";
%>
        
<h3 style="color:red"><%= err%>   </h3>
        <%
}}
        %>
        <form>
            enter username:<input type="text" name="user"></br>
            enter password:<input type="password" name="pass"></br>
            <input type="submit" value="LOGIN"></br>
        </form>
    </body>
</html>
