function carouselInit(selector) {
	elems = $(selector)

	elems.owlCarousel({
		items : 2,
		navigation : true, 
		navigationText : ["<",">"],
		pagination : false,
		scrollPerPage : false,
		slideSpeed : 300,
	});
}

function flipInit(selector){
	$(selector).flip({
    trigger: 'manual'
  });

  $(".detailsLink").click(function(){
  	$(this).parent().find(".card").flip(true);
  });
  
  $(".bookclose").click(function(){
  	$(this).parents(".card").flip(false)
  });
}

$(document).on('ready page:load', function(){
	$('.closeModalSubmit').on("click", function(){
	});
	
	carouselInit(".owl-carousel");
	flipInit(".card");

});