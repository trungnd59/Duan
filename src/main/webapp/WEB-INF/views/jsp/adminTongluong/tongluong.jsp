<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<script src="<c:url value="/themes/js/jquery.min.js" />"></script>
<script src="<c:url value="/themes/js/datatables.min.js" />"></script>
<link href="<c:url value="/themes/css/datatables.min.css" />"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Tổng lương</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="main">
			<div class="tableUserManagerUser">
				<h1>Tổng lương phải trả cho nhân viên ${tongluong[0]} $</h1>

			</div>
		</div>
	</div>
</body>
</html>