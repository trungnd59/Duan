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
	<div class="wrapper">
		<c:url value="/admin/adminsaveChucvu" var="saveChucvu"></c:url>
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<div class="formInsertUser">
				<h1>Thêm mới chức vụ</h1>
				<br /> <br />
				<form:form action="${saveChucvu}" method="POST"
					modelAttribute="chucvu" acceptCharset="UTF-8">
					<div class="form-group">
						<label>Tên chức vụ</label>
						<form:input class="form-control" path="tenchucvu" />
					</div>
					<div class="form-group">
						<label>Công việc</label>
						<form:input class="form-control" path="congviec" />
					</div>
					<button type="submit" class="btn btn-info">Thêm mới</button>
					<a href="#" class="btn btn-secondary" onclick="history.back();">Quay
						lại</a>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>