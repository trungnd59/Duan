$().ready(function() {
	$("#validateAddUser").validate({
		onfocusout : false,
		onkeyup : false,
		onclick : false,
		rules : {
			"username" : {
				required : true,
			},
			"password" : {
				required : true,
//				minlength : 8,
//				maxlength : 30,
				regx : /^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})/,
			},
			"fullname" : {
				required : true,
				// lettersonly : true
				pattern : '[a-zA-Z]+'
			}
		},
		messages : {
			"username" : {
				required : "Vui lòng nhập tên tài khoản!"
			},
			"password" : {
				required : "Bạn chưa nhập mật khẩu!",
//				minlength : "Mật khẩu phải tối thiểu 8 ký tự!",
//				maxlength : "Mật khẩu quá dài tối đa 30 ký tự!"
			},
			"fullname" : {
				required : "Vui lòng nhập tên!",
				pattern : "SAi",
			// lettersonly : "Tên không thể chứa ký tự số và ký tự đặc biệt!"
			}
		}
	});
	$.validator.addMethod("regx", function(value, element, regexpr) {
		return regexpr.test(value);
	}, "Mật khẩu chưa đủ mạnh, tối thiểu 6 ký tự, gồm chữ và số.");
});