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
<title>Thông tin cá nhân</title>
</head>
<body>

	<c:url value="/admin/admintaikhoan-update" var="urlUpdate"></c:url>
	<jsp:include page="../header.jsp"></jsp:include>
	<div>
		<div class="card">
			<img class="card-img-top"
				src="<c:url value="/themes/img/profile.png" />" alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Tên đầy đủ: ${thongtin.fullname}</h5>
				<ul class="list-group list-group-flush">
					<li class="list-group-item"><p class="card-text">Mã nhân
							viên: NV000${thongtin.id}</p></li>
					<li class="list-group-item"><p>Tên tài khoản:
							${thongtin.username}</p></li>
					<li class="list-group-item"><p>Ngày sinh:
							${thongtin.ngaysinh}</p></li>
					<li class="list-group-item"><p>Địa chỉ:
							${thongtin.address}</p></li>
					<li class="list-group-item"><p>Thông tin lương:
							${thongtin.salary}$</p></li>
					<li class="list-group-item"><p>Giới tính:
							${thongtin.gender?'Nam':'Nữ'}</p></li>
					<li class="list-group-item"><p>Email: ${thongtin.email}</p></li>
					<li class="list-group-item"><p>Điện thoại:
							${thongtin.phone}</p></li>
					<li class="list-group-item"><p>Phòng ban:
							${thongtin.depart.tenphongban}</p></li>
					<li class="list-group-item"><p>Chức vụ:
							${thongtin.chucvu.tenchucvu}</p></li>
				</ul>
				<br> <a href="../presuaProfile/${thongtin.id}"
					class="btn btn-primary nutchinhsuathongtin">Chỉnh sửa thông tin</a>
			</div>
		</div>
	</div>
</body>
</html>