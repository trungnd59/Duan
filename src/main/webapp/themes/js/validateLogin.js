$().ready(function() {
	$("#validateLogin").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"username": {
				required: true,				
			},
			"password": {
				required: true,	
			}
		},
		messages: {
			"username": {
				required: "Vui lòng nhập tên tài khoản!"			
			},
			"password": {
				required: "Bạn chưa nhập mật khẩu!",
			}
		}
	});
});