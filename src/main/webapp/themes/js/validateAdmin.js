$().ready(function() {
	$("#validateAddUser").validate({
		onfocusout : true,
		onkeyup : false,
		onclick : false,
		rules : {
			"username" : {
				required : true,
				regaxUsername: /^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$/
			},
			"password" : {
				required : true,
				regx : /^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})/,
			},
			"fullname" : {
				required : true,	
				regxUser: /^[^!@#$%^&*(),.?~"=:+0-9]{1,50}$/
			},
			"ngaysinh": {
				required: true,	
			},
			"address":{
				required: true,	
			},
			"email":{
				required: true,	
				email: true,
			},
			"phone": {
				required: true,	
				regexPhone:/(09|01[2|6|8|9])+([0-9]{8})\b/
			},
			"salary":{
				required: true,	
				min: 200,
				max: 10000,
			}
		},
		messages : {
			"username" : {
				required : "Vui lòng nhập tên tài khoản!"
			},
			"password" : {
				required : "Bạn chưa nhập mật khẩu!"		
			},
			"fullname" : {
				required : "Vui lòng nhập họ tên!"
			},
			"ngaysinh": {
				required: "Vui lòng nhập ngày sinh!"
			},
			"address": {
				required: "Vui lòng nhập địa chỉ!",
			},
			"email": {
				required: "Vui lòng nhập Email!",
				email:"Định dạng Email không đúng! vd: abc@email.com",
			},
			"phone":{
				required: "Vui lòng nhập số điện thoại!",
			},
			"salary": {
				required: "Vui lòng nhập mức lương của nhân viên!",
				min: "Tiền lương không được dưới mức tối thiều 200$, Vui lòng xem xét lại.",
				max: "Tiền lương không được cao hơn mức tối đa 10.000$, Vui lòng xem xét lại."
			}
		}
	});
	$.validator.addMethod("regx", function(value, element, regexpr) {
		return regexpr.test(value);
	}, "Mật khẩu chưa đủ mạnh, tối thiểu 6 ký tự, gồm chữ và số.");
	
	$.validator.addMethod("regxUser", function(value, element, regexpr) {
		return regexpr.test(value);
	}, "Tên không được chứa ký tự đặc biệt và số!");
	
	$.validator.addMethod("regexPhone", function(value, element, regexpr) {
		return regexpr.test(value);
	}, "Số điện thoại không đúng, vui lòng thử lại!");
	$.validator.addMethod("regaxUsername", function(value, element, regexpr) {
		return regexpr.test(value);
	}, "Tên tài khoản không hợp lệ, vui lòng thử lại!");
	
	
	$(function() {
	    $("#ngaysinh").datepicker({
	        changeMonth: true,
	        changeYear: true,
	        yearRange: '2011:2037',
	        dateFormat: 'dd/mm/yy',
	        minDate: 0,
	        defaultDate: null
	    }).on('change', function() {
	        $(this).valid();  // triggers the validation test
	        // '$(this)' refers to '$("#datepicker")'
	    });
	});
});