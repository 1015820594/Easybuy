jQuery.noConflict();
(function ($) {
$(function() {
	$("body").keydown(function() {
		if(event.keyCode=="13"){
			$(".log_btn").click();
		}
	});
	
	$('#youxiang').blur(function(){
		var ss = $(this).val();
		var node = $(this).parent().parent().next().children().children();
		if(ss == ''){	
			node.html('邮箱不能为空');		
		}else{
			var req=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/g;
			if(req.test(ss)){
				node.html('');
			}else
				node.html('邮箱格式错误');
		}
	 });
 
	 
	 $('#password1').blur(function(){
		var ss = $(this).val();
		var node = $(this).parent().parent().next().children().children();
		if(ss == ''){
			node.html('密码不能为空');	
		}else{
			var req =/^\w{6,12}$/g;
			if(req.test(ss)){
				node.html('');
			}else{
				node.html('密码格式错误，应该为6-12位数字字母下划线');
			}
		}
	 }) ;
	 
	 $('#password2').blur(function(){
			var ss = $(this).val();
			var node = $(this).parent().parent().next().children().children();
			if(ss == ''){
			node.html('确认密码不能为空');	
			}else{
				var req =/^\w{6,12}$/g;
				if(req.test(ss)){
					node.html('');
				}else{
			 node.html('密码格式错误，应该为6-12位数字字母下划线');
			 }
			}
		 }) ;
	 $('#xm').blur(function(){
		var us = $(this).val();
		    us = $.trim(us);
		    var node = $(this).parent().parent().next().children().children();
		if(us ==''){
		  node.html('姓名不能为空');
		}else{
			var req =/^[\u2E80-\u9FFF]+$/g;
			if(req.test(us)){
				node.html('');
			}else{
				node.html('姓名只能写中文');
				
			}
				
		}
	 });
	 
	 $('#sfz').blur(function(){
			var us = $(this).val();
			    us = $.trim(us);
			    var node = $(this).parent().parent().next().children().children();
			if(us ==''){
			  node.html('身份证不能为空');
			}else{
				var req = /^\d{15}$|^\d{18}$/g;
				if(req.test(us)){
					node.html('');
				}else{
					node.html('身份证不合法');
					
				}
					
			}
		 });
	 
	 $('#shouji').blur(function(){
			var us = $(this).val();
			    us = $.trim(us);
			    var node = $(this).parent().parent().next().children().children();
			if(us ==''){
			  node.html('手机不能为空');
			}else{
				var req =  /^1\d{10}$/g;
				if(req.test(us)){
					node.html('');
				}else{
					node.html('手机号码输入不合法');				
				}
					
			}
		 });
	 
	 $('#loginName').blur(function(){
			var us = $(this).val();
			    us = $.trim(us);
			    var node = $(this).parent().parent().next().children().children();
			if(us ==''){
			  node.html('用户名不能为空');
			}else{
				var req = /^[a-zA-Z0-9_-]{4,16}$/g;
				if(req.test(us)){
					node.html('');
				}else{
					node.html('用户名输入不合法');
				}
					
			}
		 });

	//非空验证
	$(".log_btn").click(function() {
		var loginName = $("#loginName").val();
		var password = $("#password1").val();
		var password2 = $("#password2").val();
		var userName = $("#xm").val();
		var sex = $(".l_sex").val();
		var identityCode = $("#sfz").val();
		var email = $("#youxiang").val();
		var mobile = $("#shouji").val();
		if(loginName == ""){
			alert("用户名不能为空！请重新填入！");
			$("#loginName").val("");
			$("#password1").val("");
			$("#password2").val("");
			$("#xm").val("");
			$("#sfz").val("");
			$("#youxiang").val("");
			$("#shouji").val("");
		}else if(password == ""){
			alert("密码不能为空！请重新填入！");
			$("#loginName").val("");
			$("#password1").val("");
			$("#password2").val("");
			$("#xm").val("");
			$("#sfz").val("");
			$("#youxiang").val("");
			$("#shouji").val("");
		}else if(password2 == ""){
			alert("确认密码不能为空！请重新填入！");
			$("#loginName").val("");
			$("#password1").val("");
			$("#password2").val("");
			$("#xm").val("");
			$("#sfz").val("");
			$("#youxiang").val("");
			$("#shouji").val("");
		}else if(userName == ""){
			alert("真实姓名不能为空！请重新填入！");
			$("#loginName").val("");
			$("#password1").val("");
			$("#password2").val("");
			$("#xm").val("");
			$("#sfz").val("");
			$("#youxiang").val("");
			$("#shouji").val("");
		}else if(identityCode == ""){
			alert("身份证不能为空！请重新填入！");
			$("#loginName").val("");
			$("#password1").val("");
			$("#password2").val("");
			$("#xm").val("");
			$("#sfz").val("");
			$("#youxiang").val("");
			$("#shouji").val("");
		}else if(email == ""){
			alert("邮箱不能为空！请重新填入！");
			$("#loginName").val("");
			$("#password1").val("");
			$("#password2").val("");
			$("#xm").val("");
			$("#sfz").val("");
			$("#youxiang").val("");
			$("#shouji").val("");
		}else if(mobile == ""){
			alert("手机不能为空！请重新填入！");
			$("#loginName").val("");
			$("#password1").val("");
			$("#password2").val("");
			$("#xm").val("");
			$("#sfz").val("");
			$("#youxiang").val("");
			$("#shouji").val("");
		}else if(password!==password2){
			alert("密码不一致！请重新填入！");
			$("#loginName").val("");
			$("#password1").val("");
			$("#password2").val("");
			$("#xm").val("");
			$("#sfz").val("");
			$("#youxiang").val("");
			$("#shouji").val("");	
		}else{
				$.ajax({
					"url":basePath+"/regist",
					"type":"post",
					"data":{"loginName":loginName,"password":password,"userName":userName,"sex":sex,"identityCode":identityCode,"email":email,"mobile":mobile},
					"success":loginSuccess,
					"error":function(){
						alert("您的输入有误,请重新输入!");
					}
				});
				function loginSuccess(data) {
						alert("注册成功!");
						$("#form").submit();
				}
		}
	});
});
})(jQuery);