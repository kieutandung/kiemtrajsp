<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Bank" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/4/2024
  Time: 2:54 PM
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
    List<Bank> bankList = new ArrayList<>();
    bankList.add(new Bank(100,"tâm",999999,"hoạt động"));
    bankList.add(new Bank(100,"tâm",999999,"hoạt động"));
    bankList.add(new Bank(100,"tâm",999999,"hoạt động"));
    bankList.add(new Bank(100,"tâm",999999,"hoạt động"));
    bankList.add(new Bank(100,"tâm",999999,"hoạt động"));
    request.setAttribute("bankList", bankList);
%>
<h1>Danh sách tài khoản ngân hàng</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>số tài khoản</th>
        <th>tên khách hàng</th>
        <th>số dư</th>
        <th>trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="bankList" items="${bankList}">
        <tr>
            <td style="padding-left: 50px">${bankList.accountNumber}</td>
            <td style="padding-left: 50px">${bankList.name}</td>
            <td style="padding-left: 50px">${bankList.balance}</td>
            <td style="padding-left: 50px">${bankList.status}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>>
</body>
</html>
