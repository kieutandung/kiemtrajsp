<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Timekeeping" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 3:32 PM
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
    List<Timekeeping> timekeeping = new ArrayList<>();
    timekeeping.add(new Timekeeping("tâm" , 11,9,"thiếu"));
    timekeeping.add(new Timekeeping("tâm" , 11,9,"thiếu"));
    timekeeping.add(new Timekeeping("tâm" , 11,9,"thiếu"));
    timekeeping.add(new Timekeeping("tâm" , 11,9,"thiếu"));
    timekeeping.add(new Timekeeping("tâm" , 11,9,"thiếu"));
    timekeeping.add(new Timekeeping("tâm" , 11,9,"thiếu"));
    request.setAttribute("timekeeping", timekeeping);
%>
<h1>Danh sách sản phẩm</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>Tên nhân viên</th>
        <th>ngày làm việc</th>
        <th>số giờ</th>
        <th>trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="timekeeping" items="${timekeeping}">
        <tr>
            <td style="padding-left: 50px">${timekeeping.name}</td>
            <td style="padding-left: 50px">${timekeeping.datesWorked}</td>
            <td style="padding-left: 50px">${timekeeping.hoursWorked}</td>
            <td style="padding-left: 50px">${timekeeping.status}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

