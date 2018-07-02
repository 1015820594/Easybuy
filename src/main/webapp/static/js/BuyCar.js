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
		var html2='<li><a href="'+basePath+'pages/index.jsp">首页</a></li>';
		$.each(data,function(i,e){
			html2+='<li><a href="'+basePath+'/Classify.jsp?id='+e.pcid+'&list=List1">'+e.name+'</a></li>';
		});
		$(".menu_r").html(html2);
	}
	//加载购物车
	$.ajax({
		url:basePath+"findbuycar",
		type:"post",
		dataType:"JSON",
		data:"userId="+userId+"&loginName="+loginName,
		success:Successtwo,
		error:function(){
			alert("error");
		}
	});
	function Successtwo(data) {
		var html='<tr><td class="car_th" width="490">商品名称</td><td class="car_th" width="140">单价</td><td class="car_th" width="150">购买数量</td><td class="car_th" width="130">小计</td><td class="car_th" width="150">操作</td></tr>';
		if(data!=null){
			var cost = 0;
			var num = 0;
			for (var i = 0; i < data.length; i++) {
				var buycar = data[i];
				html+='<tr>';
				html+='<td><div class="c_s_img"><img src="'+basePath+'static/files/'+buycar.fileName+'" width="73" height="73" /></div>'+buycar.pname+'</td>';
				html+='<td align="center" id="proprice">'+buycar.price+'</td>';
				html+='<td align="center"><div class="c_num"><input type="button" value=""  class="car_btn_1" /><input type="text" value="'+buycar.quantity+'" name="" class="car_ipt" /><input type="button" value=""  class="car_btn_2" /></div></td>';
				html+='<td align="center" style="color:#ff4e00;" class="procost">￥'+buycar.cost+'</td>';
				html+='<td align="center"><a class="delpro" id="'+buycar.productId+'">删除</a>&nbsp; &nbsp;<a href="#">加入收藏</a></td>';
				html+='</tr>';
				cost += buycar.cost;
			}
			$(".car_tab").html(html);
			allcost();
			$(".car_btn_2").click(function() {
				var productId = $(this).parent().parent().next().next().children(".delpro").attr("id");
				var c = $(this).prev().val();
				$(this).prev().val(c-0+1); 
				var price = $(this).parent().parent().prev().html();
				var quantity = $(this).prev().val();
				$(this).parent().parent().next().html("￥"+price*quantity+"");
				allcost();
				add(productId,price);
			});
			$(".car_btn_1").click(function() {				
				var productId = $(this).parent().parent().next().next().children(".delpro").attr("id");
				var c = $(this).next().val();
				if(c==1){    
					$(this).next().val(1);    
				}else{    
					$(this).next().val(c-1);
					var price = $(this).parent().parent().prev().html();
					var quantity = $(this).next().val();
					$(this).parent().parent().next().html("￥"+price*quantity+"");
					allcost();
					minus(productId,price);
				}
			});
			$(".delpro").click(function() {
				var cost = $(this).parent().prev().html();
				var productId = $(this).attr("id");
				$("#MyDiv").css("display","block");
				$("#fade").css("display","block");
				$("#delall").html(cost);
				$(".b_sure").click(function() {
					del(productId);
					$("#"+productId+"").parent().parent().remove();
					allcost();
				})
				$(".b_buy").click(function() {
					$("#MyDiv").css("display","none");
					$("#fade").css("display","none");
				})
			});
			
			function add(productId,price) {
				$.ajax({
					url:basePath+"add",
					type:"post",
					data:"userId="+userId+"&loginName="+loginName+"&productId="+productId+"&cost="+price,
					success:SuccessUp,
					error:function(){
						alert("error");
					}
				});
			}
			function minus(productId,price) {
				$.ajax({
					url:basePath+"minus",
					type:"post",
					data:"userId="+userId+"&loginName="+loginName+"&productId="+productId+"&cost="+price,
					success:SuccessUp,
					error:function(){
						alert("error");
					}
				});
			}
			function del(productId) {
				$.ajax({
					url:basePath+"del",
					type:"post",
					data:"userId="+userId+"&loginName="+loginName+"&productId="+productId,
					success:SuccessUp,
					error:function(){
						alert("error");
					}
				});
				$.ajax({
					url:basePath+"findbuycar",
					type:"post",
					dataType:"JSON",
					data:"userId="+userId+"&loginName="+loginName,
					success:SuccessSX,
					error:function(){
						alert("error");
					}
				});
				function SuccessSX(data) {
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
						if(num==0){
							$(".price_a").click(function(event) {
								event.preventDefault();
								alert("购物车为空,请先选择商品");
							});
						}
					}
				}
			}
			
			function allcost() {
				var allcost = 0;
				$(".procost").each(function (i) {
					allcost+=($(this).html().substring(1)-0);
				});
				$("#allcost").html("￥"+allcost+"");
				if(allcost==0){
					$("#gwjs").click(function(event) {
						event.preventDefault();
						alert("购物车为空,请先选择商品");
					});
				}
			}
			function SuccessUp(data) {
				$("#MyDiv").css("display","none");
				$("#fade").css("display","none");
			}
		}
	}
})(jQuery);