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
<title>Danh sách khen thưởng - kỷ luật</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<c:url value="/admin/adminThanhtich-save" var="urlSave" />
			<div class="tableUserManagerUser">
				<div style="margin-bottom: 2%;">
					<a href="${urlSave}" class="btn btn-info"><i class="fa fa-plus"></i>&nbsp;Thêm
						thành tích hoặc kỷ luật</a>
				</div>
				<table class="table table-striped" id="list">
					<thead>
						<tr>
							<th>#</th>
							<th>Nhân viên</th>
							<th>Loại thành tích</th>
							<th>lý do</th>
							<th>ngày ghi nhận</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty listThanhtich}">
							<c:set var="count" value="0" />
							<c:forEach var="thanhtich" items="${listThanhtich}">
								<tr>
									<c:set var="count" value="${count+1}" />
									<th>${count}</th>
									<td>${thanhtich.users.fullname}</td>
									<td>${thanhtich.loaithanhtich?'Kỷ luật':'Thành tích'}</td>
									<td>${thanhtich.lydo}</td>
									<td>${thanhtich.ngayghinhan}</td>
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