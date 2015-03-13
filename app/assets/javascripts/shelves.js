function carouselInit(selector) {
	elems = $(selector)

	elems.owlCarousel({
		items : 4,
		navigation : true, 
		navigationText : ["<",">"],
		pagination : false,
		scrollPerPage : false,
		slideSpeed : 300,
	});
}

$(document).on('ready page:load', function(){
	$('.closeModalSubmit').on("click", function(){
		});
	carouselInit(".owl-carousel")

});