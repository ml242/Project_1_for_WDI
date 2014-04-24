createUser = function(e) {
  e.preventDefault();

  // this is the params that will go into the ajax
  var userParams = {
    user: {
      latitude: userLat,
      longitude: userLng
  }
};

  // ajax request to add data userParams into the data
  $.ajax({
    type: "POST",
    url: "users.json",
    data: userParams
  }).done(function(user) {
    // do something with the response
    user = user;
    console.log('response:');
    console.log(user);
    app.updateLocation();
  });
};


updateLocation = function() {

  // continuously checks your position and calls the function
  // watchPosition is an evenlistener on geoloc so whenever user moves, it triggers and calls success function
  navigator.geolocation.watchPosition(function(position) {
    console.log(position);
    userLat = position.coords.latitude;
    userLng = position.coords.longitude;

  // this is the params that will go into the ajax
  var a = $('#user-id').text();
	var user_id = parseInt(a);
  
  var userParams = {
    user: {
      id: user_id,
      latitude: userLat,
      longitude: userLng
    }
  };


  var updateUserUrl = "users/" + user_id;

// updates users lat long through ajax request
    $.ajax({
      dataType: "json",
      type: "PUT",
      url: updateUserUrl,
      data: userParams
    }).done(function(user){
      user = user;
      console.log(user);
    });
  });

};



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
	updateLocation();

});