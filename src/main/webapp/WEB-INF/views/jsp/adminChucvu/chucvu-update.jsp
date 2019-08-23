<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Sửa thông tin chức vụ</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<div class="tableUserManagerUser">
				<h1>Sửa thông tin chức vụ</h1>
				<br /> <br />
				<c:url value="/admin/adminupdateChucvu" var="updateChucvu" />
				<form:form id="validatechucvu" action="${updateChucvu}"
					method="POST" modelAttribute="chucvu" acceptCharset="UTF-8">
					<form:hidden path="id" readonly="true" />
					<div class="col-md-3 form-group">
						<label>Tên chức vụ</label>
						<form:input class="form-control" placeholder="Tên chức vụ"
							path="tenchucvu" />
					</div>
					<div class="col-md-3 form-group">
						<label>Công việc</label>
						<form:input class="form-control" placeholder="Công việc chính"
							path="congviec" />
					</div>
					<div class="col-md-3">
						<button type="submit" class="btn btn-info">
							<i class="fa fa-pencil"></i>&nbsp; Xác nhận
						</button>
						<a href="#" class="btn btn-secondary" onclick="history.back();">
							<i class="fa fa-ban"></i>&nbsp; Quay lại
						</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<script src="<c:url value="/themes/js/validateChucvu.js" />"></script>
</body>
</html>