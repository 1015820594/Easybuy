jQuery.noConflict();
(function ($) {
$(function() {
	
	$("body").keydown(function() {
		if(event.keyCode=="13"){
			$(".log_btn").click();
		}
	});
	$(".log_btn").click(function() {
		var loginName = $("#loginName").val();
		var password = $("#password").val();
		if(loginName == ""){
			alert("用户名不能为空！请重新填入！");
			$("#password").val("");
		}else if(password == ""){
			alert("密码不能为空！请重新填入！");
			$("#loginName").val("");
		}else{
				$.ajax({
					"url":basePath+"login",
					"type":"post",
					"data":"loginName="+loginName+"&password="+password,
					"success":loginSuccess,
					"error":function(){
						alert("error");
					}
				});
				function loginSuccess(data) {
					if(data==="success"){
						$("#form").submit();
					}else{
						$("#loginName").val("");
						$("#password").val("");
						alert("您输入的账号或密码有误,请重新输入!");
					}
				}
		}
	});
});
})(jQuery);