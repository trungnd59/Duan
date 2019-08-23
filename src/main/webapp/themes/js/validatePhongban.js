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
$("#validatephongban").validate({
	rules : {
		"tenphongban" : {
			required : true,
		},
		"chucnang" : {
			required : true,
		}
	},
	messages : {
		"tenphongban" : {
			required : "Vui lòng nhập tên phòng ban!"
		},
		"chucnang" : {
			required : "Bạn chưa nhập chức năng của phòng ban!",
		}
	}
});
