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
<title>Danh sách các chức vụ</title>
</head>
<body>

	<c:url value="/admin/adminChucvu-save" var="urlSave" />
	<c:url value="/admin/adminChucvu-update" var="urlUpdate"></c:url>
	<c:url value="/admin/chucvuDelete" var="urlDelete"></c:url>

	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<div class="tableUserManagerUser">
				<div>
					<a href="${urlSave}" class="btn btn-info"><i class="fa fa-plus"></i>&nbsp;Thêm
						chức vụ</a>
				</div>
				<br />
				<table class="table table-striped" id="list">
					<thead>
						<tr>
							<th>#</th>
							<th>Id</th>
							<th>Tên chức vụ</th>
							<th>Công việc</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty listChucvu}">
							<c:set var="count" value="0" />
							<c:forEach var="chucvu" items="${listChucvu}">
								<tr>
									<c:set var="count" value="${count+1}" />
									<th>${count}</th>
									<td>${chucvu.id}</td>
									<td>${chucvu.tenchucvu}</td>
									<td>${chucvu.congviec}</td>

									<td><a class="btn btn-primary"
										href="${urlUpdate}/${chucvu.id}"><i
											class="fa fa-pencil-square-o" aria-hidden="true"></i></a> | <a
										class="btn btn-danger" href="${urlDelete}/${chucvu.id}"><i
											class="fa fa-trash-o" aria-hidden="true"></i></a></td>
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
		</div>
	</div>
</body>
</html>