<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<script src="<c:url value="/themes/js/jquery.min.js" />"></script>
<script src="<c:url value="/themes/js/datatables.min.js" />"></script>
<link href="<c:url value="/themes/css/datatables.min.css" />"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Danh sách tài khoản</title>
</head>
<body>

	<c:url value="/admin/admintaikhoan-update" var="urlUpdate"></c:url>
	<jsp:include page="../header.jsp"></jsp:include>
	<br />

	<div>
		<p>Mã: ${thongtin.id}</p>
		<p>Tên đầy đủ: ${thongtin.fullname}</p>

		<p>Tên tài khoản: ${thongtin.username}</p>
		<p>Ngày sinh: ${thongtin.ngaysinh}</p>
		<p>Địa chỉ: ${thongtin.address}</p>
		<p>Thông tin lương: ${thongtin.salary}$</p>
		<p>Giới tính: ${thongtin.gender?'Nam':'Nữ'}</p>

		<p>Email: ${thongtin.email}</p>

		<p>Điện thoại: ${thongtin.phone}</p>

		<p>Phòng ban: ${thongtin.depart.tenphongban}</p>
		<p>Chức vụ: ${thongtin.chucvu.tenchucvu}</p>
	</div>
	
	<div><a href="../presuaProfile/${thongtin.id}">Chỉnh sửa</a> </div>
</body>
</html>