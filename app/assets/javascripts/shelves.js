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



	// $('.openAll').on("click", function(){

	// 	var shelfId;

	// 	$(this).map(function(index) {
 //    	shelfId = this.id; });
		
	// 	shelfId = shelfId.substring(15,17);

	// 	var query =  '#book-list-'+shelfId+' .url';

	// 	var i = 0;
	// 	var links = $(query).children().map(function(){
	// 		return this;

	// 		// console.log("this is: " +this);
	// 		// window.open(link, '_blank');
	// 		// window.open('#','_blank');window.open(this.href,'_self');
	// 	})

	// 	for(i=0; i<links.length; i++){
	// 		// window.open(links[i].href, '_blank');
	// 		// console.log(links[i].href);
	// 	}
	// })


	// $('.saveShelf').on("click", function(){
	// 	var shelves = $('h4');
	// 	console.log("shelves is "+shelves)
	// 	for (i = 0; i<shelves.length; i++){
	// 		if ($('this').val() == shelves[i].html())
	// 			alert("already used");
	// 	}


		// var alertText = $('.temp_msg').data('msg');
		// console.log(alertText);
	 //    if(alertText.length > 0){
	 //      alert(alertText);
	 // 	 };
	// });
// 


	
});

