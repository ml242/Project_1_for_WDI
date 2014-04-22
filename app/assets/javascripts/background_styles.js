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


	// gmaps4rails code
	// handler = Gmaps.build('Google');
	// handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
	// 	markers = handler.addMarkers([
	// 	{
	// 		"lat": 0,
	// 		"lng": 0,
	// 		"picture": {
	// 			"url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
	// 			"width":  36,
	// 			"height": 36
	// 		},
	// 		"infowindow": "hello!"
	// 	}
	// 	]);
	// 	handler.bounds.extendWith(markers);
	// 	handler.fitMapToBounds();
	// });

	//  more gmaps4rails example code with the nav turned off

	handler = Gmaps.build('Google');
	handler.buildMap({
		provider: {
			disableDefaultUI: true
		      // pass in other Google Maps API options here
		    },
		    internal: {
		    	id: 'map'
		    }
		  },
		  function(){
		  	markers = handler.addMarkers([
		  	{
		  		"lat": 0,
		  		"lng": 0,
		  		"picture": {
		  			"url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
		  			"width":  36,
		  			"height": 36
		  		},
		  		"infowindow": "hello!"
		  	}
		  	]);
		  	handler.bounds.extendWith(markers);
		  	handler.fitMapToBounds();
		  }
		  );


});

