/*-----------------------------------------------------------
Hides the filter menu options on "login" page.
Marks active nav
-------------------------------------------------------------*/
$(document).ready(function(){
	$('#filter_list').hide();
	$('.back_to_gallery').hide();
	$('#nav_right').children().eq(3).addClass('active');
});
