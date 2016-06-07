<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="include/headerbis.jsp" %>

<section class="checkout-section-demo">
	<div class="container">
	    <div class="row">
	        <div class="col-lg-12">
	            <div class="checkout-page__top">
	                <div class="title">
	                    <h1 class="text-uppercase">MENU</h1>
	                </div>
	                <span class="phone">En cas de problème, n'hésitez pas à <a href="/contact">nous contactez</a></span>
	            </div>
	        </div>
	        <div class="col-lg-3">
	            <div class="checkout-page__sidebar">
	                <ul>
	                    <li><a href="${pageContext.request.contextPath}/user/historyUser">Votre panier</a></li>
                        <li class="current"><a href="${pageContext.request.contextPath}/user/updateUser">Vos informations</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/checkout-complete">Commande terminée</a></li>
	                </ul>
	            </div>
	        </div>
	        
	        <div class="col-lg-9">
	            <div class="checkout-page__content">
	                <div class="customer-content">
	                	<form action="${pageContext.request.contextPath}/user/updateUser" method="POST">
	                    <div class="woocommerce-billing-fields">
	                        <h3><i class="fa fa-user" aria-hidden="true"></i> Informations personnelles</h3>
	                        <div class="form-row" id="billing_first_name_field">
	                            <label>Nom</label>
	                            <input type="text" name="firstname" value="${sessionScope.user.firstName}">
	                        </div>
	                        <div class="form-row" id="billing_last_name_field">
	                            <label>Prénom</label>
	                            <input type="text" name="lastname" value="${sessionScope.user.lastName}">
	                        </div>
	                        <div class="form-row" id="billing_email">
	                            <label>Email</label>
	                            <input type="text" name="email" disabled="disabled" readonly value="${sessionScope.user.email}">
	                        </div>
	                        <div class="form-row" id="billing_country_field">
	                            <label>Pays</label>
	                            <input type="text" name="country" value="${sessionScope.user.country}">
	                        </div>
	                        <div class="form-row" id="billing_city_field">
	                            <label>Ville</label>
	                            <input type="text" name="city" value="${sessionScope.user.city}">
	                        </div>
	                        <div class="form-row" id="billing_address_1_field">
	                            <label>Addresse</label>
	                            <input type="text" name="address" value="${sessionScope.user.address}">
	                        </div>
	                        <div class="form-row" id="billing_postcode_field">
	                            <label>Code Postal</label>
	                            <input type="text" name="zipcode" value="${sessionScope.user.zipcode}">
	                        </div>
	                        <div class="form-row" id="billing_phone_field">
	                            <label>Téléphone</label>
	                            <input type="text" name="phone" value="${sessionScope.user.phone}">
	                        </div>
	                        
	                    </div>
	                    <div id="payment">
	                        <div class="form-row place-order">
	                           <input type="submit" class="button alt" id="place_order" value="Enregistrer" onclick="return confirm('Êtes-vous sûr de votre choix ?')">
	                        </div>
	                    </div>
	                    </form>
	                </div>
	            </div>
	        </div>
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