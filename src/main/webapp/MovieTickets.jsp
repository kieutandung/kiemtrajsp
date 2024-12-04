<%@ page import="com.example.kiemtrajsp.MovieTickets" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 2:49 PM
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
    List<MovieTickets> movieTicketsList = new ArrayList<>();
    movieTicketsList.add(new MovieTickets(1,"tâm",1000000,99999999));
    movieTicketsList.add(new MovieTickets(1,"tâm",1000000,99999999));
    movieTicketsList.add(new MovieTickets(1,"tâm",1000000,99999999));
    movieTicketsList.add(new MovieTickets(1,"tâm",1000000,99999999));
    movieTicketsList.add(new MovieTickets(1,"tâm",1000000,99999999));
    movieTicketsList.add(new MovieTickets(1,"tâm",1000000,99999999));
    movieTicketsList.add(new MovieTickets(1,"tâm",1000000,99999999));
    request.setAttribute("movieTicketsList", movieTicketsList);
%>
<h1>Danh sách đơn hàng</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>mã vé</th>
        <th>tên phim</th>
        <th>suất chiếu</th>
        <th>giá vé</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="movieTicketsList" items="${movieTicketsList}">
        <tr>
            <td style="padding-left: 50px">${movieTicketsList.id}</td>
            <td style="padding-left: 50px">${movieTicketsList.name}</td>
            <td style="padding-left: 50px">${movieTicketsList.showtime}</td>
            <td style="padding-left: 50px">${movieTicketsList.price}</td>
        </tr>
    </c:forEach>

    </tbody>
</table>>
</body>
</html>
