<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%@ include file="include/headerbis.jsp" %>
<!-- PAGE WRAP -->
<div id="page-wrap">
    <!-- PRELOADER -->
  <div class="preloader"></div>
  <!-- END / PRELOADER -->
  
  <section class="checkout-section-demo">
      <div class="container">
<div class="col-lg-12">
	       <div class="checkout-page__content">
	           <div class="complete-content">
	               <div class="your-order">
	                   <h2>Votre commande</h2>
	                   <table class="order-table">
	                       <thead>
	                           <tr>
	                               <th>Commande</th>
	                               <th>Date</th>
	                               <th>Total</th>
	                               <th>Méthode de paiement</th>
	                           </tr>
	                       </thead>
	                       <tbody>
	                           <tr>
	                               <td># ${r.id}</td>
	                               <td>${now}</td>
	                               <td>${travel.price} €</td>
	                               <td>Paiement internet</td>
	                           </tr>
	                       </tbody>
	                   </table>
	                   <div class="billing-info">
	                       <h3>Informations de facturation</h3>
	                       <table class="billing-table">
	                           <tbody>
	                               <tr>
	                                   <td>
	                                       <h4 class="title">Nom du client</h4>
	                                       <p>${user.firstName}</p>
	                                   </td>
	                               </tr>
	                               <tr>
	                                   <td>
	                                       <h4 class="title">Email</h4>
	                                       <p>${user.email}</p>
	                                   </td>
	                               </tr>
	                               <tr>
	                                   <td>
	                                       <h4 class="title">Adresse</h4>
	                                       <p>${user.address}</p>
	                                       <p>${user.zipcode}</p>
	                                       <p>${user.city}</p>
	                                   </td>
	                               </tr>
	                           </tbody>
	                       </table>
	                   </div>
	                   <div class="cart-detail">
	                       <h3>Détails de la commande</h3>
	                       <table class="cart-detail-table">
	                           <tbody>
	                               <tr>
	                                   <th>${r.travel.stationAller} - ${r.travel.stationRetour }</th>
	                                   <td>${travel.price} €</td>
	                               </tr>
	                           </tbody>
	                           <tfoot>
	                               <tr class="order-total">
	                                   <th>Total</th>
	                                   <td style="width:70px;"><span class="amount">${travel.price} €</span></td>
	                               </tr>
	                           </tfoot>
	                       </table>
	                       <form id="checkout" method="post" action="${pageContext.request.contextPath}/validate">
							  <div id="payment-form"></div>
							  <input type="submit" value="Pay $10">
							</form>
							
							
	                   </div>
	               </div>
	           </div>
	       </div>
	   </div>           <div class="your-cart-footer text-right">
              <a href="#" class="awe-btn awe-btn-style3">Retour à l'accueil</a>
          </div>
      </div>
  </section>
  <script src="https://js.braintreegateway.com/js/braintree-2.24.1.min.js"></script>
	<script>
		// We generated a client token for you so you can test out this code
		// immediately. In a production-ready integration, you will need to
		// generate a client token on your server (see section below).
		var clientToken = "${token}";
		
		braintree.setup(clientToken, "dropin", {
		  container: "payment-form"
		});
	</script>
 <%@ include file="include/footer.jsp" %>