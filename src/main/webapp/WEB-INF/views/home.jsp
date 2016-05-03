<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
	<head>
		<link href="<c:url value="/resources/css/test.css" />" rel="stylesheet">
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/connexion.js"></script>
		<title>Home</title>
		
		<script src="https://apis.google.com/js/platform.js" async defer></script>
		<meta name="google-signin-client_id" content="62410611142-3mese73l1crnh0hc3p5rdr4k0eicdpb5.apps.googleusercontent.com">
	</head>
	<body>
		<h1>
			Welcome to SupRail  
		</h1>
		
		<P>  The time on the server is ${serverTime}. </P>
		<form action="${pageContext.request.contextPath}/login" method="POST">
			 Login:<br>
			  <input type="text" name="login"><br>
			  Password:<br>
			  <input type="password" name="password">
			  <button type="submit">connexion</button>
		</form>
		
		<div class="g-signin2" data-onsuccess="onSignIn"></div>
	
		<script>
			
		</script>
	</body>
</html>
