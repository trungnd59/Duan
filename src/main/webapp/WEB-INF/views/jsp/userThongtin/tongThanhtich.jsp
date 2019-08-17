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

	<c:url value="/admin/adminThanhtich-save" var="urlSave" />
	<%-- <c:url value="/admin/adminChucvu-update" var="urlUpdate"></c:url> --%>
	<%-- 	<c:url value="/admin/chucvuDelete" var="urlDelete"></c:url> --%>
	<jsp:include page="../header.jsp"></jsp:include>
	<br />

	<div class="tableUserManager">
		<table class="table table-striped" id="list">
			<thead>
				<tr>
					<th>#</th>
					<th>Mã nhân viên</th>
					<th>Tổng thành tích</th>
					<th>Tổng kỷ luật</th>
					<th>Tổng kết</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty arrays}">
					<c:set var="count" value="0" />
					<c:forEach var="a" items="${arrays}">
						<tr>
							<c:set var="count" value="${count+1}" />
							<th>${count}</th>
							<td>${a[0].fullname}</td>
							<td>${a[1]}</td>
							<td>${a[2]}</td>
							<td>${a[1] - a[2]}</td>
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