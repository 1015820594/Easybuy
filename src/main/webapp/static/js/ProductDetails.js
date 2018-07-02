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
		var html2='<li><a href="'+basePath+'index.jsp">首页</a></li>';
		$.each(data,function(i,e){
			html2+='<li><a href="'+basePath+'/Classify.jsp?id='+e.pcid+'&list=List1">'+e.name+'</a></li>';
		});
		$(".menu_r").html(html2);
	}
	//加载指定商品
	var id = $(".aaaa").attr("id");
	$desname = $(".pro_des>.des_name");
	$desprice = $(".pro_des>.des_price");
	$tsImgS = $("#tsImgS");
	$.ajax({
		url:basePath+"findproduct",
		type:"post",
		dataType:"JSON",
		data:"id="+id,
		success:Successthree,
		error:function(){
			alert("error");
		}
	});
	function Successthree(data) {
		var html = '<p>'+data.pname+'</p>';
		var html2 = '本店价格：<b>￥'+data.price+'</b><br />';
		var html3 = '<a href="'+basePath+'static/files/'+data.fileName+'" title="Images" class="MagicZoom" id="MagicZoom"><img src="'+basePath+'static/files/'+data.fileName+'" width="390" height="390" /></a>';
		$desname.html(html);
		$desprice.html(html2);
		$tsImgS.html(html3);
	}
	$(".j_car").click(function() {
		if(loginName!=""){
				var price = $(this).parent().parent().parent().children(".des_price").children("b").html().substring(1);
				var quantity = $(".n_ipt").val();
				var cost = price*quantity;
				$.ajax({
					url:basePath+"addbuycar",
					type:"post",
					dataType:"JSON",
					data:"userId="+userId+"&loginName="+loginName+"&productId="+id+"&cost="+cost+"&quantity="+quantity ,
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
})(jQuery);