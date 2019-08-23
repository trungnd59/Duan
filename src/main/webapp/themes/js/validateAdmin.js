/*
Trang quản lý nhân viên
 */

jQuery.validator.setDefaults({
	errorElement: 'span',
    errorPlacement: function (error, element) {
        error.addClass('invalid-feedback');
        element.closest('.form-group').append(error);
    },
    highlight: function (element, errorClass, validClass) {
        $(element).addClass('is-invalid');
    },
    unhighlight: function (element, errorClass, validClass) {
        $(element).removeClass('is-invalid');
    }
});

$("#validateAddUser")
		.validate(
				{

					rules : {
						"username" : {
							required : true,
							regaxUsername : /^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$/
						},
						"password" : {
							required : true,
							regx : /^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})/,
						},
						"fullname" : {
							required : true,
							regxUser : /^[^!@#$%^&*(),.?~"=:+0-9]{1,50}$/
						},
						"ngaysinh" : {
							required : true,
							date : true,
							maxDate : true
						},
						"address" : {
							required : true,
						},
						"email" : {
							required : true,
							email : true,
						},
						"phone" : {
							required : true,
							regexPhone : /(09|01[2|6|8|9])+([0-9]{8})\b/
						},
						"salary" : {
							required : true,
							min : 200,
							max : 10000,
						},
						"gender" : {
							required : true,
						},
						"depart.id" : {
							required : true,
						},
						"chucvu.id" : {
							required : true,
						}
					},
					messages : {
						"chucvu.id" : {
							required : "Chưa chọn chức vụ!",
						},
						"depart.id" : {
							required : "Chưa chọn phòng ban!",
						},
						"username" : {
							required : "Vui lòng nhập tên tài khoản!"
						},
						"password" : {
							required : "Bạn chưa nhập mật khẩu!"
						},
						"fullname" : {
							required : "Vui lòng nhập họ tên!"
						},
						"ngaysinh" : {
							required : "Vui lòng nhập ngày sinh!"
						},
						"address" : {
							required : "Vui lòng nhập địa chỉ!",
						},
						"email" : {
							required : "Vui lòng nhập Email!",
							email : "Định dạng Email không đúng! vd: abc@email.com",
						},
						"phone" : {
							required : "Vui lòng nhập số điện thoại!",
						},
						"salary" : {
							required : "Vui lòng nhập mức lương của nhân viên!",
							min : "Tiền lương không được dưới mức tối thiều 200$, Vui lòng xem xét lại.",
							max : "Tiền lương không được cao hơn mức tối đa 10.000$, Vui lòng xem xét lại."
						},
						"gender" : {
							required : "Chưa chọn giới tính!"
						}
					},

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

$.validator.addMethod("maxDate", function(value, element) {
	var curDate = new Date("2000-01-01");
    var inputDate = new Date(value);
    if (inputDate < curDate)
		return true;
	return false;
}, "Ngày sinh không hợp lệ!");
