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
	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<c:url value="/admin/adminsaveThanhtich" var="saveThanhtich"></c:url>
			<div class="tableUserManagerUser">
				<h1>Thêm thành tích hoặc kỷ luật cho nhân viên</h1>
				<br /> <br />
				<form:form action="${saveThanhtich}" method="POST"
					modelAttribute="thanhtich" acceptCharset="UTF-8">
					<div class="form-group selectFormAddUser col-md-3">
						<label>Chọn nhân viên</label>
						<form:select class="form-control" path="users.id">
							<form:option value="0">Chọn nhân viên</form:option>
							<form:options items="${listNhanvien}" itemValue="id"
								itemLabel="fullname" />
						</form:select>
					</div>
					<div class="col-md-3 form-group">
						<label>Loại: &nbsp;</label>
						<form:radiobutton path="loaithanhtich" value="0"
							label=" Thành tích" />&nbsp;&nbsp;
						<form:radiobutton path="loaithanhtich" value="1" label=" Kỷ luật" />
					</div>
					<div class="col-md-3 form-group">
						<label>Lý do</label>
						<form:textarea class="form-control" rows="10" cols="50"
							path="lydo" />
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