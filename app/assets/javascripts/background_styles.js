$(function(){

	$('section').each(function(i,el) {
		// console.log(el);
		el.style.height = $(window).height() + 'px';
	});


	getcoords();
	// begin to call gps to watch the position
	updateLocation();

	var gmapResize = function() {
		$('#gmap')[0].style.width = $('.container').width() + 'px';
		$('#gmap')[0].style.height = $('.container').width() * .70 + 'px';
	};

	gmapResize();

});


// getting started with the gps

updateLocation = function() {

  // continuously checks your position and calls the function
  // watchPosition is an evenlistener on geoloc so whenever user moves, it triggers and calls success function
  navigator.geolocation.watchPosition(function(position){
    console.log(position);
    userLat = position.coords.latitude;
    userLng = position.coords.longitude;

  }


  getcoords = function() {

  // this tells your browser to look up your current geolocation and grab those coords
  navigator.geolocation.getCurrentPosition(function(position){
    userLat = position.coords.latitude;
    userLng = position.coords.longitude;
    // then creats map when it knows your geolocation
    makeMap();

  // eventlistener when drop pin button is clicked
    $("#drop-pin").on("click", app.addPin);
  });