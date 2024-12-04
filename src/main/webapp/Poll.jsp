<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Poll" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Poll> pollList = new ArrayList<>();
    pollList.add(new Poll("câu hỏi" ,"a" ,10));
    pollList.add(new Poll("câu hỏi" ,"b" ,10));
    pollList.add(new Poll("câu hỏi" ,"c" ,10));
    pollList.add(new Poll("câu hỏi" ,"d" ,10));
    request.setAttribute("pollList", pollList);
%>
<h1>Danh sách sản phẩm</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>câu hỏi</th>
        <th>lựa chọn</th>
        <th>số lựa chọn</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="pollList" items="${pollList}">
        <tr>
            <td style="padding-left: 50px">${pollList.question}</td>
            <td style="padding-left: 50px">${pollList.choices}</td>
            <td style="padding-left: 50px">${pollList.numberOfChoices}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
