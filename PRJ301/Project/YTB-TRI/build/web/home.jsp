<%-- 
    Document   : home
    Created on : Oct 15, 2023, 8:29:48 AM
    Author     : Fpt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2 style="color:orange">
            <%
                String name = "Nguyen Quang Minh";
                out.println("Hello " + name + " !");
                out.println("<br/>So.PI: " + Math.PI);
                double r = 1;
                DecimalFormat f = new DecimalFormat("##.##");
            %>       
        </h2>
        <h2 style="color:blue">
            Dien tich la: <%= f.format(Math.PI*r*r)%> 
        </h2>

        <h1>Bai 1</h1>
        <form>
            enter radius:<input type="text" name="r"/><br/>
            <input type="submit" value="SUBMIT"/>
        </form>
        <%
            if(request.getParameter("r")!= null){
                String r_raw = request.getParameter("r");
            double ra;
            try{
                ra = Double.parseDouble(r_raw);
                double s = ra*ra*Math.PI;
        %>
        <h2>Dien tich la: <%=f.format(s)%></h2>

        <%
                
            }catch(Exception e){
                System.out.print(e);
            }
            }
        %>
    </body>
</html>
