<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>
	<a href="<c:url value="/user/listUser" />">listUser</a>
	<form action="<c:url value="/j_duan_logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="Logout" />
	</form>
	<br/>
	<c:url value="/user/user-save" var="urlSave" />
	<c:url value="/user/user-update" var="urlUpdate"></c:url>
	<c:url value="/user/userDelete" var="urlDelete"></c:url>

	<a href="${urlSave}">Add User</a>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Enabled</th>
		</tr>
		<c:if test="${not empty listUser}">
			<c:forEach var="user" items="${listUser}">
				<tr style="border: 1px black solid">
					<td id="id">${user.id}</td>
					<td id="name">${user.username}</td>
					<td id="name">${user.password}</td>
					<td id="name">${user.enabled}</td>
					<td><a href="${urlUpdate}/${user.id}">Edit</a></td>
					<td><a href="${urlDelete}/${user.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</body>
</html>