<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Event" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Quản lý sự kiện</title>
</head>
<body>
<%
    List<Event> eventList = new ArrayList<>();
    eventList.add(new Event("Hội thảo công nghệ", "Hà Nội", "10/10/2024 09:00", 50));
    eventList.add(new Event("Triển lãm nghệ thuật", "Đà Nẵng", "15/10/2024 14:00", 100));
    eventList.add(new Event("Chương trình ca nhạc", "TP.HCM", "20/10/2024 19:00", 200));
    request.setAttribute("eventList", eventList);
%>
<h1>Danh sách sự kiện</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 20px">
        <th>Tên sự kiện</th>
        <th>Địa điểm</th>
        <th>Ngày giờ</th>
        <th>Số lượng người tham gia</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="event" items="${eventList}">
        <tr>
            <td style="padding-left: 50px">${event.eventName}</td>
            <td style="padding-left: 50px">${event.location}</td>
            <td style="padding-left: 50px">${event.eventDateTime}</td>
            <td style="padding-left: 50px">${event.participantCount}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
