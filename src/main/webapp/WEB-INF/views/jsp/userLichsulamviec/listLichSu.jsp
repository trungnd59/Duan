<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



</head>

<body>

<jsp:include page="../header.jsp"></jsp:include>
	<li class="nav-item"><a class="nav-link"
		href="/Duan/user/themcongviec/${userId }">Thêm công việc</a></li>
	<form:form id="form_id" action="/Duan/user/themcongviec/${userId}"
		method="POST" modelAttribute="lichsulamviec" acceptCharset="UTF-8">
		<div class="form-row">

			<div class="form-group col-md-6">
				<label for="inputEmail4">Địa điểm</label>
				<form:input class="form-control" path="diadiem" />
			</div>
			<div class="form-group col-md-6">
				<label for="inputEmail4">Vai trò</label>
				<form:input class="form-control" path="vaitro" />
			</div>
			<div class="form-group col-md-6">
				<label for="inputEmail4">Ngày bắt đầu</label>
				<form:input class="form-control" path="startdate" />
			</div>
			<div class="form-group col-md-6">
				<label for="inputEmail4">Ngày kết thúc</label>
				<form:input class="form-control" path="finishdate" />
			</div>
			<div class="form-group col-md-6">
				<label for="inputEmail4">Mô tả</label>
				<form:input class="form-control" path="mota" />
			</div>
			<div class="form-group col-md-2">
				<button type="submit" id="create" class="btn btn-primary">Create</button>
				
			</div>
						<div class="form-group col-md-2">
				<button type="button" id="cancel" style="display: none;" onclick="btnCancel(this.id)"
					class="btn btn-danger">Cancel</button>
			</div>
		</div>

	</form:form>
	<c:set var="Messagedelete" value="${deleteMessage }"></c:set>

	${deleteMessage }
	<c:choose>
		<c:when test="${Messagedelete==1 }">
			<div class="alert alert-success" role="alert">Xoa thanh cong!</div>
		</c:when>
		<c:when test="${Messagedelete==0 }">
			<div class="alert alert-danger" role="alert">Xoa khong thanh
				cong!</div>
		</c:when>
	</c:choose>
	<table id="dtVerticalScrollExample"
		class="table table-striped table-bordered table-sm" cellspacing="0"
		width="100%">
		<thead>
			<tr>
				<th class="th-sm">STT</th>
				<th class="th-sm">Địa điểm</th>
				<th class="th-sm">Vai trò</th>
				<th class="th-sm">Ngày bắt đầu</th>
				<th class="th-sm">Ngày kết thúc</th>
				<th class="th-sm">Mô tả</th>
				<th class="th-sm">Hành động</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="LichSuLamViec" items="${listLichSu }"
				varStatus="index">

				<tr>

					<td id="id">${LichSuLamViec.id}</td>
					<td id="diadiem${LichSuLamViec.id}">${LichSuLamViec.diadiem}</td>
					<td id="vaitro${LichSuLamViec.id}">${LichSuLamViec.vaitro}</td>
					<td id="startdate${LichSuLamViec.id}">${LichSuLamViec.startdate}</td>
					<td id="finishdate${LichSuLamViec.id}">${LichSuLamViec.finishdate}</td>
					<td id="mota${LichSuLamViec.id}">${LichSuLamViec.mota}</td>
					<td><a class="fas fa-trash-alt"
						href="./lichsudelete/${ LichSuLamViec.id }">xoa</a> <a href="#"
						onclick="fillAll(this.id)" id="${LichSuLamViec.id}">sua</a></td>
				</tr>
				</br>
			</c:forEach>
		</tbody>
	</table>

</body>
<script type="text/javascript">
var btnCancel =function (clicked_id){
	document.getElementById("diadiem").value = "";
	document.getElementById("vaitro").value = "";
	document.getElementById("startdate").value = '';
	document.getElementById("finishdate").value = '';
	document.getElementById("mota").value = '';
		var urlEdit = "/Duan/user/suacongviec/" + clicked_id;
		document.getElementById("create").innerHTML = "Create";
		document.getElementById("cancel").style.display = "none";
	document.getElementById('form_id').action = "/Duan/user/themcongviec/"+${userId};
	console.log(urlEdit)
	}
	var fillAll=function (clicked_id) {

		var diadiem = document.getElementById("diadiem" + clicked_id).innerText;
		var vaitro = document.getElementById("vaitro" + clicked_id).innerText;
		var startdate = document.getElementById("startdate" + clicked_id).innerText;
		var finishdate = document.getElementById("finishdate" + clicked_id).innerText;
		var mota = document.getElementById("mota" + clicked_id).innerText;

		document.getElementById("diadiem").value = diadiem;
		document.getElementById("vaitro").value = vaitro;
		document.getElementById("startdate").value = startdate;
		document.getElementById("finishdate").value = finishdate;
		document.getElementById("mota").value = mota;
		document.getElementById("id").value = clicked_id;
		var urlEdit = "/Duan/user/suacongviec/" + clicked_id;

		document.getElementById('form_id').action = urlEdit;
		document.getElementById("create").innerHTML = "Update";
		document.getElementById('cancel').style.display = "block";
	}

</script>
<script type="text/javascript">

</script>
</html>