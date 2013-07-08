$(document).ready(function(){
	$(".seat").on("click",function(e){
		var id = e.target.id;

		var options = {
			url: '/tickets/' + $('#' + id).data('ticket') + '.json',
			method: 'PUT',

			contentType: 'application/json',
			dataType: 'json',

			data: JSON.stringify(
			{
				ticket:{
					user_id: $('#seat_chart').data('user')
				}
			}),

			success: function () {
				$('#' + id).removeClass('seat-available');
				$('#' + id).addClass('seat-sold');
			},
			error: function () {
				alert('Could not book it.');
			}
		};

		$.ajax(options);

	});
});