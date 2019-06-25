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
	<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>

	<a href="<c:url value="/admin" />">Admin Page</a>
	<br />
	<a href="<c:url value="/user/listUser" />">listUser</a>
	<form action="<c:url value="/j_duan_logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="Logout" />
	</form>
	<br />
	<c:url value="/user/saveUser" var="saveUser"></c:url>
	<form:form action="${saveUser}" method="POST" modelAttribute="user"
		acceptCharset="UTF-8">
    	username: <form:input path="username" />
		<br />
		password: <form:input path="password" />
		<br />
		enabled: <form:select path="enabled">
			<form:option value="1">Kích hoạt</form:option>
			<form:option value="0">Không kích hoạt</form:option>
		</form:select>
		<br />
		<button type="submit">Submit</button>
	</form:form>
</body>
</html>