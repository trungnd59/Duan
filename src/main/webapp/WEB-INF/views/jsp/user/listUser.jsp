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

	<jsp:include page="../header.jsp"></jsp:include>
	<br />
	<c:url value="/user/user-save" var="urlSave" />
	<c:url value="/user/user-update" var="urlUpdate"></c:url>
	<c:url value="/user/userDelete" var="urlDelete"></c:url>
	<div class="tableUserManager">
		<div>
			<a href="${urlSave}" class="btn btn-info">Add User</a>
		</div>
		<br/>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Enabled</th>
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty listUser}">
					<c:forEach var="user" items="${listUser}">
						<tr>
							<th scope="row">1</th>
							<td>${user.id}</td>
							<td>${user.username}</td>
							<td>${user.enabled}</td>
							<td><a class="btn btn-secondary"
								href="${urlUpdate}/${user.id}">Edit</a> | <a
								class="btn btn-danger" href="${urlDelete}/${user.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>