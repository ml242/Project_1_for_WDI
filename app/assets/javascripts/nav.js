saveImage = function(event){
  console.log('trying to save my img');
  var canvas = document.getElementById("myCanvas");
  var img = canvas.toDataURL("image/png");
  // var ascend_image = document.write('<img src="'+img+'"/>');
 $.ajax({
    type: "POST",
    url: "/ascends/",
    data: img
  });
 // .done(function(user) {
 //    // do something with the response
 //    user = user;
 //    console.log('response:');
 //    console.log(user);
 //    app.updateLocation();
 //  });


};



// createUser = function(e) {
//   e.preventDefault();

//   // this is the params that will go into the ajax
//   var userParams = {
//     user: {
//       latitude: userLat,
//       longitude: userLng
//   }
// };

//   // ajax request to add data userParams into the data
//   $.ajax({
//     type: "POST",
//     url: "users.json",
//     data: userParams
//   }).done(function(user) {
//     // do something with the response
//     user = user;
//     console.log('response:');
//     console.log(user);
//     app.updateLocation();
//   });
// };


updateLocation = function() {

  // continuously checks your position and calls the function
  // watchPosition is an evenlistener on geoloc so whenever user moves, it triggers and calls success function
  navigator.geolocation.watchPosition(function(position) {
    console.log(position);
    userLat = position.coords.latitude;
    userLng = position.coords.longitude;

  
  var userParams = {
    user: {
      id: current_user,
      latitude: userLat,
      longitude: userLng
    }
  };


  var updateUserUrl = "/users/" + current_user;

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


addPin = function() {
  

  var map = document.getElementById("multi_markers");


  // this takes your current position (as defined in the ready function and drops into the variable)
  

  var myLatlng = new google.maps.LatLng(userLat, userLng);

  var marker = new google.maps.Marker({
    position: myLatlng,
    title:"Hello World!"
  });

  marker.setMap(map);
};




// document ready
$(document).ready(function() {

	navigator.geolocation.getCurrentPosition(function(position){
	  userLat = position.coords.latitude;
	  userLng = position.coords.longitude;
	console.log(userLat);
	console.log(userLng);  
  addPin();
  });

  // setInterval(1000);

	updateLocation();


  // $('#shutter-click').click(saveImage(event));
  $('#shutter-click').click(saveImage);


});