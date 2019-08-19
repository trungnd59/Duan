<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<script src="<c:url value="/themes/js/jquery.min.js" />"></script>
<script src="<c:url value="/themes/js/datatables.min.js" />"></script>
<link href="<c:url value="/themes/css/datatables.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/themes/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<c:url value="/themes/css/style.css" />" rel="stylesheet">
</head>
<body>

	<c:url value="../admin" var="urlAdmin" />
	<div class="sidenav">
		<form class="form-inline my-2 my-lg-0"
			action="<c:url value="/j_duan_logout" />" method="post">
			<div class="infoMenu">
				<b>Xin chào: ${pageContext.request.userPrincipal.name}</b>

			</div>
			<div class="buttonlogout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<button class="btn btn-info" type="submit">
					Thoát&nbsp; <i class="fa fa-sign-out"></i>
				</button>
			</div>
		</form>
		<a href="${urlAdmin }"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;Trang
			chính</a> <a href="<c:url value="/admin/adminlistUser"/>"><i
			class="fa fa-users" aria-hidden="true"></i>&nbsp;Quản lý thông tin
			nhân viên</a> <a href="<c:url value="/admin/adminlistDepart"/>"><i
			class="fa fa-briefcase" aria-hidden="true"></i>&nbsp;Quản lý Phòng
			ban</a> <a href="<c:url value="/admin/adminlistChucvu"/>"><i
			class="fa fa-hand-o-right" aria-hidden="true"></i>&nbsp;Quản lý chức
			vụ</a>
		<button class="dropdown-btn">
			<i class="fa fa-trophy" aria-hidden="true"></i>&nbsp; Khen thưởng -
			Kỷ luật <i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-container">
			<a href="<c:url value="/admin/adminlistRecord"/>"><i
				class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;Thêm khen
				thưởng - kỷ luật</a> <a href="<c:url value="/admin/adminreport"/>"><i
				class="fa fa-bar-chart" aria-hidden="true"></i>&nbsp;Tổng kết thành
				tích</a>
		</div>
		<a href="<c:url value="/admin/adminTongluong"/>"><i
			class="fa fa-money" aria-hidden="true"></i>&nbsp;Tổng lương</a>

		<button class="dropdown-btn">
			<i class="fa fa-user" aria-hidden="true"></i>&nbsp; Quản lý tài khoản
			<i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-container">
			<a href="<c:url value="/admin/adminlistTaikhoan"/>"><i
				class="fa fa-sun-o" aria-hidden="true"></i>&nbsp;Tình trạng tài
				khoản</a> <a href="<c:url value="/admin/adminListUserRole"/>"><i
				class="fa fa-universal-access" aria-hidden="true"></i>&nbsp;Phân
				quyền</a>
		</div>
	</div>

	<script>
		/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}
	</script>
</body>
</html>