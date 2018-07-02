jQuery.noConflict();
(function ($) {
	$(function() {
				var $centerUserList = $(".m_right table");
				function getPagi(pageIndex){
					var data = "";
					if(pageIndex && pageIndex>0)
						data+="pageIndex="+pageIndex;
					$.getJSON(basePath+"findPageUser",data,pagi);
				};
				getPagi();
				function pagi(datas) {
					if(datas.list==null){
						$centerUserList.html("<tr><td>抱歉,没有找到相关用户</td></tr>");
					}else {
						var user;
						$centerUserList.html('<tr><td class="th_bg1"  >用户名称</td><td class="th_bg1"  >真实姓名</td><td class="th_bg1"  >性别</td><td class="th_bg1"  >类型</td><td class="th_bg1"  colspan="2">操作</td></tr>');
						for (var i = 0; i < datas.list.length;i++) {
							user = datas.list[i];
							var sex ="";
							var type ="";
							if(user.sex==1)
								sex="男";
							else
								sex="女";
							if(user.type==0){
								type = "用户";
								$centerUserList.append("<tr><td class='th_bg'>"+user.userName+"</td><td class='th_bg'>"+user.loginName+"</td><td class='th_bg'>"+sex+"</td><td class='th_bg'>"+type+"</td><td class='th_bg'><a  href='"+basePath+"pages/Member_UserUp.jsp?uid="+user.uid+"'>修改</a></td><td class='th_bg'><a  href='javascript:;' class='del'>删除</a></tr>");
							}else{
								type = "管理员";
								$centerUserList.append("<tr><td class='th_bg'>"+user.userName+"</td><td class='th_bg'>"+user.loginName+"</td><td class='th_bg'>"+sex+"</td><td class='th_bg'>"+type+"</td><td class='th_bg'><a  href='"+basePath+"pages/Member_UserUp.jsp?uid="+user.uid+"'>修改</a></td><td class='th_bg'> </tr>");
							}
						}
					}
					var $operArea = $("<tr><td class='th_bg' colspan='6'><p align='center'> 当前页数:["+datas.pageIndex+"/"+datas.totalPages+"]&nbsp; </p></td></tr>").appendTo($centerUserList);
					if (datas.pageIndex>1) {
						var $first = $("<a href='javascript:;'>首页</a> ").click(function () {
							getPagi(1);
						});
						var $prev= $("<a href='javascript:;'>上一页</a>").click(function () {
							getPagi(datas.pageIndex-1);
						});
						$(".th_bg p").append($first).append($prev);
					}
					
					for (var int=1 ; int <=datas.totalPages; int++) {
						var $choose = $("<a href='javascript:;' id='"+int+"'>"+int+"</a> ").click(function () {
							getPagi($(this).attr("id"));
						});
						$(".th_bg p").append($choose);
					}
					if (datas.pageIndex<datas.totalPages) {
						var $next = $("<a href='javascript:;'>下一页</a> ").click(function () {
							getPagi(datas.pageIndex+1);
						});
						var $last= $("<a href='javascript:;'>末页</a> ").click(function () {
							getPagi(datas.totalPages);
						});
						$(".th_bg p").append($next).append($last);
					}
					$('.del').click(function(){
						var f = window.confirm('确定要删除吗？');
						var uid = $(this).parent().prev().children().attr("id");
						if(f){
							$.ajax({
								url:basePath+"delUser",
								type:"post",
								data:"uid="+uid,
								success:function(r){
									alert(r);
									location.href="Member_UserList.jsp";
								},
								error:function(){
									alert("error");
								}
							});
						}
					});
				}
				
	});
})(jQuery);