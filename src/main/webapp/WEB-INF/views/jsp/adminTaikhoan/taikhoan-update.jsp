<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Update user</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<div class="tableUserManagerUser">
				<h1>Sửa thông tin tài khoản</h1>
				<c:url value="/admin/adminupdateTaikhoan" var="updateUser" />
				<form:form action="${updateUser}" method="POST"
					modelAttribute="user" acceptCharset="UTF-8">
					<form:hidden path="id" />
					<div class="col-md-3 form-group">
						<label>Username</label>
						<form:input class="form-control" path="username" readonly="true"/>
					</div>
					<div class="col-md-3 form-group">
						<label>Full name</label>
						<form:input class="form-control" path="fullname" readonly="true"/>
					</div>
					<div class="col-md-3 form-group selectFormAddUser">
						<label>Kích hoạt</label>
						<form:select class="form-control" path="enabled">
							<form:option value="1">Kích hoạt</form:option>
							<form:option value="0">Không kích hoạt</form:option>
						</form:select>
					</div>
					<form:hidden path="gender" />
					<form:hidden path="password" />
					<form:hidden path="ngaysinh" />
					<form:hidden path="salary" />
					<form:hidden path="address" />
						<form:hidden path="phone" />
					<form:hidden path="email" />
					<div class="col-md-3">
						<button type="submit" class="btn btn-info">
							<i class="fa fa-pencil"></i>&nbsp; Xác nhận
						</button>
						<a href="#" class="btn btn-secondary" onclick="history.back();">
							<i class="fa fa-ban"></i>&nbsp; Quay lại
						</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>