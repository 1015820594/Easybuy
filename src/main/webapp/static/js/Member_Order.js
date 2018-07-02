jQuery.noConflict();
(function ($) {
	$(function() {
		$.ajax({
			url:basePath+"findorder",
			type:"post",
			data:"userId="+userId,
			dataType:"JSON",
			success:Successone,
			error:function(){
				alert("error");
			}
		});
		function Successone(data) {
			if(data!=null){
				var html ='<p></p><div class="mem_tit">我的订单</div>';
				for (var i = 0; i < data.length; i++) {
					var order = data[i];
					html +='<table id="'+order.oid+'" border="1" class="mem_tab" style="width:930px; text-align:center; margin-top:20px;" cellspacing="0" cellpadding="0"><tbody><tr><td class="th_bg1" >用户名:'+userName+'</td><td class="th_bg1" >订单号:'+order.serialNumber+'</td><td class="th_bg1" >地址:'+order.userAddress+'</td> <td class="th_bg1" > ￥'+order.cost+'</td></tr>';
					html +=' <tr><td width="25%">商品名称</td><td width="25%">商品图片</td><td width="25%">数量</td><td width="25%">价格</td></tr>';
					html+='</tbody></table>';
					$(".m_right").html(html);
					$.ajax({
						url:basePath+"findorderDetail",
						type:"post",
						dataType:"JSON",
						data:"orderId="+order.oid,
						success:Success,
						error:function(){
							alert("error");
						}
					});
					function Success(data) {
						for (var j = 0; j < data.length; j++) {
							var orderDetail = data[j];
							$("#"+orderDetail.orderId+" tbody").append('<tr><td><font>'+orderDetail.product.pname+'</font></td><td><img width="50" height="50" src="'+basePath+'static/files/'+orderDetail.product.fileName+'"></td><td>'+orderDetail.quantity+'</td><td>'+orderDetail.allcost+'</td></tr>');
						}
					}
					
				}
			}else{
				$(".m_right>table").html("无相关订单信息");
			}
		}
	});
})(jQuery);