<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="include/headerbis.jsp" %>
<section class="awe-parallax register-page-demo">
   <div class="awe-overlay"></div>
   <div class="container">
          <div class="content-title">
                      <span>Ne restez pas chez vous</span>
                      <h2>REJOIGNEZ NOUS !</h2>
                  </div>
                  
          <div class="login-register-page__content registerleft"> 
          
          <c:if test="${not empty errorlogin}">
			<div class="alert alert-danger">
			    <a class="close" data-dismiss="alert">×</a>
			    <strong>Erreur : Impossible de vous connectez, veuillez recommencer. </strong>
			</div>
		 </c:if>        
                <form action="${pageContext.request.contextPath}/login" method="POST">
                  <h3 style="margin: 0px 0px 8px 0px;"> CONNEXION  <i class="fa fa-user" aria-hidden="true"></i></i></h3>
                      
                      <div class="form-item">
                          <label>Email</label>
                          <input type="text" name="login">
                      </div>
                      <div class="form-item">
                          <label>Password</label>
                          <input type="password" name="password">
                      </div>
                      <a href="#" class="forgot-password">Mot de passe</a>
                      <div class="form-actions">
                          <input type="submit" value="Connexion">
                      </div>
                      <div style="margin-top:84px;"></div>
                      <div class="hr"><span style="color:#6C6966">OU</span></div> 
                      <div class="g-signin2" data-onsuccess="onSignIn"></div>
                      <fb:login-button scope="public_profile,email" onlogin="checkLoginState();" data-size="xlarge"></fb:login-button>
                      <div id="status"></div>
                  </form>
          </div>
          
              <div class="login-register-page__content">
              <c:if test="${not empty erroregister}">
				<div class="alert alert-danger">
				    <a class="close" data-dismiss="alert">×</a>
				    <strong>Erreur : Veuillez recommencer votre inscription </strong>
				</div>
		 	  </c:if>
		 	  <c:if test="${not empty registerok}">
				<div class="alert alert-success">
				    <a class="close" data-dismiss="alert">×</a>
				    <strong>Votre compte a bien été enregistré ! </strong>
				</div>
		 	  </c:if> 
                  <form action="${pageContext.request.contextPath}/register" method="post">
                  <h3 style="margin: 0px 0px 8px 0px;"> INSCRIPTION  <i class="fa fa-sign-in" aria-hidden="true"></i></h3>
                  <div class="form-item">
                          <label>Nom</label>
                          <input type="text" name="firstname" required>
                      </div>
                       <div class="form-item">
                          <label>Prénom</label>
                          <input type="text" name="lastname" required>
                      </div>
                      <div class="form-item">
                          <label>Email</label>
                          <input type="text" name="email" required>
                      </div>
                      <div class="form-item">
                          <label>Mot de passe</label>
                         <input type="password" name="password" required>
                      </div>

                      <div class="form-actions">
                          <input type="submit" value="Inscription">
                      </div>
                  </form>
              </div>
          </div>
</section>
<script type="text/javascript">
	$('.toggle-menu-responsive').on('click', function(evt) {
        evt.preventDefault();
        $(this).toggleClass('toggle-active');
        $(document).find('.awe-navigation-responsive').toggleClass('awe-navigation-responsive-active');
    });
	</script>
<%@ include file="include/footer.jsp" %>