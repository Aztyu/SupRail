<c:choose>
	<c:when test="${ empty sessionScope.user }">
		<form action="${pageContext.request.contextPath}/login" method="POST">
			 Login:<br>
			  <input type="text" name="login"><br>
			  Password:<br>
			  <input type="password" name="password">
			  <button type="submit">Connexion</button>
		</form>
		
		<div class="g-signin2" data-onsuccess="onSignIn"></div>
		
		<a href="${pageContext.request.contextPath}/register">Créer un compte</a>
	</c:when>
	<c:otherwise>
		<p>Welcome ${ sessionScope.user.firstName }</p>
		<a href="${pageContext.request.contextPath}/logout">Déconnexion</a>
	</c:otherwise>
</c:choose>