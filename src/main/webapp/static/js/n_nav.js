jQuery.noConflict();
(function ($) {
	$(".nav").hover(function(){						   
		$(this).find(".leftNav").show();
	},function(){
		$(this).find(".leftNav").hide();
	});
})(jQuery);


