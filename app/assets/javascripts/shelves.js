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

  $(".detailsLink").on("click", function(e){
    $(this).toggleClass('flipped');
    if ($(this).hasClass("flipped")) {
      $(this).parent().parent().children().find('.card').flip(true);
      yolo = $(this).parent().parent().children().find('.back');
        if (yolo.text().length > 150) {
           $(this).parent().parent().children().find('.back').text(yolo.text().substr(0,150)+'...')
        }
    } else {
      $(this).parent().parent().parent().find('.card').flip(false);
    }
  });
  
}

$(document).on('ready page:load', function(){
	$('.closeModalSubmit').on("click", function(){
	});
	
	carouselInit(".owl-carousel");
	flipInit(".card");
  $(document).delegate( ".bookInfo", "click", function() {
    var openLink = $(this).find('.hiddenLink').text();
    var link = "http://"+ openLink
    console.log(link);
    window.open(link, '_blank');
  }); 

  $(document).foundation('reveal', {animation: 'fade'});

});