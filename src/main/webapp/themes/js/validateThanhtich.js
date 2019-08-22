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
$("#validatethanhtich").validate({
	onfocusout : false,
	onkeyup : false,
	onclick : false,
	rules : {
		"lydo" : {
			required : true,
		},
		"users.id" : {
			required : true,
		},
		"loaithanhtich" : {
			required : true,
		}

	},
	messages : {
		"lydo" : {
			required : "Vui lòng nhập lý do!"
		},
		"users.id" : {
			required : "Vui lòng chọn nhân viên!"
		},
		"loaithanhtich" : {
			required : "Chưa chọn thành tích hoặc kỷ luật!",
		}
	}
});
