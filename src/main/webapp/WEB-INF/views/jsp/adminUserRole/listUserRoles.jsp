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
<title>Danh sách phân quyền tài khoản</title>
</head>
<body>

	<c:url value="/admin/adminUserRole-save" var="urlSave" />
	<c:url value="/admin/adminUserRole-update" var="urlUpdate"></c:url>
	<c:url value="/admin/chucvuDelete" var="urlDelete"></c:url>
	<jsp:include page="../headerAdmin.jsp"></jsp:include>
	<br />

	<div class="tableUserManager">
		<div>
			<a href="${urlSave}" class="btn btn-info">Phân quyền cho tài khoản</a>
		</div>
		<br />
		<table class="table table-striped" id="list">
			<thead>
				<tr>
					<th>#</th>
					<th>Id</th>
					<th>Tên nhân viên</th>
					<th>Chức năng</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty listUserRole}">
					<c:set var="count" value="0" />
					<c:forEach var="userrole" items="${listUserRole}">
						<tr>
							<c:set var="count" value="${count+1}" />
							<th>${count}</th>
							<td>${userrole.id}</td>
							<td>${userrole.users.fullname}</td>
							<td>${userrole.role.name}</td>
							
							<td><a class="btn btn-secondary"
								href="${urlUpdate}/${userrole.id}">Edit</a> | <a
								class="btn btn-danger" href="${urlDelete}/${userrole.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#list').DataTable();
			});
		</script>
	</div>
</body>
</html>