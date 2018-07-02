jQuery.noConflict();
(function ($) {
	$(function() {
				var $centerClassifyList = $(".m_right table");
				function getPagi(pageIndex){
					var data = "";
					if(pageIndex && pageIndex>0)
						data+="pageIndex="+pageIndex;
					$.getJSON(basePath+"pcpage",data,pagi);
				};
				getPagi();
				function pagi(datas) {
					if(datas.list==null){
						$centerClassifyList.html("<tr><td>抱歉,没有找到相关商品</td></tr>");
					}else {
						var Classify;
						$centerClassifyList.html('<tr><td class="th_bg1"  >选择</td><td class="th_bg1"  >分类级别</td><td class="th_bg1"  >分类名称</td><td class="th_bg1"  >父级分类</td><td class="th_bg1">操作</td></tr>');
						for (var i = 0; i < datas.list.length;i++) {
							Classify = datas.list[i];
							var type = "";
							var parentType="";
							if (Classify.type==1) {
								type = "一级分类";
							}else if (Classify.type==2) {
								type = "二级分类";
							}else if (Classify.type==3) {
								type = "三级分类";
							}
							if(Classify.productCategory.name==null){
								parentType="无";
							}else{
								parentType=Classify.productCategory.name;
							}
							$centerClassifyList.append("<tr><td class='th_bg'><input type='checkbox'></td><td class='th_bg'>"+Classify.name+"</td><td class='th_bg'>"+type+"</td><td class='th_bg'>"+parentType+"</td><td class='th_bg'><a  href='javascript:;' class='del' id='"+Classify.pcid+"'>删除</a></tr>");
						}
					}
					var $operArea = $("<tr><td class='th_bg' colspan='6'><p align='center'> 当前页数:["+datas.pageIndex+"/"+datas.totalPages+"]&nbsp; </p></td></tr>").appendTo($centerClassifyList);
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
						var pcid = $(this).attr("id");
						if(f){
							$.ajax({
								url:basePath+"delClassify",
								type:"post",
								data:"pcid="+pcid,
								success:function(r){
									alert(r);
									location.href=basePath+"Member_Classify.jsp";
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