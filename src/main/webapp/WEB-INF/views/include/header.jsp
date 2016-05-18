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
		<c:choose>
			<c:when test="${ sessionScope.user.googleUser == true }">
				<button onclick="googleLogOut()">Déconnexion</button>
			</c:when>
			<c:otherwise>
				<button onclick="simpleLogOut()">Déconnexion</button>
			</c:otherwise>
		</c:choose>
		
	</c:otherwise>
</c:choose>