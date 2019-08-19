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
	<div class="wrapper">
		<c:url value="/admin/adminupdateUserRole" var="save"></c:url>
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<div class="tableUserManagerUser">
				<form:form action="${save}" method="POST" modelAttribute="userrole"
					acceptCharset="UTF-8">
					<form:hidden path="id" />
					<form:hidden path="users.id" />
					<div class="col-md-3 form-group">
						<label>Chức năng</label>
						<form:select class="form-control" path="role.id">
							<form:option value="0">Chọn loại quyền</form:option>
							<form:options items="${listRole}" itemValue="id" itemLabel="name" />
						</form:select>
					</div>
					<div class="col-md-3">
						<button type="submit" class="btn btn-info">
							<i class="fa fa-plus"></i>&nbsp; Xác nhận
						</button>
						<a href="#" class="btn btn-secondary" onclick="history.back();">
							<i class="fa fa-ban"></i>&nbsp; Quay lại
						</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>