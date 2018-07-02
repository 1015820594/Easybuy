jQuery.noConflict();
(function ($) {
$(function() {
		$(".s_city_c tr>td>span").click(function() {
			$(".c_h .c_check").removeClass("c_check");
			$(this).addClass("c_check");
			$("#s_city_check").html($(this).html());
		});
		$(".car_t").hover(function() {
			if(loginName!=""){
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
						if(num==0){
							$(".price_a").click(function(event) {
								event.preventDefault();
								alert("购物车为空,请先选择商品");
							});
						}
					}else{
						html='<li></li>';
						$(".cars").html(html);
					}
					
				}
			}
		},function(){
			
		});
		if(loginName!=""){
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
					var html='';
					if(data!=null){
						var cost = 0;
						var num = 0;
						for (var i = 0; i < data.length; i++) {
							var buycar = data[i];
							html+='<li>';
							html+='<div class="img"><a href="#"><img src="'+basePath+"files/"+buycar.fileName+'" width="58" height="58" /></a></div><div class="name"><a href="#">'+buycar.pname+'</a></div><div class="price"><font color="#ff4e00">￥'+buycar.price+'</font> X'+buycar.quantity+'</div>'
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
		}
});
})(jQuery);