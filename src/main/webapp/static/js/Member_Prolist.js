jQuery.noConflict();
(function ($) {
	$(function() {
				var $centerProList = $(".m_right table");
				function getPagi(pageIndex){
					var data = "";
					if(pageIndex && pageIndex>0)
						data+="pageIndex="+pageIndex;
					$.getJSON(basePath+"findPageProduct",data,pagi);
				};
				getPagi();
				function pagi(datas) {
					if(datas.list==null){
						$centerProList.html("<tr><td>抱歉,没有找到相关商品</td></tr>");
					}else {
						var pro;
						$centerProList.html('<tr><td class="th_bg1"  >商品名称</td><td class="th_bg1"  >商品图片</td><td class="th_bg1"  >库存</td><td class="th_bg1"  >价格</td><td class="th_bg1"  colspan="2">操作</td></tr>');
						for (var i = 0; i < datas.list.length;i++) {
							pro = datas.list[i];
							$centerProList.append("<tr><td class='th_bg'>"+pro.pname+"</td><td class='th_bg'><img width='50' height='50' src='"+basePath+"static/files/"+pro.fileName+"'></td><td class='th_bg'>"+pro.stock+"</td><td class='th_bg'>"+pro.price+"</td><td class='th_bg'><a  href='"+basePath+"pages/Member_ProUp.jsp?pid="+pro.pid+"' id='"+pro.pid+"'>修改</a></td><td class='th_bg'><a  href='javascript:;' class='del'>删除</a></tr>");
						}
					}
					var $operArea = $("<tr><td class='th_bg' colspan='6'><p align='center'> 当前页数:["+datas.pageIndex+"/"+datas.totalPages+"]&nbsp; </p></td></tr>").appendTo($centerProList);
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
					
					$(".del").click(function() {
						var f = window.confirm('确定要删除吗？');
						var pid = $(this).parent().prev().children().attr("id");
						alert(pid);
						if(f){
							$.ajax({
								url:basePath+"delpro",
								type:"post",
								data:"pid="+pid,
								success:function(r){
									alert(r);
									location.href=basePath+"pages/Member_Prolist.jsp";
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