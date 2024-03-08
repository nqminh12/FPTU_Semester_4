<%-- 
    Document   : tinh
    Created on : Oct 16, 2023, 9:48:10 AM
    Author     : Fpt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            *{
                margin:auto;
            }
            .lable,input, select, option{
                font-size: 30px;
                color: blue;
            }
            
            .nen{
                width: 40%;
                height: auto;
                background-color: bisque;
            }
        </style>
    </head>
    <body>
        <div class="nen">
            <h1>A Simple Caculator</h1>
            <hr>
            <form>
                <table>
                    <tr>
                        <td class="lable">Enter oparator 1: </td>
                        <td><input type="text" name="num1"/> </td>
                    </tr>
                    <tr>
                        <td class="lable">Enter oparator 2: </td>
                        <td><input type="text" name="num2"/> </td>
                    </tr>
                    <tr>
                        <td class="lable">Select oparation: </td>
                        <td>
                            <select name="op">
                                <option value="+">+</option>
                                <option value="-">-</option>
                                <option value="*">*</option>
                                <option value="/">/</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="CACULATE" /></td>
                    </tr>
                </table>
            </form>
            <hr>
            <h2>
                <jsp:useBean id="c" class="model.Math2_5"/>
                <jsp:setProperty name="c" property="*"/>
                <jsp:getProperty name="c" property="num1"/>
                <jsp:getProperty name="c" property="op"/>
                <jsp:getProperty name="c" property="num2"/>
                &nbsp;&nbsp;&nbsp;&nbsp;=>&nbsp;&nbsp;
                <jsp:getProperty name="c" property="result"/>
            </h2>
            <h2 style="color: chocolate">
                <jsp:getProperty name="c" property="KQ"/>
            </h2>
        </div>
    </body>
</html>
