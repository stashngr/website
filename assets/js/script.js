$(document).ready(function(){
	$('.blog-archives').on('click', 'a', function(e){
		e.preventDefault();
		let postId = $(this).attr('data-post-id');
		$("#dynamic-post-wrapper").load('/blog-posts/post-' + postId + '.html');
		// alert("Displaying post number " + $(this).attr('data-post-id'));
	});
});