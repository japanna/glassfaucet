/*-----------------------------------------------------------
Hides the filter menu options on "signup" page.
Marks active nav
-------------------------------------------------------------*/
$(document).ready(function(){
	$('#filter_list').hide();
	$('.back_to_gallery').hide();
	$('#nav_right').children().eq(4).addClass('active');
});
