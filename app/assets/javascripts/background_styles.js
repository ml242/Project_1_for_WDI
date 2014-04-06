$(function(){

	$('section').each(function(i,el) {
		console.log(el);
		el.style.height = $(window).height() + 'px';
	});

});