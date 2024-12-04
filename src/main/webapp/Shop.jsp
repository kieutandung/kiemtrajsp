<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Shop" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 3:09 PM
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
    List<Shop> shopList = new ArrayList<Shop>();
    shopList.add(new Shop("laptop" , 1000,999999,999999000));
    shopList.add(new Shop("laptop" , 1000,999999,999999000));
    shopList.add(new Shop("laptop" , 1000,999999,999999000));
    shopList.add(new Shop("laptop" , 1000,999999,999999000));
    shopList.add(new Shop("laptop" , 1000,999999,999999000));
    request.setAttribute("shopList", shopList);
%>
<h1>Danh sách sản phẩm</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>Tên sản phẩm</th>
        <th>giá</th>
        <th>số lượng</th>
        <th>tổng tiền</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="shopList" items="${shopList}">
        <tr>
            <td style="padding-left: 50px">${shopList.name}</td>
            <td style="padding-left: 50px">${shopList.price}</td>
            <td style="padding-left: 50px">${shopList.quantity}</td>
            <td style="padding-left: 50px">${shopList.totalPrice}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
