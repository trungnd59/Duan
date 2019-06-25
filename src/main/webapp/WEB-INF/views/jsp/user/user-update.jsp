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

	<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>

	<a href="<c:url value="/admin" />">Admin Page</a>
	<br />
	<a href="<c:url value="/listUser" />">listUser</a>
	<form action="<c:url value="/j_duan_logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="Logout" />
	</form>
	<br />
	<a href='<c:url value="/user/listUser"></c:url>'>List Chude</a>
	<h1>Edit Chude</h1>
	<c:url value="/user/updateUser" var="updateUser" />
	<form:form action="${updateUser}" method="POST" modelAttribute="user"
		acceptCharset="UTF-8">
		<form:hidden path="id" readonly="true" />
		<br />
		username: <form:input path="username" readonly="true" />
		<form:hidden path="password" readonly="true" />
		<br />
		enabled: <form:select path="enabled">
			<form:option value="1">Đã kích hoạt</form:option>
			<form:option value="0">Chưa kích hoạt</form:option>
		</form:select>
		<br />
		<button type="submit">Update</button>
		<input type="button" name="cancel" value="cancel">
	</form:form>
</body>
</html>