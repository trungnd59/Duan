<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Update user</title>
</head>
<body>
	<jsp:include page="../headerAdmin.jsp"></jsp:include>
	<div class="formInsertUser">
		<h1>Sửa thông phòng ban</h1>
		<br /> <br />
		<c:url value="/admin/adminupdateDepart" var="updateDepart" />

		<form:form action="${updateDepart}" method="POST" modelAttribute="depart"
			acceptCharset="UTF-8">
			<form:hidden path="id" readonly="true" />
			<div class="form-group">
				<label>Tên phòng ban</label>
				<form:input class="form-control" path="tenphongban" />
			</div>
			<div class="form-group">
				<label>Chức năng</label>
				<form:input class="form-control" path="chucnang" />
			</div>			
			<button class="btn btn-info" type="submit">Chỉnh Sửa</button>
			<a href="#" class="btn btn-secondary" onclick="history.back();">Quay
				lại</a>
		</form:form>
	</div>
</body>
</html>