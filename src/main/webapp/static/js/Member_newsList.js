jQuery.noConflict();
(function ($) {
	$(function() {
				var $centerNewsList = $(".m_right table");
				function getPagi(pageIndex){
					var data = "";
					if(pageIndex && pageIndex>0)
						data+="pageIndex="+pageIndex;
					$.getJSON(basePath+"findPageNews",data,pagi);
				};
				getPagi();
				function pagi(datas) {
					if(datas.list==null){
						$centerNewsList.html("<tr><td>抱歉,没有找到相关资讯</td></tr>");
					}else {
						var news;
						$centerNewsList.html("<tr><td class='th_bg1' colspan='3'>文章标题</td><td class='th_bg1' colspan='3'>创建时间</td></tr>");
						for (var i = 0; i < datas.list.length;i++) {
							news = datas.list[i];
							$centerNewsList.append("<tr><td class='th_bg' colspan='3'><a  href='javascript:;' class='title' id='"+news.nid+"'>"+news.title+"</a></td><td class='th_bg' colspan='3'>"+news.createTime+"</td></tr>");
						}
					}
					var $operArea = $("<tr><td class='th_bg' colspan='6'><p align='center'> 当前页数:["+datas.pageIndex+"/"+datas.totalPages+"]&nbsp; </p></td></tr>").appendTo($centerNewsList);
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
					$(".title").click(function() {
						$.ajax({
							url:basePath+"findnews",
							type:"post",
							dataType:"html",
							data:"nid="+$(this).attr("id"),
							success:function(r){
								$(".m_right").html(r);
							},
							error:function(){
								alert("error");
							}
						});
					});
				}
	});
})(jQuery);