<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Appointment" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Danh sách cuộc hẹn</title>
</head>
<body>
<%
    List<Appointment> appointmentList = new ArrayList<>();
    appointmentList.add(new Appointment("Họp dự án", LocalDateTime.of(2024, 12, 5, 14, 30), "Phòng họp A", "Thảo luận về tiến độ dự án"));
    appointmentList.add(new Appointment("Cuộc gọi với khách hàng", LocalDateTime.of(2024, 12, 6, 10, 0), "Trực tuyến", "Trao đổi về yêu cầu của khách hàng"));
    appointmentList.add(new Appointment("Bữa trưa với đối tác", LocalDateTime.of(2024, 12, 7, 12, 0), "Nhà hàng XYZ", "Thảo luận về hợp tác"));

    request.setAttribute("appointmentList", appointmentList);
%>
<h1>Danh sách cuộc hẹn</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr>
        <th>Tên</th>
        <th>Ngày giờ</th>
        <th>Địa điểm</th>
        <th>Mô tả</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="appointment" items="${appointmentList}">
        <tr>
            <td>${appointment.name}</td>
            <td>${appointment.dateTime}</td>
            <td>${appointment.location}</td>
            <td>${appointment.description}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
