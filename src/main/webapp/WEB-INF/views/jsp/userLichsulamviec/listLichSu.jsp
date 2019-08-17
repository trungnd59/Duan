<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Danh sách lịch sử làm việc</title>
</head>

<body>
	<c:url value="../themcongviec/${userId }" var="urlThemcongviec" />
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="tableUserManager">
		<div class="button-intop">
			<a class="btn btn-primary" href="${urlThemcongviec }">Thêm công
				việc</a>
		</div>

		<table class="table table-striped" id="list">
			<thead>
				<tr>
					<th class="th-sm">STT</th>
					<th class="th-sm">Địa điểm</th>
					<th class="th-sm">Vai trò</th>
					<th class="th-sm">Ngày bắt đầu</th>
					<th class="th-sm">Ngày kết thúc</th>
					<th class="th-sm">Mô tả</th>
					<th class="th-sm">Hành động</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="LichSuLamViec" items="${listLichSu }"
					varStatus="index">
					<tr>
						<td id="id">${LichSuLamViec.id}</td>
						<td id="diadiem${LichSuLamViec.id}">${LichSuLamViec.diadiem}</td>
						<td id="vaitro${LichSuLamViec.id}">${LichSuLamViec.vaitro}</td>
						<td id="startdate${LichSuLamViec.id}">${LichSuLamViec.startdate}</td>
						<td id="finishdate${LichSuLamViec.id}">${LichSuLamViec.finishdate}</td>
						<td id="mota${LichSuLamViec.id}">${LichSuLamViec.mota}</td>
						<td><a class="btn btn-secondary"
							href="../presuacongviec/${LichSuLamViec.id}">Sửa</a> <a
							class="btn btn-danger"
							href="./lichsudelete/${ LichSuLamViec.id }">Xóa</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#list').DataTable();
		});
	</script>

	<c:set var="Messagedelete" value="${deleteMessage }"></c:set>
	${deleteMessage }
	<c:choose>
		<c:when test="${Messagedelete==1 }">
			<div class="alert alert-success" role="alert">Xoa thanh cong!</div>
		</c:when>
		<c:when test="${Messagedelete==0 }">
			<div class="alert alert-danger" role="alert">Xoa khong thanh
				cong!</div>
		</c:when>
	</c:choose>
</body>
</html>