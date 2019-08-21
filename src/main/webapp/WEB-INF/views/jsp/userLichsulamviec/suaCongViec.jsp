<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<script src="<c:url value="/themes/js/jquery.min.js" />"></script>
<script src="<c:url value="/themes/js/datatables.min.js" />"></script>
<link href="<c:url value="/themes/css/datatables.min.css" />"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Chỉnh sửa thông tin lịch sử làm việc</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="formThemmoiNV">
		<form:form action="/Duan/user/suacongviec/${userId}"
			modelAttribute="lichsulamviec" method="POST" acceptCharset="UTF-8">
			<div class="row">
				<form:hidden path="id" />
				<div class="col-md-6 form-group">
					<label>Địa điểm</label>
					<form:input class="form-control" path="diadiem" />
				</div>
				<div class="col-md-6 form-group">
					<label>Vai trò</label>
					<form:input class="form-control" path="vaitro" />
				</div>
				<div class="col-md-6 form-group">
					<label>Ngày bắt đầu</label>
					<form:input class="form-control" type="date" path="startdate" />
				</div>
				<div class="col-md-6 form-group">
					<label>Ngày kết thúc</label>
					<form:input class="form-control" type="date" path="finishdate" />
				</div>
				<div class="col-md-6 form-group">
					<label>Thông tin chi tiết</label>
					<form:textarea rows="10" cols="50" class="form-control" path="mota" />
				</div>
				<div class="col-md-12 form-group">
					<button type="submit" id="create" class="btn btn-primary">
						Chỉnh sửa</button>
					<a href="#" class="btn btn-secondary" onclick="history.back();">Quay
						lại</a>
				</div>
			</div>
		</form:form>
	</div>
</body>


</html>