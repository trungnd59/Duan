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
<link href="<c:url value="/themes/css/style.css" />" rel="stylesheet">
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="../admin">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/admin/adminlistUser"/>">Quản lý user</a></li>
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
					href="<c:url value="/admin/adminlistTaikhoan"/>">Quản lý tài khoản</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0"
				action="<c:url value="/j_duan_logout" />" method="post">
				<div class="infoMenu">
					<b>Xin chào: ${pageContext.request.userPrincipal.name}</b>
				</div>
				<div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <input class="btn btn-info"
						type="submit" value="Logout" />
				</div>
			</form>
		</div>
	</nav>

</body>
</html>