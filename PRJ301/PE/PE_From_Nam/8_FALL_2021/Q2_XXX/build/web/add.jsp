<%-- 
    Document   : add
    Created on : Nov 2, 2023, 11:13:37 PM
    Author     : Fpt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><table>

            <tbody>
            <form action="add" method="post">
                <tr>
                    <td>Title</td>
                    <td><input type="text" name="title"></td>
                </tr>
                <tr>
                    <td>Startdate(yyyy/MM/dd)</td>
                    <td><input type="text" name="start"></td>
                </tr>
                <tr>
                    <td>Enddate(yyyy/MM/dd)</td>
                    <td><input type="text" name="end"></td>
                </tr>
                <tr>
                    <td>   </td>
                    <td><button>Submit</button></td>
                </tr>
            </form>


        </tbody>
    </table>

</body>
</html>
