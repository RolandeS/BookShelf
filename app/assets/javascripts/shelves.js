$(document).on('ready page:load', function(){
	$('.closeModalSubmit').on("click", function(){
		$('.reveal-modal-bg .field').children().val("");
		$('.reveal-modal-bg').foundation('reveal', 'close');
	})

});