$().ready(function() {
	$("#demoForm").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"user": {
				required: true,
				maxlength: 15
			},
			"password": {
				required: true,
				minlength: 8
			},
			"re-password": {
				equalTo: "#password",
				minlength: 8
			}
		}
	});
});