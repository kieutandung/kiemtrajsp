<%@ page import="com.example.kiemtrajsp.Employee" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Employee> employeeList = new ArrayList<>();
    employeeList.add(new Employee("tâm" , "phòng nhân sự" , "nhân viên" , 6000));
    employeeList.add(new Employee("tâm" , "phòng nhân sự" , "nhân viên" , 6000));
    employeeList.add(new Employee("tâm" , "phòng nhân sự" , "nhân viên" , 6000));
    employeeList.add(new Employee("tâm" , "phòng nhân sự" , "nhân viên" , 6000));
    employeeList.add(new Employee("tâm" , "phòng nhân sự" , "nhân viên" , 6000));
    employeeList.add(new Employee("tâm" , "phòng nhân sự" , "nhân viên" , 6000));
    request.setAttribute("employeeList", employeeList);
%>
<h1>Danh sách đơn hàng</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>name</th>
        <th>phòng ban</th>
        <th>chức vụ</th>
        <th>lương</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="employeeList" items="${employeeList}">
        <tr>
            <td style="padding-left: 50px">${employeeList.name}</td>
            <td style="padding-left: 50px">${employeeList.department}</td>
            <td style="padding-left: 50px">${employeeList.position}</td>
            <td style="padding-left: 50px">${employeeList.salary}</td>
        </tr>
    </c:forEach>

    </tbody>
</table>>
</body>
</html>
