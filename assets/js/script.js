$(document).ready(function(){
	$('.blog-archives').on('click', 'a', function(e){
		e.preventDefault();
		alert("Displaying post number " + $(this).attr('data-post-id'));
	});
});