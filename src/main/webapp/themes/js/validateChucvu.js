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
$("#validatechucvu").validate({
	rules : {
		"tenchucvu" : {
			required : true,
		},
		"congviec" : {
			required : true,
		}
	},
	messages : {
		"tenchucvu" : {
			required : "Vui lòng nhập tên chức vụ!"
		},
		"congviec" : {
			required : "Vui lòng điền thông tin công việc!",
		}
	}
});
