jQuery.noConflict();
(function ($) {
	$.ajax({
		url:basePath+"findUser",
		type:"post",
		data:"uid="+uid,
		dataType:"JSON",
		success:function(r){
			var html="";
			html+='<tr><td>登录名</td><td><input type="text" name="loginName" value="'+r.loginName+'" id="loginName"></td></tr><tr>'
       		html+='<td>用户名</td><td><input type="text" name="userName" value="'+r.userName+'" id="userName"></td></tr>'
       		html+='<tr><td>密码</td><td><input type="text" name="password" id="password"></td></tr>'
       		html+='<tr><td>性别</td><td><select name="sex" id="sex"><option value="-1">选择</option><option value="1">男</option><option value="0">女</option></select></td></tr>'
       		html+='<tr><td>身份证号</td><td><input name="identityCode" type="text" value="'+r.identityCode+'" id="identityCode"/></td></tr>'
       		html+='<tr><td>邮箱</td><td><input name="email" type="text" value="'+r.email+'" id="email"/></td></tr>'
       		html+='<tr><td>手机</td><td><input type="text" name="mobile" value="'+r.mobile+'" id="mobile"></td></tr>'
       		html+='<tr><td><input type="button" value="取消"></td><td><input type="button" value="提交" id="tj" ></td></tr>'	
       		$("#table").html(html);
			$("#tj").click(function() {
				var loginName = $("#loginName").val();
				var password = $("#password").val();
				var userName = $("#userName").val();
				var sex = $("#sex").val();
				var identityCode = $("#identityCode").val();
				var email = $("#email").val();
				var mobile = $("#mobile").val();
				$.ajax({
					url:basePath+"upUser",
					type:"post",
					data:{"uid":uid,"loginName":loginName,"password":password,"userName":userName,"sex":sex,"identityCode":identityCode,"email":email,"mobile":mobile},
					success:Success,
					error:function(){
						alert("error");
					}
				});
				function Success(data) {
					alert(data);
					if(data=="修改成功"){
						window.location.href=basePath+"pages/Member_Userlist.jsp";
					}
				}
			});
		},
		error:function(){
			alert("error");
		}
	});
	
})(jQuery);