// document ready
$(document).ready(function() {

// this tells your browser to look up your current geolocation and grab those coords
	navigator.geolocation.getCurrentPosition(function(position){
	  userLat = position.coords.latitude;
	  userLng = position.coords.longitude;
    // then creats map when it knows your geolocation
// app.makeMap();

// eventlistener when drop pin button is clicked
// $("#drop-pin").on("click", app.addPin);
	console.log(userLat);
	console.log(userLng);  
	});
	

// when you click on the submit button, it triggers the app.createUser
// $(".submit").on("click", app.createUser);

	setInterval(1000);

});