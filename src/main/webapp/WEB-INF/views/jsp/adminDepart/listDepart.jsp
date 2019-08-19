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

	<c:url value="/admin/adminDepart-save" var="urlSave" />
	<c:url value="/admin/adminDepart-update" var="urlUpdate"></c:url>
	<c:url value="/admin/departDelete" var="urlDelete"></c:url>
	<jsp:include page="../headerAdmin.jsp"></jsp:include>
	<br />

	<div class="tableUserManager">
		<div>
			<a href="${urlSave}" class="btn btn-info"><i class="fa fa-plus"></i>&nbsp;Thêm phòng ban</a>
		</div>
		<br />
		<table class="table table-striped" id="listDepart">
			<thead>
				<tr>
					<th>#</th>
					<th>Id</th>
					<th>Tên phòng ban</th>
					<th>Chức năng</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty listDepart}">
					<c:set var="count" value="0" />
					<c:forEach var="depart" items="${listDepart}">
						<tr>
							<c:set var="count" value="${count+1}" />
							<th>${count}</th>
							<td>${depart.id}</td>
							<td>${depart.tenphongban}</td>
							<td>${depart.chucnang}</td>
							
							<td><a class="btn btn-primary"
								href="${urlUpdate}/${depart.id}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a> | <a class="btn btn-danger"
								href="${urlDelete}/${depart.id}"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#listDepart').DataTable();
			});
		</script>
	</div>
</body>
</html>