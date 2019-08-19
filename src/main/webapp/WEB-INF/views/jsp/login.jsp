<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<c:url value="/themes/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/themes/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/themes/js/jquery.min.js" />"></script>
<script src="<c:url value="/themes/js/bootstrap.min.js" />"></script>
<meta charset="UTF-8">
<title>login</title>
</head>
<body style="background: linear-gradient(to right, #1d4350, #a43931);">
	<div class="content">
		<div class="mainContent">

			<div class="formlogin">
				<h1 class="tieudedangnhap">Đăng nhập hệ thống</h1>
				<form name='loginForm' action="<c:url value='j_duan_login' />"
					method='POST'>
					<div class="form-group">
						<div class="input-group-prepend">
							<span class="icon" id="basic-addon1"><i class="fa fa-user"
								aria-hidden="true"></i></span>
						</div>
						<input type="text" class="form-control onhap"
							placeholder="Nhập tên tài khoản" name="username"
							aria-describedby="basic-addon1">
						<p style="color: red; float: left;">*</p>
						<small class="form-text text-muted">Lưu ý tài khoản phải
							được kích hoạt mới có thể đăng nhập được hệ thống!</small>
					</div>
					<div class="form-group">
						<div class="input-group-prepend">
							<span class="icon" id="basic-addon1"><i
								class="fa fa-unlock-alt" aria-hidden="true"></i></span>
						</div>
						<input type="password" class="form-control onhap"
							placeholder="Mật khẩu" name='password' />
					</div>

					<input type="submit" name="submit" value="Đăng nhập"
						class="btn btn-primary btn-lg btn-block nutdangnhap" /> <input
						type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
				<div class="thongbaodangnhap">
					<b>${message}</b>
				</div>

			</div>
		</div>
	</div>
</body>
</html>