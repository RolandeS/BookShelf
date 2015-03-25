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

  $('.back').css("height", "150");

  $(".detailsLink").unbind('click').on("click", function(e){
    e.stopPropagation()

    $(this).toggleClass('flipped');

    if ($(this).hasClass("flipped")) { 
      $(this).parent().parent().children().find('.card').flip(true);
       console.log('flip');
      yolo = $(this).parent().parent().children().find('.back');
        if (yolo.text().length > 150) {
           $(this).parent().parent().children().find('.back').text(yolo.text().substr(0,150)+'...')
        }
    } else {
      $(this).parent().parent().children().find('.card').flip(false)
      console.log('unflip');
    }
  });
  
}

$(document).on('ready page:load', function(){
	
  $('.closeModalSubmit').on("click", function(){
	});
	
	carouselInit(".owl-carousel");
	flipInit(".card");

  $('.notifications p').hide();
  if ($('.notifications:has(p)')) {
    $('.notifications').click(function(){
      $('.notifications p').slideToggle();
    })
  }

  $(document).delegate( ".bookInfo", "click", function() {
    console.log('in handler;');

    var book_id = $(this).parents('.item').data('id')
    var shelf_id = $(this).parents('.singleShelf').data('id')

    $.ajax({
        url: "/books/add_last_click",
        data: {'shelf_id' : shelf_id, 'id': book_id},
        dataType: "script",
        type: 'POST'
      });

      console.log('time updated;');

    var openLink = $(this).find('.hiddenLink').text();
    var link = "http://"+ openLink
    window.open(link, '_blank');


  }); 

  $(document).foundation('reveal', {animation: 'fade'});

});