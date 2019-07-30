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
		<h1>Sửa thông tin chức vụ</h1>
		<br /> <br />
		<c:url value="/admin/adminupdateChucvu" var="updateChucvu" />

		<form:form action="${updateChucvu}" method="POST" modelAttribute="chucvu"
			acceptCharset="UTF-8">
			<form:hidden path="id" readonly="true" />
			<div class="form-group">
				<label>Tên chức vụ</label>
				<form:input class="form-control" path="tenchucvu" />
			</div>
			<div class="form-group">
				<label>Công việc</label>
				<form:input class="form-control" path="congviec" />
			</div>			
			<button class="btn btn-info" type="submit">Sửa</button>
		</form:form>
	</div>
</body>
</html>