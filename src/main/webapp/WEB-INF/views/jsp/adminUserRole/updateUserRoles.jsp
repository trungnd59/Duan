<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Phân quyền</title>
</head>
<body>
	<jsp:include page="../headerAdmin.jsp"></jsp:include>


	<c:url value="/admin/adminupdateUserRole" var="save"></c:url>
	<div class="formInsertUser">
		<form:form action="${save}" method="POST" modelAttribute="userrole"
			acceptCharset="UTF-8">
			<form:hidden path="id"/>
			<form:hidden path="users.id"/>
			<!-- <div class="form-group">
				<label>Tên nhân viên</label>
				
			</div> -->
			<div class="form-group">
				<label>Chức năng</label>
				<form:select class="form-control" path="role.id">
					<form:option value="0">Chọn loại quyền</form:option>
					<form:options items="${listRole}" itemValue="id"
						itemLabel="name" />
				</form:select>
			</div>			
			<button type="submit" class="btn btn-info">Xác nhận</button>
		</form:form>
	</div>
</body>
</html>