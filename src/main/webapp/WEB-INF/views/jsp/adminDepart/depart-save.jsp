<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>save user</title>
</head>
<body>
	<jsp:include page="../headerAdmin.jsp"></jsp:include>


	<c:url value="/admin/adminsaveDepart" var="saveDepart"></c:url>
	<div class="formInsertUser">
		<h1>Thêm mới phòng ban</h1>
		<br /> <br />
		<form:form action="${saveDepart}" method="POST"
			modelAttribute="depart" acceptCharset="UTF-8">
			<div class="form-group">
				<label>Ten phòng ban</label>
				<form:input class="form-control" path="tenphongban" />
			</div>
			<div class="form-group">
				<label>Chức năng</label>
				<form:input class="form-control" path="chucnang" />
			</div>
			<button type="submit" class="btn btn-info">Thêm mới</button>
			<a href="#" class="btn btn-secondary" onclick="history.back();">Quay
				lại</a>
		</form:form>
	</div>
</body>
</html>