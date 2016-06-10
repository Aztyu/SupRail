<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="<c:url value="/resources/css/lib/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<html>
	<body>
		<div class="col-lg-9">
		<div class="woocommerce-info">
	                   Merci pour votre achat ! Nous avons bien reçu votre demande.
	               </div>
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
	                               <th>M�thode de paiement</th>
	                           </tr>
	                       </thead>
	                       <tbody>
	                           <tr>
	                               <td># 5365</td>
	                               <td>27 Feb 2015</td>
	                               <td>$ 467.909</td>
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
	                                       <h4 class="title">Nom :</h4>
	                                       <p>${reservation.user.firstName}</p>
	                                   </td>
	                                   <td>
	                                       <h4 class="title">Prénom :</h4>
	                                       <p>All in One</p>
	                                   </td>
	                               </tr>
	                               <tr>
	                                   <td>
	                                       <h4 class="title">Email :</h4>
	                                       <p><a href="#">AllinOne@mail.com</a></p>
	                                   </td>
	                                   <td>
	                                       <h4 class="title">Téléphone:</h4>
	                                       <p>085654523656</p>
	                                   </td>
	                               </tr>
	                               <tr>
	                                   <td>
	                                       <h4 class="title">Adresse</h4>
	                                       <p>Boudin ham hock chicken,. Leberkas ham sausage doner pastrami porchetta tri-tip boudin shankle. Meatball shoulder rump spare ribs tongue venison short</p>
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
	                                   <th>Product Category 1 eg.Hotel</th>
	                                   <td>67.909 €</td>
	                               </tr>
	                               
	                           </tbody>
	                           <tfoot>
	                               <tr class="order-total">
	                                   <th>Total</th>
	                                   <td><span class="amount">467.90 €</span></td>
	                               </tr>
	                           </tfoot>
	                       </table>
	                   </div>
	               </div>
	           </div>
	       </div>
	   </div>
	</body>
</html>