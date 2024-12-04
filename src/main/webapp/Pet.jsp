<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Pet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Ứng dụng quản lý thú cưng</title>
</head>
<body>
<%
    List<Pet> petList = new ArrayList<>();
    petList.add(new Pet("Milo", "Chó", 3, "Nguyễn Văn A"));
    petList.add(new Pet("Kitty", "Mèo", 2, "Trần Thị B"));
    petList.add(new Pet("Bunny", "Thỏ", 1, "Lê Văn C"));

    request.setAttribute("petList", petList);
%>
<h1>Danh sách thú cưng</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr>
        <th>Tên</th>
        <th>Giống loài</th>
        <th>Tuổi</th>
        <th>Chủ sở hữu</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="pet" items="${petList}">
        <tr>
            <td>${pet.name}</td>
            <td>${pet.species}</td>
            <td>${pet.age}</td>
            <td>${pet.owner}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
