jQuery.noConflict();
(function ($) {
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
			var html = "";
			var html2='<li><a href="'+basePath+'pages/index.jsp">首页</a></li>';
			$.each(data,function(i,e){
				html+='<li><div class="fj" id="'+e.pcid+'"><span class="n_img"><span></span><img src="'+basePath+'static/'+e.iconClass+'" /></span><span class="fl">'+e.name+'</span></div><div class="zj"><div class="zj_l"></div></div></li>';
				html2+='<li><a href="'+basePath+'Classify.jsp?id='+e.pcid+'&list=List1">'+e.name+'</a></li>';
			});
			$leftNav.html(html);
			$(".menu_r").html(html2);
			$(".leftNav ul li").hover(	
					function(){
						var $this = $(this);
						var id = $this.find('div:first').attr("id");
						$.ajax({
							url:basePath+"CategoryList2",
							type:"post",
							dataType:"JSON",
							data:"id="+id,
							error:function(){
								alert("error");
							},
							success:function(result){
								var html = "";
								$.each(result,function(i,e){
									html+='<div class="zj_l_c"><a href="'+basePath+'Classify.jsp?id='+e.pcid+'&list=List2"><h2>'+e.name+'</h2></a>';
									$.each(e.list,function(i,o){
										html+='<a href="'+basePath+'Classify.jsp?id='+o.pcid+'&list=List3">'+o.name+'</a>|';
									});
									html+='</div>';
								});					
								$this.find('.zj_l').html(html);
							}
						});
						
						$(this).find(".fj").addClass("nuw");
						$(this).find(".zj").show();
					},
					function(){
						$(this).find(".fj").removeClass("nuw");
						$(this).find(".zj").hide();
			});
		}
		
})(jQuery);