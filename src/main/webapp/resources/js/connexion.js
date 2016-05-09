function onSignIn(googleUser) {
	var profile = googleUser.getBasicProfile();
    console.log("ID: " + profile.getId()); // Don't send this directly to your server!
    console.log('Full Name: ' + profile.getName());
    console.log('Given Name: ' + profile.getGivenName());
    console.log('Family Name: ' + profile.getFamilyName());
    console.log("Image URL: " + profile.getImageUrl());
    console.log("Email: " + profile.getEmail());

    // The ID token you need to pass to your backend:
    var id_token = googleUser.getAuthResponse().id_token;
    console.log("ID Token: " + id_token);

		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
		  if (xhttp.readyState == 2 && xhttp.status == 200) {
		    window.location.href = "http://localhost:8080/suprail/main";
		  }else{
				console.log("error");
			}
		};
		xhttp.open("POST", "/suprail/login/google", true);
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhttp.send("google_id=" + id_token);
}
