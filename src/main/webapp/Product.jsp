<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 1:35 PM
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
    List<Product> productList = new ArrayList<>();
    productList.add(new Product("sp1" , 10000 , "ok" ,"laptop.png"));
    productList.add(new Product("sp1" , 10000 , "ok" ,"laptop.png"));
    productList.add(new Product("sp1" , 10000 , "ok" ,"laptop.png"));
    productList.add(new Product("sp1" , 10000 , "ok" ,"laptop.png"));
    request.setAttribute("productList", productList);
%>
<h1>Danh sách sản phẩm</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>Tên sản phẩm</th>
        <th>giá</th>
        <th>mô tả</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="productList" items="${productList}">
        <tr>
            <td style="padding-left: 50px">${productList.nameProduct}</td>
            <td style="padding-left: 50px">${productList.price}</td>
            <td style="padding-left: 50px">${productList.description}</td>
            <td style="padding-left: 50px"><img src="${productList.image}"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
