$(function(){

	$('section').each(function(i,el) {
		// console.log(el);
		el.style.height = $(window).height() + 'px';
	});




	var gmapResize = function() {
		$('#gmap')[0].style.width = $('.container').width() + 'px';
		$('#gmap')[0].style.height = $('.container').width() * .70 + 'px';
	};

	gmapResize();

});

