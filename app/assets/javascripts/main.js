/*-----------------------------------------------------------
Start site images fade in /fade out
-------------------------------------------------------------*/



/*-----------------------------------------------------------
Show favorite link img on mouseover
-------------------------------------------------------------*/

$('.img_inner').mouseover(function(){
	$(this).children().eq(1).children().show();
});

/*-----------------------------------------------------------
Hide favorite link img on mouseout
-------------------------------------------------------------*/

$('.img_inner').mouseout(function(){
	$(this).children().eq(1).children().hide();
});

/*-----------------------------------------------------------
Toggle filter menu options show/hide
-------------------------------------------------------------*/

$('.category').click(function(){
	$(this).next().children().css("color", "#000");
	$(this).next().children().css("pointer-events", "auto");
	$(this).next().children().slideToggle();

});

/*-----------------------------------------------------------
Filter function product
-------------------------------------------------------------*/

$('.options li').click(function(){
	//$('figure').show();
	// get the class for the clicked element
	var filter_class = $(this).attr("class");
	// for each item in the gallery
	$('figure').each(function(){
		// if the item is not of the class clicked
		if(!$(this).hasClass(filter_class)) {
			// hide the item
			$(this).hide();
		}
	});
	// show clear filter link
	$('.options li').children().hide();
	$(this).children().show();
	$(this).siblings().css("pointer-events", "none");
	$(this).siblings().css("color", "#ddd");
	//$(this).parent().children().slideToggle();
	num_remove();
});

/*-----------------------------------------------------------
Reset filter
-------------------------------------------------------------*/
$('.clear_filter').click(function(){
	reset();
	return false;
});

/*-----------------------------------------------------------
Reset function
-------------------------------------------------------------*/

function reset(){
	$('figure').show();
	// hide all other filter options
	$('.options').children().hide();
	// hide clear link
	$('.no_of_items').text("Showing all items");
	$('.clear_filter').hide();

};

/*-----------------------------------------------------------
Remove "no of items" function
-------------------------------------------------------------*/

function num_remove() {
	var x = $('figure:visible').get();
	var y = x.length;
	if(y == 1){
		$('.no_of_items').text( y + " filtered result");
	}
	else {
	$('.no_of_items').text( y + " filtered results");
	}
};

$('#contact_btn').click(function(){
	alert("Your email will be sent. Thank you for your interest.")
});

