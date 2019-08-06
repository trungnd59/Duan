<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th class="col-md-1">STT</th>
				<th class="col-md-2">Địa điểm</th>
				<th class="col-md-2">Vai trò</th>
				<th class="col-md-2">Ngày bắt đầu</th>
				<th class="col-md-2">Ngày kết thúc</th>
				<th class="col-md-3">Mô tả</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="LichSuLamViec" items="${listLichSu }"
				varStatus="index">
				<tr>
					<td scope="row"></td>
					<td>${LichSuLamViec.diadiem}</td>
					<td>${LichSuLamViec.vaitro}</td>
					<td>${LichSuLamViec.startdate}</td>
					<td>${LichSuLamViec.finishdate}</td>
					<td>${LichSuLamViec.mota}</td>
				</tr>
				</br>
			</c:forEach>
		</tbody>
	</table>
</body>


</html>