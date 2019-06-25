<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<link href="<c:url value="/themes/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/themes/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/themes/js/jquery.min.js" />"></script>
<script src="<c:url value="/themes/js/bootstrap.min.js" />"></script>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<div class="content">
		<div class="mainContent">
			<div class="alert alert-success" role="alert">
				<b>${message}</b>
			</div>
			<div class="formlogin">
				<form name='loginForm' action="<c:url value='j_duan_login' />"
					method='POST'>
					<div class="form-group">
						<label>Tên tài khoản</label> <input type="text"
							class="form-control" placeholder="Nhập tên tài khoản"
							name="username"> <small class="form-text text-muted">Lưu
							ý tài khoản phải được kích hoạt mới có thể đăng nhập được hệ
							thống!</small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Mật khẩu</label> <input
							type="password" class="form-control" placeholder="Mật khẩu"
							name='password' />
					</div>
					<input type="submit" name="submit" value="Đăng nhập"
						class="btn btn-primary btn-lg btn-block" /> <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>