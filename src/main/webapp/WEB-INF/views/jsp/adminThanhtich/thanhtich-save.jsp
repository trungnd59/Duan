<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Thành tích & Kỷ luật</title>
</head>
<body>
	<jsp:include page="../headerAdmin.jsp"></jsp:include>


	<c:url value="/admin/adminsaveThanhtich" var="saveThanhtich"></c:url>
	<div class="formInsertUser">
		<h1>Thêm thành tích hoặc kỷ luật cho nhân viên</h1>
		<br /> <br />
		<form:form action="${saveThanhtich}" method="POST"
			modelAttribute="thanhtich" acceptCharset="UTF-8">
			<div class="form-group selectFormAddUser">
				<form:select class="form-control" path="users.id">
					<form:option value="0">Chọn nhân viên</form:option>
					<form:options items="${listNhanvien}" itemValue="id"
						itemLabel="fullname" />
				</form:select>
			</div>
			<div class="form-group">
				<label>Loại</label>
				<form:radiobutton path="loaithanhtich" value="0"
					label="Thành tích" />
				<form:radiobutton path="loaithanhtich" value="1" label="Kỷ luật" />
			</div>
			<div class="form-group">
				<label>Lý do</label>
				<form:textarea class="form-control" rows="10" cols="50" path="lydo"/>
			</div>
			<button type="submit" class="btn btn-info">Submit</button>
		</form:form>
	</div>
</body>
</html>