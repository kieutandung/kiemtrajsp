<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Tourism" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 3:14 PM
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
    List<Tourism> tourismList = new ArrayList<>();
    tourismList.add(new Tourism("công viên" , "hà nội" ,10_10_2024, 9999,"còn chỗ"));
    tourismList.add(new Tourism("công viên" , "hà nội" ,10_10_2024, 9999,"còn chỗ"));
    tourismList.add(new Tourism("công viên" , "hà nội" ,10_10_2024, 9999,"còn chỗ"));
    tourismList.add(new Tourism("công viên" , "hà nội" ,10_10_2024, 9999,"còn chỗ"));
    tourismList.add(new Tourism("công viên" , "hà nội" ,10_10_2024, 9999,"còn chỗ"));
    tourismList.add(new Tourism("công viên" , "hà nội" ,10_10_2024, 9999,"còn chỗ"));
    tourismList.add(new Tourism("công viên" , "hà nội" ,10_10_2024, 9999,"còn chỗ"));
    tourismList.add(new Tourism("công viên" , "hà nội" ,10_10_2024, 9999,"còn chỗ"));
    tourismList.add(new Tourism("công viên" , "hà nội" ,10_10_2024, 9999,"còn chỗ"));
    request.setAttribute("tourismList", tourismList);
%>
<h1>Danh sách sản phẩm</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>Tên khu du lịch</th>
        <th>địa điểm</th>
        <th>ngày xuất phát</th>
        <th>giá</th>
        <th>trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="tourismList" items="${tourismList}">
        <tr>
            <td style="padding-left: 50px">${tourismList.name}</td>
            <td style="padding-left: 50px">${tourismList.location}</td>
            <td style="padding-left: 50px">${tourismList.departureDate}</td>
            <td style="padding-left: 50px">${tourismList.price}</td>
            <td style="padding-left: 50px">${tourismList.availability}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
