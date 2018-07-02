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
		var html='<tr><td class="car_th" width="490">商品名称</td><td class="car_th" width="140">单价</td><td class="car_th" width="150">购买数量</td><td class="car_th" width="130">小计</td></tr>';
		if(data!=null){
			var cost = 0;
			for (var i = 0; i < data.length; i++) {
				var buycar = data[i];
				html+='<tr>';
				html+='<td id="'+buycar.productId+'"><div class="c_s_img" ><img src="'+basePath+'static/files/'+buycar.fileName+'" width="73" height="73" /></div>'+buycar.pname+'</td>';
				html+='<td align="center" id="proprice">'+buycar.price+'</td>';
				html+='<td align="center">'+buycar.quantity+'</td>';
				html+='<td align="center" style="color:#ff4e00;" class="procost">￥'+buycar.cost+'</td>';
				html+='</tr>';
				cost += buycar.cost;
			}
			$("#car_tab").html(html);
			$("#allcost").html("￥"+cost);
			
		}
	}
	//加载地址
	$.ajax({
		url:basePath+"findAddress",
		type:"post",
		dataType:"JSON",
		data:"userId="+userId,
		success:Successone,
		error:function(){
			alert("error");
		}
	});
	function Successone(data) {
		var html='';
		if(data!=null){
			for (var i = 0; i < data.length; i++) {
				var address = data[i];
				html+='<tr>';
				html+='<td class="car_th" width="80"><input type="radio" name="ch" >'+address.remark+'</td>';
				html+='<td class="car_th" width="240">'+address.address+'</td>';
				html+='</tr>';
			}
			$("#address").html(html);
			$("input[name='ch']:eq(0)").attr("checked","true");
		}
	}
	$(".pay>li").click(function() {
		$(".pay>li").removeClass("checked");
		$(this).addClass("checked");
	});
	//提交订单
	$("#submit").click(function() {
		var userAddress = $("input[name='ch']:checked").parent().next().html();
		var cost = $("#allcost").html().substring(1);
		if(userAddress!=null){
			$.ajax({
				url:basePath+"addorder",
				type:"post",
				data:"userId="+userId+"&loginName="+loginName+"&userAddress="+userAddress+"&cost="+cost,
				success:Successone,
				error:function(){
					alert("error");
				}
			});
			function Successone(data) {
				var id = data;
				$(".procost").each( function() {
					var cost = $(this).html().substring(1);
					var quantity = $(this).prev().html();
					var productId = $(this).prev().prev().prev().attr("id");
					$.ajax({
						url:basePath+"addorderDetail",
						type:"post",
						data:"productId="+productId+"&quantity="+quantity+"&allcost="+cost+"&orderId="+id,
						error:function(){
							alert("error");
						}
					});
					
					
				});
				
				$.ajax({
					url:basePath+"delbuycar",
					type:"post",
					data:"userId="+userId,
					success:SuccessThree,
					error:function(){
						alert("error");
					}
					
				});
				function SuccessThree() {
					window.location.href=basePath+"pages/BuyCar_Three.jsp?cost="+cost;
				}
			}
		}else{
			alert("请先添加地址.");
		}
	});
	$("#add_address").click(function() {
		var remark = $(this).parent().prev().prev().children().val();
		var address = $(this).parent().prev().children().val();
		if(remark!=""&&address!=""){
			$.ajax({
				url:basePath+"addAddress",
				type:"post",
				data:"remark="+remark+"&address="+address+"&userId="+userId,
				success:Successfive,
				error:function(){
					alert("error");
				}
			});
			function Successfive() {
				$.ajax({
					url:basePath+"findAddress",
					type:"post",
					dataType:"JSON",
					data:"userId="+userId,
					success:Successone,
					error:function(){
						alert("error");
					}
				});
				function Successone(data) {
					var html='';
					if(data!=null){
						for (var i = 0; i < data.length; i++) {
							var address = data[i];
							html+='<tr>';
							html+='<td class="car_th" width="80"><input type="radio" name="ch" >'+address.remark+'</td>';
							html+='<td class="car_th" width="240">'+address.address+'</td>';
							html+='</tr>';
						}
						$("#address").html(html);
						$("input[name='ch']:eq(0)").attr("checked","true");
					}
				}
			}
		}else{
			alert("请输入备注和地址");
		}
		
		
	});
})(jQuery);