<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.StudyMaterial" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Quản lý tài liệu học tập</title>
</head>
<body>
<%
    List<StudyMaterial> studyMaterialList = new ArrayList<>();
    studyMaterialList.add(new StudyMaterial("Giáo trình Java", "Lập trình", "Nguyễn Văn A", "PDF"));
    studyMaterialList.add(new StudyMaterial("Bài giảng Toán cao cấp", "Toán học", "Trần Thị B", "Word"));
    studyMaterialList.add(new StudyMaterial("Tài liệu Hệ điều hành", "Công nghệ thông tin", "Lê Văn C", "PDF"));

    request.setAttribute("studyMaterialList", studyMaterialList);
%>
<h1>Danh sách tài liệu học tập</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr>
        <th>Tên tài liệu</th>
        <th>Môn học</th>
        <th>Giảng viên</th>
        <th>Định dạng</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="material" items="${studyMaterialList}">
        <tr>
            <td>${material.title}</td>
            <td>${material.subject}</td>
            <td>${material.instructor}</td>
            <td>${material.format}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
