jQuery.noConflict();
(function ($) {
	$(function() {
		$('#categoryLevel1').change(ch);
		$('#categoryLevel2').change(ch2);
	});	
	function ch() {
		$.ajax({
			url:basePath+'CategoryList2',
			type:"post",
			data:{id : $('#categoryLevel1').val()},
			dataType:"JSON",
			async:false,
			success:function(data) {
			var html = "<option value='0'>--请选择--</option>";
				for (var i = 0; i < data.length; i++) {
						html += "<option value='" + data[i].pcid + "'>" + data[i].name + "</option>"
	
				}
				$('#categoryLevel2').html(html);
			}
		});
	}
	function ch2() {
		$.ajax({
			url:basePath+'CategoryList2',
			type:"post",
			data:{id : $('#categoryLevel1').val()},
			dataType:"JSON",
			async:false,
		    success:function(data) {
			var html = "<option value='0'>--请选择--</option>";
				for (var i = 0; i < data.length; i++) {
					if (data[i].pcid == $('#categoryLevel2').val()) {
						for (var j = 0; j < data[i].list.length; j++) {
							html += "<option value='" + data[i].list[j].pcid + "'>" + data[i].list[j].name + "</option>"
						}
					}
				}
				$('#categoryLevel3').html(html);
		    }
		});
	}

	$.ajax({
		url:basePath+"getProduct",
		type:"post",
		data:"id="+pid,
		dataType:"JSON",
		success:function(r){
			$("#categoryLevel1>option[value='"+r.categoryLevel1Id +"']").attr("selected","selected");
			ch();
			$("#categoryLevel2>option[value='"+r.categoryLevel2Id +"']").attr("selected","selected");
			ch2();
			$("#categoryLevel3>option[value='"+r.categoryLevel3Id +"']").attr("selected","selected");
			$("#panme").val(r.pname);
			$("#description").val(r.description);
			$('#price').val(r.price);
			$('#stock').val(r.stock);
			$('#isDelete').val(r.isDelete);
		},
		error:function(){
			alert("error");
		}
	});
})(jQuery);