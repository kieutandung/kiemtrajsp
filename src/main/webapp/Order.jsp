<%@ page import="com.example.kiemtrajsp.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 2:00 PM
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
    List<Order> orderList = new ArrayList<>();
    orderList.add(new Order(1,2000-10-10,"tam","đang giao hàng"));
    orderList.add(new Order(2,2000-10-10,"tam","đang giao hàng"));
    orderList.add(new Order(3,2000-10-10,"tam","đang giao hàng"));
    orderList.add(new Order(4,2000-10-10,"tam","đang giao hàng"));
    orderList.add(new Order(5,2000-10-10,"tam","đang giao hàng"));
    orderList.add(new Order(6,2000-10-10,"tam","đang giao hàng"));
    request.setAttribute("orderList", orderList);
%>
<h1>Danh sách đơn hàng</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>id</th>
        <th>ngày đặt hàng</th>
        <th>tên khách hàng</th>
        <th>trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="orderList" items="${orderList}">
        <tr>
            <td style="padding-left: 50px">${orderList.id}</td>
            <td style="padding-left: 50px">${orderList.date}</td>
            <td style="padding-left: 50px">${orderList.customer}</td>
            <td style="padding-left: 50px">${orderList.status}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>>
</body>
</html>
