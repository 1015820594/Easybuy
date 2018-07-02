
	
jQuery.noConflict();
(function ($) {
	$(function() {
		$('#categoryLevel1').change(ch);
		$('#categoryLevel2').change(ch2);
	});	
	function ch() {
		$.post(basePath+'CategoryList2', {
			id : $('#categoryLevel1').val()
		}, function(data) {
			var html = "<option value='0'>--请选择--</option>";
			for (var i = 0; i < data.length; i++) {
					html += "<option value='" + data[i].pcid + "'>" + data[i].name + "</option>"

			}
			$('#categoryLevel2').html(html);
		}, 'json');
	}
	function ch2() {
		$.post(basePath+'CategoryList2', {
			id : $('#categoryLevel1').val()
		}, function(data) {
			var html = "<option value='0'>--请选择--</option>";	
			for (var i = 0; i < data.length; i++) {
				if (data[i].pcid == $('#categoryLevel2').val()) {
					for (var j = 0; j < data[i].list.length; j++) {
						html += "<option value='" + data[i].list[j].pcid + "'>" + data[i].list[j].name + "</option>"
					}
				}
			}
			$('#categoryLevel3').html(html);
		}, 'json');
	}
})(jQuery);