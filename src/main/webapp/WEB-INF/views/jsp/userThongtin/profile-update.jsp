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
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="formThemmoiNV">
		<h1>Sửa thông tin tài khoản</h1>
		<br /> <br />
		<form:form action="/Duan/user/suaProfile/${userId}" method="POST"
			modelAttribute="user" acceptCharset="UTF-8">
			<div class="row">
				<form:hidden path="id" />
				<form:hidden path="enabled" />

				<form:hidden path="password" />

				<form:hidden path="chucvu.id" />
				<form:hidden path="depart.id" />
				<form:hidden path="salary" />
				<div class="col-md-6 form-group">
					<label>Username</label>
					<form:input class="form-control" path="username" readonly="true"/>
				</div>
				<div class="col-md-6 form-group">
					<label>Full name</label>
					<form:input class="form-control" path="fullname" />
				</div>
				<div class="col-md-6 form-group">
					<label>Ngày sinh</label>
					<form:input type="date" class="form-control" path="ngaysinh" />
				</div>
				<div class="col-md-6 form-group">
					<label>Address</label>
					<form:input class="form-control" path="address" />
				</div>
				<div class="col-md-6 form-group selectFormAddUser">
					<label>Gender</label>
					<form:select class="form-control" path="gender">
						<form:option value="1">Male</form:option>
						<form:option value="0">Female</form:option>
					</form:select>
				</div>
				<div class="col-md-6 form-group">
					<label>Email</label>
					<form:input class="form-control" path="email" />
				</div>
				<div class="col-md-6 form-group">
					<label>Phone</label>
					<form:input type="number" pattern="[0-9]*" class="form-control"
						path="phone" />
				</div>
				<div class="col-md-12 form-group">
					<button type="submit" class="btn btn-info">Cập nhật</button>
					<a href="#" class="btn btn-secondary" onclick="history.back();">Quay
						lại</a>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>