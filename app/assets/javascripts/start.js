$( document ).ready(function() {
    //console.log( "ready!" );
    var chosenBookshelves = [];

    $( ".getstarted" ).on( "click", function( event ) {
    	$(this).toggleClass('selected');
      if ($(this).hasClass('selected')) {
        $(this).siblings().hide()
        $(this).css("border-top", "none")
      } else {
        $(this).siblings().show()
        $(this).css("border-top", "solid 2px #999988")
      }
	});


	function selected(){
		var i;
		var new_ids = [];
		var ids = $('.selected').parent().map(function(index) {
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