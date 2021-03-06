<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<script src="<c:url value="/themes/js/jquery.min.js" />"></script>
<script src="<c:url value="/themes/js/datatables.min.js" />"></script>
<link href="<c:url value="/themes/css/datatables.min.css" />"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Danh sách tài khoản</title>
</head>
<body>

	<c:url value="/admin/adminuser-save" var="urlSave" />
	<c:url value="/admin/adminuser-update" var="urlUpdate"></c:url>
	<c:url value="/admin/userDelete" var="urlDelete"></c:url>
	<jsp:include page="../headerAdmin.jsp"></jsp:include>
	<br />

	<div class="tableUserManager">
		<div>
			<a href="${urlSave}" class="btn btn-info">Add User</a>
		</div>
		<br />
		<table class="table table-striped" id="listUser">
			<thead>
				<tr>
					<th>#</th>
					<th>Id</th>
					<th>Username</th>
					<th>Tên đầy đủ</th>
					<th>Ngày sinh</th>
					<th>Địa chỉ</th>
					<th>Mức lương</th>
					<th>Giới tính</th>
					<th>Email</th>
					<th>Điện thoại</th>
					<th>Phòng ban</th>
					<th>Chức vụ</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty listUser}">
					<c:set var="count" value="0" />
					<c:forEach var="user" items="${listUser}">
						<tr>
							<c:set var="count" value="${count+1}" />
							<th>${count}</th>
							<td>${user.id}</td>
							<td><a class="nav-link"
					href="<c:url value="/admin/listLichSu/${user.id }"/>">${user.username}</a></td>
							<td>${user.fullname}</td>
							<td>${user.ngaysinh}</td>
							<td>${user.address}</td>
							<td>${user.salary}</td>
							<td>${user.gender?'Male':'Female'}</td>
							<td>${user.email}</td>
							<td>${user.phone}</td>
							<td>${user.depart.tenphongban}</td>
							<td>${user.chucvu.tenchucvu}</td>
							<td><a class="btn btn-secondary"
								href="${urlUpdate}/${user.id}">Edit</a> | <a
								class="btn btn-danger" href="${urlDelete}/${user.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#listUser').DataTable();
			});
		</script>
	</div>
</body>
</html>