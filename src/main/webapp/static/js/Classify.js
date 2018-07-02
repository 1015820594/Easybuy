jQuery.noConflict();
(function ($) {
	//	加载主题页面
	$leftNav = $(".leftNav>ul");
	$.ajax({
		url:basePath+"CategoryList1",
		type:"post",
		dataType:"JSON",
		success:Success,
		error:function(){
			alert("error");
		}
	});
	function Success(data) {
		var html2='<li><a href="index.jsp">首页</a></li>';
		$.each(data,function(i,e){
			html2+='<li><a href="'+basePath+'/Classify.jsp?id='+e.pcid+'&list=List1">'+e.name+'</a></li>';
		});
		$(".menu_r").html(html2);
	}
		$plist = $(".list_c>.cate_list>ul>li ");
		//查询件数
		$.ajax({
			url:basePath+"count1",
			type:"post",
			data:"id="+id,
			success:Successtwo,
			error:function(){
				alert("error");
			}
		});
		function Successtwo(data) {
			$(".list_t>span").html("共发现"+data+"件");
		}
		//加载?级分类下所有商品
		$cateList = $(".list_c>.cate_list");
		$.ajax({
			url:basePath+list,
			type:"post",
			dataType:"JSON",
			data:"id="+id+"&pageSize=4",
			success:Successthree,
			error:function(){
				alert("error");
			}
		});
		function Successthree(data) {
			var html = "";
			var list = data.list;
			for (var i = 0; i < list.length; i++) {
				product = list[i];
				html+="<li><div class='img'><a href='"+basePath+"ProductDetails.jsp?id="+product.pid+"'><img src='static/files/"+product.fileName+"' width='210' height='185' /></a></div>";
				html+="<div class='price'><font>￥<span>"+product.price+"</span></font></div>";
				html+="<div class='name'><a href='#'>"+product.pname+"</a></div>";
				html+="<div class='carbg'><a href='#' class='ss'>收藏</a><a href='javascript:;' id="+product.pid+" class='j_car'>加入购物车</a></div>";
				html+="</li>";
			}
			$cateList.html(html);
			$(".j_car").click(function() {
				if(loginName!=""){
						var price = $(this).parent().prev().prev().children().children("span").html();
						var productId = $(this).attr("id");
						$.ajax({
							url:basePath+"addbuycar",
							type:"post",
							dataType:"JSON",
							data:"userId="+userId+"&loginName="+loginName+"&productId="+productId+"&cost="+price+"&quantity=1" ,
							success:Successfour,
							error:function(){
								alert("error");
							}
						});
						function Successfour(data) {
							$.ajax({
								url:basePath+"findbuycar",
								type:"post",
								dataType:"JSON",
								data:"userId="+userId+"&loginName="+loginName,
								success:Success,
								error:function(){
									alert("error");
								}
							});
							function Success(data) {
								var html='';
								if(data!=null){
									var cost = 0;
									var num = 0;
									for (var i = 0; i < data.length; i++) {
										var buycar = data[i];
										html+='<li>';
										html+='<div class="img"><a href="#"><img src="'+basePath+"static/files/"+buycar.fileName+'" width="58" height="58" /></a></div><div class="name"><a href="#">'+buycar.pname+'</a></div><div class="price"><font color="#ff4e00">￥'+buycar.price+'</font> X'+buycar.quantity+'</div>'
				                    	html+='</li>';
										cost = cost+buycar.cost;
										num++;
									}
									$(".cars").html(html);
									$(".price_sum>span").html(cost);
									$(".car_t").html("购物车 [ <span>"+num+"</span> ]");
								}else{
									html='<li></li>';
									$(".cars").html(html);
								}
								
							}
							alert("添加成功");
						}
						
				}else{
					alert("您好,请先登录");
					window.location.href=basePath+'Login.jsp';
				}
			});
			var pageIndex = data.pageIndex;
			var totalPages = data.totalPages;
			var html2 = '<a href="javascript:;" id="1" class="p_pre">首页</a>';
			if(pageIndex>1){
				html2+='<a href="javascript:;" id="'+(pageIndex-1)+'" class="p_pre">上一页</a>';
			}
			for (var j = 0; j < totalPages; j++) {
				html2+='<a href="javascript:;" id="'+(j+1)+'" >'+(j+1)+'</a>';
			}
			if(pageIndex<totalPages){
				html2+='<a href="javascript:;" id="'+(pageIndex+1)+'" class="p_pre">下一页</a>';
			}
			html2+='<a href="javascript:;" id="'+totalPages+'" class="p_pre">尾页</a>';
			$(".pages").html(html2);
			$(".pages>a").click(function() {
				$cateList = $(".list_c>.cate_list");
				var pageIndex = $(this).attr("id");
				$.ajax({
					url:basePath+"List1",
					type:"post",
					dataType:"JSON",
					data:"id="+id+"&pageIndex="+pageIndex+"&pageSize=4",
					success:Successthree,
					error:function(){
						alert("error");
					}
				});
			});
			
		}
})(jQuery);