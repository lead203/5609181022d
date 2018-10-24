$(document).ready(function(){
	$('select[name=city').bind("change", function() {
		$("select[name='area']").empty();
		$.get("check.php",{ city: $('select[name=city').val()}, function(data) {
			data=JSON.parse(data);
			for(var id in data) {
				$('select[name=area').append(("<option value = '"+ id +"'>"+data[id] +"</option>"));
			}
		});
	});
});