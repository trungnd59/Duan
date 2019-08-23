jQuery.validator.setDefaults({
	errorElement : 'span',
	errorPlacement : function(error, element) {
		error.addClass('invalid-feedback');
		element.closest('.form-group').append(error);
	},
	highlight : function(element, errorClass, validClass) {
		$(element).addClass('is-invalid');
	},
	unhighlight : function(element, errorClass, validClass) {
		$(element).removeClass('is-invalid');
	}
});
$("#validateLogin").validate({
	onfocusout : false,
	onkeyup : false,
	onclick : false,
	rules : {
		"username" : {
			required : true,
		},
		"password" : {
			required : true,
		}
	},
	messages : {
		"username" : {
			required : "Vui lòng nhập tên tài khoản!"
		},
		"password" : {
			required : "Bạn chưa nhập mật khẩu!",
		}
	}
});

// vadilate thông tin cá nhân
$("#FormupdateThongtin").validate({
	onfocusout : false,
	onkeyup : false,
	onclick : false,
	rules : {
		"fullname" : {
			required : true,
		},
		"ngaysinh" : {
			required : true,
		},
		"address" : {
			required : true,
		},
		"email" : {
			required : true,
			email : true,
		}
	},
	messages : {
		"fullname" : {
			required : "Vui lòng nhập họ tên!"
		},
		"ngaysinh" : {
			required : "Vui lòng nhập ngày sinh!",
		},
		"address" : {
			required : "Vui lòng nhập địa chỉ!",
		},
		"email" : {
			required : "Vui lòng nhập Email!",
			email : "Định dạng Email không đúng! vd: abc@email.com",
		}
	}

});

