$( document ).ready(function() {
    //console.log( "ready!" );
    var chosenBookshelves = [];

    $( ".shelfStart" ).on( "click", function( event ) {
    	//chosenBookshelves.push(event.target.id);

    	$(this).toggleClass('selected');
    	//console.log(selected())
    	// $('#shelf_ids').val(selected());
 

	});

	function selected(){
		var i;
		var new_ids = [];
		var ids = $('.selected').map(function(index) {
    	return this.id; });

    	for (i=0; i<ids.length; i++){
    		new_ids[i] =parseInt(ids[i]);
    	}
		return new_ids;
	}

	 $('#userShelves').click(function(){
	 	var shelf_ids = selected();
    if(selected().length>0){
		  $.ajax({
		    url: "/shelves/add_demo_shelves",
		    data: {'shelf_ids': selected()},
		    dataType: "script",
		    type: 'POST'
		  }).done(function(){
		  	window.location = "/mybookshelf";
		  });
    } else {
      window.location = "/shelves";
    }


		});
});