<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Sửa thông tin phòng ban</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<div class="tableUserManagerUser">
				<h1>Sửa thông phòng ban</h1>
				<br /> <br />
				<c:url value="/admin/adminupdateDepart" var="updateDepart" />
				<form:form id="validatephongban" action="${updateDepart}"
					method="POST" modelAttribute="depart" acceptCharset="UTF-8">
					<form:hidden path="id" readonly="true" />
					<div class="col-md-3 form-group">
						<label>Tên phòng ban</label>
						<form:input class="form-control" placeholder="Tên phòng ban"
							path="tenphongban" />
					</div>
					<div class="col-md-3 form-group">
						<label>Chức năng</label>
						<form:input class="form-control" placeholder="Chức năng chính"
							path="chucnang" />
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
	<script src="<c:url value="/themes/js/validatePhongban.js" />"></script>
</body>
</html>