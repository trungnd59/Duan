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
	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<c:url value="/admin/adminupdateUser" var="updateUser" />
			<div class="formThemmoiNV">
				<h1>Sửa thông tin tài khoản</h1>
				<form:form id="validateAddUser" action="${updateUser}" method="POST"
					modelAttribute="user" acceptCharset="UTF-8">
					<div class="row">
						<form:hidden path="id" />
						<div class="col-md-6 form-group">
							<label>Tên tài khoản</label>
							<form:input class="form-control" placeholder="Tên tài khoản"
								path="username" name="username" readonly="true" />
						</div>
						<form:hidden path="password" readonly="true" />
						<div class="col-md-6 form-group selectFormAddUser">
							<label>Trạng thái</label>
							<form:select class="form-control" path="enabled">
								<form:option value="1">Kích hoạt</form:option>
								<form:option value="0">Không kích hoạt</form:option>
							</form:select>
						</div>
						<div class="col-md-6 form-group">
							<label>Tên đầy đủ</label>
							<form:input class="form-control" placeholder="Họ và tên"
								path="fullname" name="fullname" />
						</div>
						<div class="col-md-6 form-group">
							<label>Ngày sinh</label>
							<form:input type="date" class="form-control" path="ngaysinh" />
						</div>
						<div class="col-md-6 form-group">
							<label>Địa chỉ</label>
							<form:input class="form-control" placeholder="Địa chỉ"
								path="address" />
						</div>
						<div class="col-md-6 form-group">
							<label>Mức lương</label>
							<form:input type="number" pattern="[0-9]*"
								placeholder="Tiền lương" class="form-control" path="salary" />
						</div>
						<div class="col-md-6 form-group">
							<label>Email</label>
							<form:input class="form-control" placeholder="Địa chỉ email"
								path="email" />
						</div>
						<div class="col-md-3 form-group selectFormAddUser">
							<label>Giới tính</label>
							<form:select class="form-control" path="gender">
								<form:option value="1">Nam</form:option>
								<form:option value="0">Nữ</form:option>
							</form:select>
						</div>

						<div class="col-md-6 form-group">
							<label>Số điện thoại</label>
							<form:input type="number" pattern="[0-9]*"
								placeholder="Số điện thoại" class="form-control" path="phone" />
						</div>
						<div class="col-md-3 form-group selectFormAddUser">
							<label>Phòng ban</label>
							<form:select class="form-control" path="depart.id">
								<form:options items="${listDepart}" itemValue="id"
									itemLabel="tenphongban" />
							</form:select>
						</div>
						<div class="col-md-3 form-group selectFormAddUser">
							<label>Chức vụ</label>
							<form:select class="form-control" path="chucvu.id">
								<form:options items="${chucvuList}" itemValue="id"
									itemLabel="tenchucvu" />
							</form:select>
						</div>
						<div class="col-md-6">
							<button type="submit" class="btn btn-info">
								<i class="fa fa-pencil"></i>&nbsp; Xác nhận
							</button>
							<a href="#" class="btn btn-secondary" onclick="history.back();">
								<i class="fa fa-ban"></i>&nbsp; Hủy
							</a>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<script src="<c:url value="/themes/js/validateAdmin.js" />"></script>
</body>
</html>