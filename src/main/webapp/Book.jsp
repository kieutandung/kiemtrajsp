<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.kiemtrajsp.Book" %><%--
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 2:24 PM
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
    List<Book> bookList = new ArrayList<>();
    bookList.add(new Book("sách", "tam" , "kinh dị" , 2025));
    bookList.add(new Book("sách", "tam" , "kinh dị" , 2025));
    bookList.add(new Book("sách", "tam" , "kinh dị" , 2025));
    bookList.add(new Book("sách", "tam" , "kinh dị" , 2025));
    bookList.add(new Book("sách", "tam" , "kinh dị" , 2025));
    bookList.add(new Book("sách", "tam" , "kinh dị" , 2025));
    request.setAttribute("bookList", bookList);
%>
<h1>Danh sách đơn hàng</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>tên sách</th>
        <th>tác giả</th>
        <th>thể loại</th>
        <th>năm xuất bản</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="bookList" items="${bookList}">
        <tr>
            <td style="padding-left: 50px">${bookList.name}</td>
            <td style="padding-left: 50px">${bookList.author}</td>
            <td style="padding-left: 50px">${bookList.category}</td>
            <td style="padding-left: 50px">${bookList.yearOfPublication}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>>
</body>
</html>
