<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<%@ include file="include/headerbis.jsp" %>
	<section class="checkout-section-demo">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="checkout-page__sidebar">
                            <ul>
                                <li class="current"><a href="${pageContext.request.contextPath}/user/historyUser">Votre panier</a></li>
                                <li><a href="${pageContext.request.contextPath}/user/updateUser">Vos informations</a></li>
                                <li><a href="${pageContext.request.contextPath}/user/checkout-complete">Commande terminée</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="product-tabs tabs ui-tabs ui-widget ui-widget-content ui-corner-all">
                            <ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" role="tablist">
                                <li class="ui-state-default ui-corner-top ui-tabs-active ui-state-active" role="tab" tabindex="0" aria-controls="tabs-1" aria-labelledby="ui-id-1" aria-selected="true">
                                    <a href="#tabs-1" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-1">Vos voyages</a>
                                </li>
                                
                                <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-3" aria-labelledby="ui-id-3" aria-selected="false">
                                    <a href="#tabs-3" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-3">A propos de votre voyage</a>
                                </li>
                            </ul>
                            <div class="product-tabs__content">
                                <div id="tabs-1" aria-labelledby="ui-id-1" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-expanded="true" aria-hidden="false">
                                    <div class="filter-page__content" style="display: flex;flex-direction: column;">
                            <div class="filter-item-wrapper">
                            <c:if test = "${empty travels}">
                            <div class="row">
			                    <div class="col-xs-12">
			                        <h5 class="text-uppercase" style="color: red;">Aucun trajet</h5>
			                        <blockquote>
			                            <p>Votre panier est vide, veuillez effectuer une commande pour valider votre panier</p>
			                            <footer>Service client</footer>
			                        </blockquote>
			                    </div>
			                </div>
                            </c:if>
                            <div id="sortdata">
                            <c:forEach var="travel" items="${travelCart}" varStatus="loop">
                                <!-- ITEM -->
                                <div class="flight-item">
                                    <div class="item-media" style="width:15%;">
                                        <div class="image-cover">
                                            <img src="${pageContext.request.contextPath}/resources/images/flight/1.jpg" alt="" style="width: 123px!important;margin-top: 35px;">
                                        </div>
                                    </div>
                                    <div class="item-body">
                                        <div class="item-title">
                                            <h2>
                                                <a href="train-detail.html">En direction de : <span style="color:#38a9ee">${ travel.stationAller }</span></a>
                                            </h2>
                                        </div>
                                        <c:forEach var="trip" items="${travel.aller}">
                                        <table class="item-table">
                                            <thead>
                                                <tr>
                                                    <th class="route">Étapes trajet aller</th>
                                                    <th class="depart">Départ</th>
                                                    <th class="arrive">Arrivée</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="route">
                                                        <ul>
                                                            <li>${ trip.start.name }<i class="awe-icon awe-icon-arrow-right"></i></li>
                                                            <li>${ trip.end.name }<i class="awe-icon awe-icon-arrow-right"></i></li>
                                                        </ul>
                                                    </td>
                                                    <td class="depart">
                                                        <span>${ trip.formatedStartTime }</span>
                                                        <span class="date">${ trip.formatedStartDate }</span>
                                                    </td>
                                                    <td class="arrive">
                                                        <span>${ trip.formatedStopTime }</span>
                                                        <span class="date">${ trip.formatedStopDate }</span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        </c:forEach>
                                        <c:if test = "${not empty travel.retour}">
                                        <hr style="border-top:1px solid #0091ea;margin:5px">
                                       	 <h3 style="margin:0px;font-size: 14px;color:#0091ea;text-align:center;">RETOUR</h3>
                                       	 <hr style="border-top:1px solid #0091ea;margin:5px">
                                        </c:if>
                                        
                                        <c:forEach var="trip" items="${travel.retour}">
                                        <table class="item-table">
                                            <thead>
                                                <tr>
                                                    <th class="route">Étapes trajet retour</th>
                                                    <th class="depart">Départ</th>
                                                    <th class="arrive">Arrivée</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="route">
                                                        <ul>
                                                            <li>${ trip.start.name }<i class="awe-icon awe-icon-arrow-right"></i></li>
                                                            <li>${ trip.end.name }<i class="awe-icon awe-icon-arrow-right"></i></li>
                                                        </ul>
                                                    </td>
                                                    <td class="depart">
                                                        <span>${ trip.formatedStartTime }</span>
                                                        <span class="date">${ trip.formatedStartDate }</span>
                                                    </td>
                                                    <td class="arrive">
                                                        <span>${ trip.formatedStopTime }</span>
                                                        <span class="date">${ trip.formatedStopDate }</span>
                                                    </td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                                        </c:forEach>
                                        
                                    </div>
                                    <div class="item-price-more">
                                        <div class="price">
                                            <span class="amount pricesort">${ travel.price } €</span>
                                            Taxes incluses
                                        </div>
                                        <div style="display:none">
                                        <p class="distsort">${ travel.minutes_aller}</p>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/buyTravel/${loop.index}" class="awe-btn">Acheter</a>
                                        <c:if test = "${not empty travel.retour}">
	                                        
	                                        	<div style="margin-top:15px;">
	                                        		<i class="awe-icon awe-icon-info"></i>
	                                        		<a href="#collapse1" data-toggle="collapse">Le prix comprend l'aller et le retour</a>
	                                        	</div>
                                        </c:if>
                                        
                                    </div>
                                </div>
                                <!-- END / ITEM -->
                                </c:forEach>
                            </div>
                            <!-- END DIV SORT -->
                            </div>
                            <!-- END / PAGINATION -->
                        </div>
                    </div>
                                </div>
                                
                                <div id="tabs-3" aria-labelledby="ui-id-3" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
                                    <table class="good-to-know-table">
                                        <tbody>
                                            <tr>
                                                <th>
                                                    <p>Enregistrement</p>
                                                </th>
                                                <td>
                                                    <p>1 heure avant</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <p>Annulation</p>
                                                </th>
                                                <td>
                                                    <p>Les annulations sont possibles si les conditions d'annulations sont respectées.</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <p>Passager enfant</p>
                                                </th>
                                                <td>
                                                    <p>Les enfants de -3 ans sont acceptés gratuitement</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <p>Internet</p>
                                                </th>
                                                <td>
                                                    <p><span class="light">Gratuit</span>Connexion gratuite au WIFI (session de 25 minutes)</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <p>Animaux</p>
                                                </th>
                                                <td>
                                                    <p>Les animaux sont autorisés seulement s'ils sont protégés.</p>
                                                </td>
                                            </tr>
  
                                            <tr>
                                                <th>
                                                    <p>Moyens de paiement possibles</p>
                                                </th>
                                                <td>
                                                    <p><img src="${pageContext.request.contextPath}/resources/images/paypal2.png" alt=""></p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                               
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