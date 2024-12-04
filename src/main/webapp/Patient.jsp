<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.Patient" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Hệ thống quản lý bệnh nhân</title>
</head>
<body>
<%
    List<Patient> patientList = new ArrayList<>();
    patientList.add(new Patient("Nguyễn Văn A", 30, "Cảm cúm", LocalDate.of(2024, 12, 1), "Đang điều trị"));
    patientList.add(new Patient("Trần Thị B", 25, "Viêm phổi", LocalDate.of(2024, 11, 28), "Đã xuất viện"));
    patientList.add(new Patient("Lê Văn C", 40, "Tiểu đường", LocalDate.of(2024, 12, 2), "Đang điều trị"));

    request.setAttribute("patientList", patientList);
%>
<h1>Danh sách bệnh nhân</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr>
        <th>Tên</th>
        <th>Tuổi</th>
        <th>Bệnh lý</th>
        <th>Ngày nhập viện</th>
        <th>Trạng thái điều trị</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="patient" items="${patientList}">
        <tr>
            <td>${patient.name}</td>
            <td>${patient.age}</td>
            <td>${patient.medicalCondition}</td>
            <td>${patient.admissionDate}</td>
            <td>${patient.treatmentStatus}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
