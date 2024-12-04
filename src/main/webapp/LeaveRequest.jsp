<%@ page import="java.util.List" %>
<%@ page import="com.example.kiemtrajsp.LeaveRequest" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Quản lý đơn xin nghỉ phép</title>
</head>
<body>
<%
    List<LeaveRequest> leaveRequestList = new ArrayList<>();
    leaveRequestList.add(new LeaveRequest("Nguyễn Văn A", LocalDate.of(2024, 12, 10), LocalDate.of(2024, 12, 15), "Chờ duyệt"));
    leaveRequestList.add(new LeaveRequest("Trần Thị B", LocalDate.of(2024, 12, 20), LocalDate.of(2024, 12, 22), "Đã duyệt"));
    leaveRequestList.add(new LeaveRequest("Lê Văn C", LocalDate.of(2024, 12, 25), LocalDate.of(2024, 12, 30), "Chờ duyệt"));
    leaveRequestList.add(new LeaveRequest("Lê Văn C", LocalDate.of(2024, 12, 25), LocalDate.of(2024, 12, 30), "Chờ duyệt"));
    leaveRequestList.add(new LeaveRequest("Lê Văn C", LocalDate.of(2024, 12, 25), LocalDate.of(2024, 12, 30), "Chờ duyệt"));
    leaveRequestList.add(new LeaveRequest("Lê Văn C", LocalDate.of(2024, 12, 25), LocalDate.of(2024, 12, 30), "Chờ duyệt"));
    leaveRequestList.add(new LeaveRequest("Lê Văn C", LocalDate.of(2024, 12, 25), LocalDate.of(2024, 12, 30), "Chờ duyệt"));

    request.setAttribute("leaveRequestList", leaveRequestList);
%>
<h1>Danh sách đơn xin nghỉ phép</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>Tên nhân viên</th>
        <th>Ngày bắt đầu</th>
        <th>Ngày kết thúc</th>
        <th>Trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="leaveRequest" items="${leaveRequestList}">
        <tr>
            <td style="padding-left: 50px">${leaveRequest.employeeName}</td>
            <td style="padding-left: 50px">${leaveRequest.startDate}</td>
            <td style="padding-left: 50px">${leaveRequest.endDate}</td>
            <td style="padding-left: 50px">${leaveRequest.status}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
