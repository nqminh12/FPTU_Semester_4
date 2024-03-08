
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/loadDB.css"/>
    </head>
    <body>
        <h1>Student Information</h1>
        <table>
            <c:forEach items="${dao.std}" var="st">
                <c:if test="${st.id.equals(update)}">
                    <c:set var="stU" value="${st}"></c:set>
                </c:if>

                <tr>
                    <td>${st.id}</td>
                    <td>${st.name}</td>
                    <td>${st.gender?"Male":"Female"}</td>
                    <td>${dao.dept[st.departId].name}</td>
                    <td>${st.age}</td>
                    <td>${st.gpa}</td>
                    <td>${st.add}</td>
                    <td>${st.img}</td>
                    <td>${st.dob}</td>
                    <td><a href='LoadDB?type=0&id=${st.id}'>Update</a></td>
                    <td><a href='LoadDB?type=1&id=${st.id}'>Delete</a></td>

                </tr>
            </c:forEach>
        </table>
<hr>
        <form action="LoadDB" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="${stU.id}"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="${stU.name}"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
<!--                    <input type="radio" name="gender" value="M" ${stU==null||stU.gender?"checked":""}>Male
                        <input type="radio" name="gender" value="F" ${stU!=null && !stU.gender?"checked":""}>Female

                        <input type="checkbox" name="gender" value="M" ${stU==null||stU.gender?"checked":""}>Male
                        <input type="checkbox" name="gender" value="F" ${stU!=null && !stU.gender?"checked":""}>Female-->

                        <select name="gender">
                            <option value="M" ${stU==null||stU.gender?"checked":""}>Male</option>
                            <option value="F" ${stU!=null && !stU.gender?"checked":""}>Female</option>
                        </select>
                    </td>

                </tr>
                <tr>
                    <td>Department</td>
             <!--   <td>
                    <select name="departId">                        
                    <c:forEach items="${dao.dept}" var="de" >
                        <option value='${de.key}' ${de.key.equals(stU.departId)?"selected":""}  >${de.value.name}</option>                               
                    </c:forEach>                      
                </select> 
                    </td>-->
                    <td>
                        <c:forEach items="${dao.dept}" var="de">
                            <input type="radio" name="departId" value='${de.key}' ${de.key.equals(stU.departId)?"checked":""}>${de.value.name} <br>  
                        </c:forEach>

                    </td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><input type="text" name="age" value="${stU.age}"></td>
                </tr>
                <tr>
                    <td>GPA</td>
                    <td><input type="text" name="gpa" value="${stU.gpa}"></td>
                </tr>
                <tr>
                    <td>ADD</td>
                    <td><textarea name="add"> ${stU.add}</textarea> </td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td><input type="text" name="img" value="${stU.img}"></td>
                </tr>
                <tr>
                    <td>Date of birth</td>
                    <td><input type="date" name="dob" value="${stU.dob}"></td>
                </tr>

            </table>
            <input type="submit" name="btnInsert" value="Insert">
            <input type="submit" name="btnUpdate" value="Update">

        </form>
                
<hr> 
        <form action="SearchByGender" method="post">
            <h2>Search by Gender</h2>
<!--            <input type="radio" name="gender" value="1" ${stU==null||stU.gender?"checked":""}>Male
            <input type="radio" name="gender" value="0" ${stU!=null && !stU.gender?"checked":""}>Female-->
            <input type="checkbox" name="gender" value="1" }>Male
            <input type="checkbox" name="gender" value="0" }>Female</br>
            <input type="submit" value="Search">
        </form>
            <hr>
        <form action ="SearchByDe" method ="post">
            <h2>Search by Department</h2>
            <c:forEach items="${dao.dept}" var="de">
                <input type="checkbox" value="${de.value.id}" name="depart" }>${de.value.name} <br>  
            </c:forEach>
            <!--            <select name="depart">
            <c:forEach items="${dao.dept}" var="de">
                <option value="${de.value.id}" ${stU==null||stU.departId?"selected":""}>${de.value.name}</option>
            </c:forEach>
        </select>-->
            <input type="submit" value="Search">
        </form>

<hr>

        <form action ="SearchByDeAndGender" method ="post">
            <h2>Search by Department and Gender</h2>
            <c:forEach items="${dao.dept}" var="de">
                <input type="checkbox" value="${de.value.id}" name="depart" }>${de.value.name} <br>  
            </c:forEach>
            <input type="checkbox" name="gender" value="1" }>Male
            <input type="checkbox" name="gender" value="0" }>Female
            <!--            <select name="depart">
            <c:forEach items="${dao.dept}" var="de">
                <option value="${de.value.id}" ${stU==null||stU.departId?"selected":""}>${de.value.name}</option>
            </c:forEach>
        </select>
        <br>
        <input type="radio" name="gender" value="1" ${stU==null||stU.gender?"checked":""}>Male
        <input type="radio" name="gender" value="0" ${stU!=null && !stU.gender?"checked":""}>Female-->
            <input type="submit" value="Search">
        </form>
<hr>
        <form action="SearchByOption" method="post">
            <br>
            <h2>Search by Option </h2>
            <!--            <select name="option">
                            <option value="id">Student ID</option>
                            <option value="name">Name</option>
                            <option value="gender">Gender</option>
                            <option value="departId">Department ID</option>
                            <option value="age">Age</option>
                            <option value="gpa">GPA</option>
                            <option value="add">Address</option>
                            <option value="img">Image</option>
                            <option value="dob">Date of Birth</option>
                        </select>-->
            <input type="checkbox" name ="option" value ="id" }> Student ID <br>
            <input type="checkbox" name ="option" value ="name" }> Name <br>
            <input type="checkbox" name ="option" value ="gender" }> Gender<br>
            <input type="checkbox" name ="option" value ="departId" }> Department ID <br>
            <input type="checkbox" name ="option" value ="age" }> Age <br>
            <input type="checkbox" name ="option" value ="gpa" }> Gpa <br>
            <input type="checkbox" name ="option" value ="[add]" }> Address <br>
            <input type="checkbox" name ="option" value ="img" }> Image <br>
            <input type="checkbox" name ="option" value ="dob" }> Date of Birth <br>

            <input type="text" name ="searchString" placeholder="Search" value ="">
            <input type="submit" value="Search">
        </form>
    </body>
</html>
