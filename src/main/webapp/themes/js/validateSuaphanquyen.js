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
$("#validatephanquyen").validate({
	rules : {
		"role.id" : {
			required : true,
		}

	},
	messages : {
		"role.id" : {
			required : "Vui lòng chọn 1 loại quyền!"
		}
	}
});
