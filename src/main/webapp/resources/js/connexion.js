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

function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);

    if (response.status === 'connected') {
      testAPI();
    } else if (response.status === 'not_authorized') {
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    } else {
      document.getElementById('status').innerHTML = 'Please log ' +
        'into Facebook.';
    }
  }

  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '238597909848899',
    cookie     : true,  
    xfbml      : true,  
    version    : 'v2.6'
  });

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  function testAPI() {
    console.log('Bienvenue!  Fetching your information.... ');
    FB.api('/me?fields=id,name,email,permissions', function(response) {
	  console.log(response.email);
      console.log('Connexion réussie pour: ' + response.name);
      document.getElementById('status').innerHTML =
        'Merci de vous être connecté, ' + response.name + '!';
      var arr = { id: response.id, name: response.name, email: response.email };
      $.ajax({
          url: contextPath+"/login/facebook",
          type: 'POST',
          data: JSON.stringify(arr),
          contentType: 'application/json; charset=utf-8',
          dataType: 'json',
          async: false,
          success: function(msg) {
        	  if(msg == true) {
        		  window.location.href = "http://localhost:8080/suprail/login/facebook?email=" + response.email;
        	  }
          }
    });
    });
  }