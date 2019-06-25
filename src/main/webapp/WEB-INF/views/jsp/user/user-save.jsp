<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>save user</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>


	<c:url value="/user/saveUser" var="saveUser"></c:url>
	<div class="formInsertUser">
		<h1>Thêm mới tài khoản</h1>
		<br/>
		<br/>
		<form:form action="${saveUser}" method="POST" modelAttribute="user"
			acceptCharset="UTF-8">
			<div class="form-group">
				<label>Username</label>
				<form:input class="form-control" path="username" />
			</div>
			<div class="form-group">
				<label>Password</label>
				<form:input class="form-control" type="password" path="password" />
			</div>
			<div class="form-group selectFormAddUser">
				<label>Kích hoạt</label>
				<form:select class="form-control" path="enabled">
					<form:option value="1">Kích hoạt</form:option>
					<form:option value="0">Không kích hoạt</form:option>
				</form:select>
			</div>
			<button type="submit" class="btn btn-info">Submit</button>
		</form:form>
	</div>
</body>
</html>