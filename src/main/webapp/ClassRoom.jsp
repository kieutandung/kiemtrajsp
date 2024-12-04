<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.kiemtrajsp.ClassRoom" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 2:10 PM
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
    List<ClassRoom> classList = new ArrayList<>();
    classList.add(new ClassRoom("tam",1,5,"đậu"));
    classList.add(new ClassRoom("tam",1,5,"đậu"));
    classList.add(new ClassRoom("tam",1,5,"đậu"));
    classList.add(new ClassRoom("tam",1,5,"đậu"));
    classList.add(new ClassRoom("tam",1,5,"đậu"));
    request.setAttribute("classList", classList);
%>
<h1>Danh sách đơn hàng</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>name</th>
        <th>id</th>
        <th>điểm</th>
        <th>trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="classList" items="${classList}">
        <tr>
            <td style="padding-left: 50px">${classList.name}</td>
            <td style="padding-left: 50px">${classList.id}</td>
            <td style="padding-left: 50px">${classList.point}</td>
            <td style="padding-left: 50px">${classList.status}</td>
        </tr>
    </c:forEach>

    </tbody>
</table>>
</body>
</html>
