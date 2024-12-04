<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Car" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Ứng dụng quản lý xe hơi</title>
</head>
<body>
<%
    List<Car> carList = new ArrayList<>();
    carList.add(new Car("Toyota Camry", "Toyota", 30000, "Còn hàng"));
    carList.add(new Car("Honda Accord", "Honda", 28000, "Còn hàng"));
    carList.add(new Car("Ford Mustang", "Ford", 55000, "Hết hàng"));
    carList.add(new Car("Chevrolet Malibu", "Chevrolet", 25000, "Còn hàng"));

    request.setAttribute("carList", carList);
%>
<h1>Danh sách xe hơi</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>Tên xe</th>
        <th>Hãng sản xuất</th>
        <th>Giá bán</th>
        <th>Trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="car" items="${carList}">
        <tr>
            <td style="padding-left: 50px">${car.name}</td>
            <td style="padding-left: 50px">${car.manufacturer}</td>
            <td style="padding-left: 50px">${car.price}</td>
            <td style="padding-left: 50px">${car.status}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
