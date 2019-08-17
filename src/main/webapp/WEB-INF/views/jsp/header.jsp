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
	<c:url value="/user" var="urlUser" />
	<c:url value="/user/listLichSu/${userId}" var="urlLichsulamviec" />
	<c:url value="/user/profile/${userId}" var="urlThongtin" />
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
				<li class="nav-item active"><a class="nav-link"
					href="${urlUser}">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="${urlLichsulamviec }">Lịch sử làm việc </a></li>
					<li class="nav-item active"><a class="nav-link"
					href="${urlThongtin }">Thông tin cá nhân </a></li>
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