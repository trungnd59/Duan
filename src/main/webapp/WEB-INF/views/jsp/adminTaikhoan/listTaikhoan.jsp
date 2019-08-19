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
	<div class="wrapper">
		<c:url value="/admin/admintaikhoan-update" var="urlUpdate"></c:url>
		<c:url value="/admin/adminListUserRole" var="urlUserRole"></c:url>
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<div class="tableUserManagerUser">
				<table class="table table-striped" id="listUser">
					<thead>
						<tr>
							<th>#</th>
							<th>Id</th>
							<th>Username</th>
							<th>Tên đầy đủ</th>
							<th>Trạng thái</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty listTaikhoan}">
							<c:set var="count" value="0" />
							<c:forEach var="user" items="${listTaikhoan}">
								<tr>
									<c:set var="count" value="${count+1}" />
									<th>${count}</th>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.fullname}</td>
									<td>${user.enabled?'Đã kích hoạt':'Chưa kích hoạt'}</td>
									<td><a class="btn btn-primary"
										href="${urlUpdate}/${user.id}"><i
											class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
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
		</div>
	</div>

</body>
</html>