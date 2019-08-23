<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm thông tin lịch sử làm việc</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="formThemmoiNV">
		<form:form id="formthemmoiLS" action="/Duan/user/themcongviec/${userId}"
			method="POST" modelAttribute="lichsulamviec" acceptCharset="UTF-8">
			<div class="row">
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
					<form:input class="form-control" type="date" path="startdate" id="startdate"/>
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
						<i class="fa fa-plus"></i>&nbsp;Thêm mới
					</button>
					<a href="#" class="btn btn-secondary" onclick="history.back();"><i
						class="fa fa-ban"></i>&nbsp;Quay lại</a>
				</div>
			</div>
		</form:form>
	</div>
	<script src="<c:url value="/themes/js/validateLslv.js" />"></script>
</body>
</html>