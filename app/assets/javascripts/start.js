$( document ).ready(function() {
    console.log( "ready!" );
    var chosenBookshelves = [];

    $( ".shelfStart" ).on( "click", function( event ) {
    	//chosenBookshelves.push(event.target.id);

    	$(this).toggleClass('selected');
    	// console.log(chosenBookshelves);
    	
    	console.log(selected_shelves())
	});

	function selected_shelves() {
		return $(".shelfStart.selected").map( 
			function(i, shelftag) { 
				return shelftag["id"] 
			}
		)
	}

	 $('#userShelves').click(function(){
		$.post("/shelves/add_demo_shelves", {shelf_ids: selected_shelves()}, function() {
			location = "/shelves"
		})
	 });

});