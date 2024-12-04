<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Scholarship" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Quản lý học bổng</title>
</head>
<body>
<%
    List<Scholarship> scholarshipList = new ArrayList<>();
    scholarshipList.add(new Scholarship("Học bổng Toàn phần", "Điểm GPA từ 3.5 trở lên", 10000000, LocalDate.of(2024, 5, 30)));
    scholarshipList.add(new Scholarship("Học bổng Nghiên cứu", "Sinh viên năm cuối", 5000000, LocalDate.of(2024, 6, 15)));
    scholarshipList.add(new Scholarship("Học bổng Khuyến khích", "Điểm GPA từ 3.0 trở lên", 3000000, LocalDate.of(2024, 4, 20)));

    request.setAttribute("scholarshipList", scholarshipList);
%>
<h1>Danh sách học bổng</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr>
        <th>Tên học bổng</th>
        <th>Tiêu chí</th>
        <th>Giá trị</th>
        <th>Hạn nộp đơn</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="scholarship" items="${scholarshipList}">
        <tr>
            <td>${scholarship.name}</td>
            <td>${scholarship.criteria}</td>
            <td>${scholarship.value}</td>
            <td>${scholarship.deadline}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
