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
	
//	vadilate thông tin cá nhân
	$("#FormupdateThongtin").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"fullname": {
				required: true,				
			},
			"ngaysinh": {
				required: true,	
			},
			"address":{
				required: true,	
			},
			"email":{
				required: true,	
				email: true,
			}
		},
		messages: {
			"fullname": {
				required: "Vui lòng nhập họ tên!"			
			},
			"ngaysinh": {
				required: "Vui lòng nhập ngày sinh!",
			},
			"address": {
				required: "Vui lòng nhập địa chỉ!",
			},
			"email": {
				required: "Vui lòng nhập Email!",
				email:"Định dạng Email không đúng! vd: abc@email.com",
			}
		}
		
	});
	$(function() {
	    $("#ngaysinh").datepicker({
	        changeMonth: true,
	        changeYear: true,
	        yearRange: '2011:2037',
	        dateFormat: 'dd/mm/yy',
	        minDate: 0,
	        defaultDate: null
	    }).on('change', function() {
	        $(this).valid();  // triggers the validation test
	        // '$(this)' refers to '$("#datepicker")'
	    });
	});
});

jQuery(document).ready(function($){
    $cf = $('#phonenumber');
    $cf.blur(function(e){
        phone = $(this).val();
        phone = phone.replace(/[^0-9]/g,'');
        if (phone.length != 10)
        {
            alert('Phone number must be 10 digits.');
            $('#phonenumber').val('');
            $('#phonenumber').focus();
        }
    });
});