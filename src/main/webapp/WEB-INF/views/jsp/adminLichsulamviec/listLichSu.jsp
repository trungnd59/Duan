<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thông tin lịch sử làm việc của nhân viên</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">

			<div class="tableUserManagerUser">
				<a href="#" class="btn btn-secondary" onclick="history.back();">
					<i class="fa fa-backward" aria-hidden="true"></i>&nbsp; Quay lại
				</a>
				<div class="TitleLichsulamviec">
					<h3>Thông tin lịch sử làm việc của nhân viên:</h3>
					<br>
					
					<table class="table table-striped" id="list">
						<thead>
							<tr>
								<th>STT</th>
								<th>Tên công ty</th>
								<th>Vai trò</th>
								<th>Ngày bắt đầu</th>
								<th>Ngày kết thúc</th>
								<th>Thông tin chi tiết</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="count" value="0" />
							<c:forEach var="LichSuLamViec" items="${listLichSu }"
								varStatus="index">
								<tr>
									<c:set var="count" value="${count+1}" />
									<td scope="row">${count}</td>
									<td>${LichSuLamViec.diadiem}</td>
									<td>${LichSuLamViec.vaitro}</td>
									<td>${LichSuLamViec.startdate}</td>
									<td>${LichSuLamViec.finishdate}</td>
									<td>${LichSuLamViec.mota}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#list').DataTable();
		});
	</script>
</body>
</html>