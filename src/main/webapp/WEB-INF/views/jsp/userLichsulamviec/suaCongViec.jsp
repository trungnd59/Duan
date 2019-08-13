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
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<form:form action="/Duan/user/suacongviec/${userId}" modelAttribute="lichsulamviec"
		method="POST"  acceptCharset="UTF-8">
		<div class="form-row">

			<div class="form-group col-md-6">
				<label for="inputEmail4">Địa điểm</label>
				<form:input class="form-control" path="diadiem" />
			</div>
			<div class="form-group col-md-6">
				<label for="inputEmail4">Vai trò</label>
				<form:input class="form-control" path="vaitro" />
			</div>
			<div class="form-group col-md-6">
				<label for="inputEmail4">Ngày bắt đầu</label>
				<form:input class="form-control" path="startdate" />
			</div>
			<div class="form-group col-md-6">
				<label for="inputEmail4">Ngày kết thúc</label>
				<form:input class="form-control" path="finishdate" />
			</div>
			<div class="form-group col-md-6">
				<label for="inputEmail4">Mô tả</label>
				<form:input class="form-control" path="mota" />
			</div>
			<div class="form-group col-md-2">
				<button type="submit" id="create" class="btn btn-primary">Sửa</button>
			</div>
		</div>

	</form:form>
</body>


</html>