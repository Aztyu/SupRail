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
                                    <div class="initiative">
                                        <!-- ITEM -->
                                        <div class="initiative__item">
                                            <div class="initiative-top">
                                                <div class="title">
                                                    <div class="from-to">
                                                        <span class="from">Ha Noi</span>
                                                        <i class="awe-icon awe-icon-arrow-right"></i>
                                                        <span class="to">New York</span>
                                                    </div>
                                                    <div class="time">Thursday 12 Feb 2015 | Total time: 33h 30m</div>
                                                </div>
                                                <div class="price">
                                                    <span class="amount">Total : 120€</span>
                                                </div>
                                            </div>
                                            <table class="initiative-table">
                                                <tbody>
                                                    <tr>
                                                        <th>
                                                            <div class="item-thumb">
                                                                <div class="image-thumb">
                                            						<img src="${pageContext.request.contextPath}/resources/images/flight/1.jpg" alt="">
                                                                </div>
                                                                <div class="text">
                                                                    <span>SUPRAIL</span>
                                                                    <p>TER 47584</p>
                                                                    <hr style="margin:5px 0 9px">
                                                                    <a href="#demo" data-toggle="collapse"><span>Plus d'infos</span><br/>
                                                                    	<i class="awe-icon awe-icon-downflech"></i>
                                                                	</a>
                                                                </div>
                                                            </div>
                                                        </th>
                                                         
														<td>
                                                            <div class="item-body">
                                                                <div class="item-from">
                                                                    <h3>HAN</h3>
                                                                    <span class="time">14:15</span>
                                                                    <span class="date">Thu, 12 Feb, 2015</span>
                                                                    <p class="desc">John F Kennedy, New York</p>
                                                                </div>
                                                                <div class="item-time">
                                                                    <i class="fa fa-clock-o"></i>
                                                                    <span>10h 25m</span>
                                                                </div>
                                                                <div class="item-to">
                                                                    <h3>DOH</h3>
                                                                    <span class="time">23:10</span>
                                                                    <span class="date">Thu, 12 Feb, 2015</span>
                                                                    <p class="desc">Doha, Doha</p>
                                                                </div>
                                                            </div>
                                                            <div id="demo" class="collapse">
                                                            <hr style="margin: 5px 0 9px;">
                                                                <p style="font-size: 15px;font-weight: 500;color: #333333"><i class="awe-icon awe-icon-info" style="color:#0091ea;"></i> INFOS COMPLÉMENTAIRES</p>
                                                                <span>Plus d'infos</span>
														</div>
                                                        </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <div class="item-thumb">
                                                                <div class="image-thumb">
<img src="${pageContext.request.contextPath}/resources/images/flight/1.jpg" alt="">                                                                </div>
                                                                <div class="text">
                                                                    <span>Quatar Airway</span>
                                                                    <p>QR-829</p>
                                                                    <span>Economy</span>
                                                                </div>
                                                            </div>
                                                        </th>
                                                        <td>
                                                            <div class="item-body">
                                                                <div class="item-from">
                                                                    <h3>HAN</h3>
                                                                    <span class="time">14:15</span>
                                                                    <span class="date">Thu, 12 Feb, 2015</span>
                                                                    <p class="desc">John F Kennedy, New York</p>
                                                                </div>
                                                                <div class="item-time">
                                                                    <i class="fa fa-clock-o"></i>
                                                                    <span>10h 25m</span>
                                                                </div>
                                                                <div class="item-to">
                                                                    <h3>DOH</h3>
                                                                    <span class="time">23:10</span>
                                                                    <span class="date">Thu, 12 Feb, 2015</span>
                                                                    <p class="desc">Doha, Doha</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- END / ITEM -->
                                        
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