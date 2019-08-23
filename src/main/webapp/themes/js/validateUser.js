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
	rules : {
		"fullname" : {
			required : true,
		},
		"ngaysinh" : {
			required : true,
			date: true,
			maxDate: true
		},
		"address" : {
			required : true,
		},
		"email" : {
			required : true,
			email : true,
		},
		"gender" : {
			required : true,
		},
		"phone" : {
			required : true,
			regexPhone : /(09|01[2|6|8|9])+([0-9]{8})\b/
		},
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
		"gender" : {
			required : "Bạn chưa chọn giới tính!",
		},
		"email" : {
			required : "Vui lòng nhập Email!",
			email : "Định dạng Email không đúng! vd: abc@email.com",
		},
		"phone" : {
			required : "Vui lòng nhập số điện thoại!",
		}
	}
});
$.validator.addMethod("maxDate", function(value, element) {
	var curDate = new Date("2000-01-01");
    var inputDate = new Date(value);
    if (inputDate < curDate)
		return true;
	return false;
}, "Ngày sinh không hợp lệ!");

$.validator.addMethod("regexPhone", function(value, element, regexpr) {
	return regexpr.test(value);
}, "Số điện thoại không đúng, vui lòng thử lại!");
