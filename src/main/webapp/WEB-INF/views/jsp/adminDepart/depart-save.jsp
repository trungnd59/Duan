<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm mới phòng ban</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<c:url value="/admin/adminsaveDepart" var="saveDepart"></c:url>
			<div class="tableUserManagerUser">
				<h1>Thêm mới phòng ban</h1>
				<br /> <br />
				<form:form action="${saveDepart}" method="POST"
					modelAttribute="depart" acceptCharset="UTF-8">
					<div class="col-md-3 form-group">
						<label>Tên phòng ban</label>
						<form:input class="form-control" placeholder="Tên phòng ban" path="tenphongban" />
					</div>
					<div class="col-md-3 form-group">
						<label>Chức năng</label>
						<form:input class="form-control" placeholder="Chức năng chính" path="chucnang" />
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