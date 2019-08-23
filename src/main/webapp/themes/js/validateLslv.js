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

$("#formthemmoiLS")
		.validate(
				{
					rules : {
						"diadiem" : {
							required : true,
						},
						"vaitro" : {
							required : true,
						},
						"startdate" : {
							required : true,
						},
						"finishdate" : {
							required : true,
							greaterThan: "#startdate"
						},
						"mota" : {
							required : true,
						}
					},
					messages : {
						"diadiem" : {
							required : "Vui lòng nhập tên công ty mà bạn đã làm việc!"
						},
						"vaitro" : {
							required : "Bạn chưa điền vai trò của bạn!",
						},
						"startdate" : {
							required : "Vui lòng nhập ngày bắt đầu làm việc!",
						},
						"finishdate" : {
							required : "Vui lòng nhập ngày rời công việc!",
						},
						"mota" : {
							required : "Hãy cho biết thêm những công việc mà bạn đã đóng góp cho các công ty trước đó!",
						}
					}
				});

jQuery.validator.addMethod("greaterThan", function(value, element, params) {
	if (!/Invalid|NaN/.test(new Date(value))) {
		return new Date(value) > new Date($(params).val());
	}

	return isNaN(value) && isNaN($(params).val())
			|| (Number(value) > Number($(params).val()));
	
}, 'Ngày bắt đầu và ngày kết thúc không hợp lệ!');