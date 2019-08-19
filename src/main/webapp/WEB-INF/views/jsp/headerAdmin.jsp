<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<script src="<c:url value="/themes/js/jquery.min.js" />"></script>
<script src="<c:url value="/themes/js/datatables.min.js" />"></script>
<link href="<c:url value="/themes/css/datatables.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/themes/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<c:url value="/themes/css/style.css" />" rel="stylesheet">
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="../admin">Trang
						chính <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/admin/adminlistUser"/>">Quản lý thông tin
						nhân viên</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/admin/adminlistDepart"/>">Quản lý Phòng
						ban</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/admin/adminlistChucvu"/>">Quản lý chức vụ</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/admin/adminlistRecord"/>">Khen thưởng - Kỷ
						luật</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/admin/adminTongluong"/>">Tính lương</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/admin/adminlistTaikhoan"/>">Quản lý tài
						khoản</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0"
				action="<c:url value="/j_duan_logout" />" method="post">
				<div class="infoMenu">
					<b>Xin chào: ${pageContext.request.userPrincipal.name}</b>
				</div>
				<div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<button class="btn btn-info" type="submit">
						Đăng xuất&nbsp; <i class="fa fa-sign-out"></i>
					</button>
					<!--  <input class="btn btn-info"
						type="submit" value="Đăng xuất"  /> -->
				</div>
			</form>
		</div>
	</nav>

</body>
</html>