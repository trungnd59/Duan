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
<link href="<c:url value="/themes/css/user.css" />" rel="stylesheet">
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<c:url value="/user" var="urlUser" />
	<c:url value="/user/listLichSu/${userId}" var="urlLichsulamviec" />
	<c:url value="/user/profile/${userId}" var="urlThongtin" />
	<c:url value="/user/tongthanhtich/${userId}" var="urlThanhtich" />
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="${urlUser}">Trang chính <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="${urlLichsulamviec }">Lịch sử làm việc </a></li>
				<li class="nav-item active"><a class="nav-link"
					href="${urlThongtin }">Thông tin cá nhân </a></li>
				<li class="nav-item active"><a class="nav-link"
					href="${urlThanhtich}">Thành tích </a></li>
					<li class="nav-item active"><a class="nav-link"
					href="#"> Feedback </a></li>
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