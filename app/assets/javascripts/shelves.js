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


  $(document).delegate( ".bookInfo", "click", function() {
    console.log('in handler;');

    var shelf_id = 123;
    var book_id = 89;

    var last_clicked = new Date().getTime();
    $.ajax({
        // url: "/shelves/:shelf_id/books/:id",
        // url: "/shelves/123/books/89",
        url: "/books/update",
        data: {'last_clicked': last_clicked, 'shelf_id' : shelf_id, 'id': book_id},
        dataType: "script",
        type: 'PATCH'
      }).done(function(){
        console.log('posted')
      })


    var openLink = $(this).find('.hiddenLink').text();
    var link = "http://"+ openLink
    window.open(link, '_blank');


  }); 

  $(document).foundation('reveal', {animation: 'fade'});

});