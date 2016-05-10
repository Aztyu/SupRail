gapi.load('auth2', function() {
	gapi.auth2.init({
		client_id: '62410611142-3mese73l1crnh0hc3p5rdr4k0eicdpb5.apps.googleusercontent.com'
	});
});

function onSignIn(googleUser) {
	  var profile = googleUser.getBasicProfile();
    var id_token = googleUser.getAuthResponse().id_token;
		window.location.href = "http://localhost:8080/suprail/login/google?google_id=" + id_token;
}

function googleLogOut() {
	if(gapi.auth2 != undefined){
		var auth2 = gapi.auth2.getAuthInstance();
	  auth2.signOut().then(function () {
	    console.log('User signed out.');
	  });
		simpleLogOut();
	}
}

function simpleLogOut(){
	window.location.href = "http://localhost:8080/suprail/logout";
}
