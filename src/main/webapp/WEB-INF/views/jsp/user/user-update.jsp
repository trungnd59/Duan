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
	<div class="formInsertUser">
		<h1>Sửa thông tin tài khoản</h1>
		<br /> <br />
		<c:url value="/user/updateUser" var="updateUser" />

		<form:form action="${updateUser}" method="POST" modelAttribute="user"
			acceptCharset="UTF-8">
			<form:hidden path="id" readonly="true" />
			<div class="form-group">
				<label>Username</label>
				<form:input class="form-control" path="username" readonly="true" />
			</div>
			<form:hidden path="password" readonly="true" />
			<div class="form-group selectFormAddUser">
				<label>Kích hoạt</label>
				<form:select class="form-control" path="enabled">
					<form:option value="1">Kích hoạt</form:option>
					<form:option value="0">Không kích hoạt</form:option>
				</form:select>
			</div>
			<button class="btn btn-info" type="submit">Sửa</button>
		</form:form>
	</div>
</body>
</html>