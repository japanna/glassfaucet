/*-----------------------------------------------------------
Hides the filter menu options on "about" page.
Marks active nav
-------------------------------------------------------------*/
$(document).ready(function(){
	$('#filter_list').hide();
	$('.back_to_gallery').hide();
	$('#nav_right').children().eq(1).addClass('active');
});
