<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



</head>

<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<li class="nav-item"><a class="nav-link"
		href="/Duan/user/themcongviec/${userId }">Thêm công việc</a></li>

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
	<table id="dtVerticalScrollExample"
		class="table table-striped table-bordered table-sm">
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
					<td><a class="fas fa-trash-alt"
						href="./lichsudelete/${ LichSuLamViec.id }">xoa</a> <a
						href="./presuacongviec/${LichSuLamViec.id}">sua</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>


</script>
</html>