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
	<jsp:include page="../headerAdmin.jsp"></jsp:include>
	<div class="formInsertUser">
		<h1>Sửa thông tin tài khoản</h1>
		<br /> <br />
		<c:url value="/admin/adminupdateUser" var="updateUser" />

		<form:form action="${updateUser}" method="POST" modelAttribute="user"
			acceptCharset="UTF-8">
			<form:hidden path="id" readonly="true" />
			<div class="form-group">
				<label>Username</label>
				<form:input class="form-control" path="username"/>
			</div>
			<form:hidden path="password" readonly="true" />
			<div class="form-group selectFormAddUser">
				<label>Kích hoạt</label>
				<form:select class="form-control" path="enabled">
					<form:option value="1">Kích hoạt</form:option>
					<form:option value="0">Không kích hoạt</form:option>
				</form:select>
			</div>
			<div class="form-group">
				<label>Full name</label>
				<form:input class="form-control" path="fullname"/>
			</div>
			<div class="form-group">
				<label>Age</label>
				<form:input type="number" class="form-control" path="age"/>
			</div>
			<div class="form-group">
				<label>Address</label>
				<form:input class="form-control" path="address"/>
			</div>
			<div class="form-group">
				<label>Salary</label>
				<form:input type="number" class="form-control" path="salary"/>
			</div>
			<div class="form-group selectFormAddUser">
				<label>Gender</label>
				<form:select class="form-control" path="gender">
					<form:option value="1">Male</form:option>
					<form:option value="0">Female</form:option>
				</form:select>
			</div>
			<div class="form-group">
				<label>Email</label>
				<form:input class="form-control" path="email"/>
			</div>
			<div class="form-group">
				<label>Phone</label>
				<form:input type="number" class="form-control" path="phone"/>
			</div>
			
			
			<button class="btn btn-info" type="submit">Sửa</button>
		</form:form>
	</div>
</body>
</html>