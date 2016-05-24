<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<link href="<c:url value="/resources/css/test.css"/>" rel="stylesheet">
		<title>Home</title>
		
		<script src="https://apis.google.com/js/platform.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/connexion.js"></script>	
		
		<meta name="google-signin-client_id" content="62410611142-3mese73l1crnh0hc3p5rdr4k0eicdpb5.apps.googleusercontent.com">
	</head>
	<body>
		<%@ include file="include/header.jsp" %>
		<h1>
			Welcome to SupRail  
		</h1>
		
		<P>  The time on the server is ${serverTime}. </P>
	</body>
</html>
