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
	                    <li><a href="checkout-yourcart.html">Votre panier</a></li>
	                    <li class="current"><a href="checkout-customer.html">Vos informations</a></li>
	                    <li><a href="checkout-complete.html">Vos achats</a></li>
	                </ul>
	            </div>
	        </div>
	        
	        <div class="col-lg-9">
	            <div class="checkout-page__content">
	                <div class="customer-content">
	                    <div class="woocommerce-billing-fields">
	                        <h3><i class="fa fa-user" aria-hidden="true"></i> Informations personnelles</h3>
	                        <div class="form-row" id="billing_first_name_field">
	                            <label>Nom</label>
	                            <input type="text" name="firstname" value="${sessionScope.user.firstName}">
	                        </div>
	                        <div class="form-row" id="billing_last_name_field">
	                            <label>Prénom</label>
	                            <input type="text" name="lastname" value="${sessionScope.user.lastname}">
	                        </div>
	                        <div class="form-row" id="billing_email">
	                            <label>Email</label>
	                            <input type="text" name="email" value="${sessionScope.user.email}">
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
	                            <label>Address</label>
	                            <input type="text" name="address" value="${sessionScope.user.address}">
	                        </div>
	                        <div class="form-row" id="billing_postcode_field">
	                            <label>Postcode / zip</label>
	                            <input type="text" name="zipcode" value="${sessionScope.user.zipcode}">
	                        </div>
	                        <div class="form-row" id="billing_phone_field">
	                            <label>Phone</label>
	                            <input type="text" name="phone" value="${sessionScope.user.phone}">
	                        </div>
	                    </div>
	
	                    <div class="woocommerce-shipping-fields">
	                        <h3 id="ship-to-different-address">
	                            <label for="ship-to-different-address-checkbox">Mes informations de facturation sont les mêmes</label>
	                            <input id="ship-to-different-address-checkbox" class="checkBill" type="checkbox" checked="checked">
	
	                        </h3>
	                        <div class="shipping_address">
	                            <div class="form-row" id="billing_first_name_field">
	                            <label>Nom</label>
	                            <input type="text">
	                        </div>
	                        <div class="form-row" id="billing_last_name_field">
	                            <label>Prénom</label>
	                            <input type="text">
	                        </div>
	                        <div class="form-row" id="billing_email">
	                            <label>Email</label>
	                            <input type="text">
	                        </div>
	                        <div class="form-row" id="billing_country_field">
	                            <label>Pays</label>
	                            <input type="text">
	                        </div>
	                        <div class="form-row" id="billing_city_field">
	                            <label>Ville</label>
	                            <input type="text">
	                        </div>
	                        <div class="form-row" id="billing_address_1_field">
	                            <label>Address</label>
	                            <input type="text">
	                        </div>
	                        <div class="form-row" id="billing_postcode_field">
	                            <label>Postcode / zip</label>
	                            <input type="text">
	                        </div>
	                        <div class="form-row" id="billing_phone_field">
	                            <label>Phone</label>
	                            <input type="text">
	                        </div>
	                        </div>
	                    </div>
	                    
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
</section>

<%@ include file="include/footer.jsp" %>