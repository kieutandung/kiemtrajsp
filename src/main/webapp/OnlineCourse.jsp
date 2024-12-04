<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.OnlineCourse" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 3:26 PM
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
    List<OnlineCourse> onlineCourses = new ArrayList<>();
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    onlineCourses.add(new OnlineCourse("JSP", "cấn",10,0));
    request.setAttribute("onlineCourses", onlineCourses);
%>
<h1>Danh sách đơn hàng</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>tên khoá học</th>
        <th>giảng viên</th>
        <th>số giờ </th>
        <th>giá</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="onlineCourses" items="${onlineCourses}">
        <tr>
            <td style="padding-left: 50px">${onlineCourses.courseName}</td>
            <td style="padding-left: 50px">${onlineCourses.instructor}</td>
            <td style="padding-left: 50px">${onlineCourses.hours}</td>
            <td style="padding-left: 50px">${onlineCourses.price}</td>
        </tr>
    </c:forEach>

    </tbody>
</table>>
</body>
</html>