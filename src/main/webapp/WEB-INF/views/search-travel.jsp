<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<%@ include file="include/headerbis.jsp" %>
		<link href="<c:url value="/resources/css/lib/wickedpicker.min.css" />" rel="stylesheet">
	        <!-- HEADING PAGE -->
        <section class="awe-parallax category-heading-section-demo">
            <div class="awe-overlay"></div>
            <div class="container">
                <div class="category-heading-content category-heading-content__2 text-uppercase">
                    <!-- BREADCRUMB -->
                    <div class="breadcrumb">
                        <ul>
                            <li><a href="#">Accueil</a></li>
                            <li><span>Recherche train</span></li>
                        </ul>
                    </div>
                    <!-- BREADCRUMB -->
                    <div class="find">
                        <h2 class="text-center">CHOISISSEZ LE TRAJET QUI VOUS CONVIENT</h2>
                       
                    </div>
                </div>
            </div>
        </section>
        <!-- END / HEADING PAGE -->

        
        <section class="filter-page">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-top">
                            <select class="awe-select" id="numbers">
                            	<option value="0">Par défaut</option>
                                <option value="1">Trier par prix</option>
                                <option value="2">Trier par distance</option>
                            </select>
                        </form>
                        </div>
                    </div>
                    <div class="col-md-9 col-md-push-3">
                        <div class="filter-page__content" style="display: flex;flex-direction: column;">
                            <div class="filter-item-wrapper">
                            <c:if test = "${empty travels}">
                            <div class="row">
			                    <div class="col-xs-12">
			                        <h5 class="text-uppercase" style="color: red;">Aucun trajet disponible</h5>
			                        <blockquote>
			                            <p>Nous sommes désolés mais nous n'avons aucun train correspondant à votre recherche.</p>
			                            <footer>Service client</footer>
			                        </blockquote>
			                    </div>
			                </div>
                            </c:if>
                            <div id="sortdata">
                            <c:forEach var="travel" items="${travels}">
                                <!-- ITEM -->
                                <div class="flight-item" style="order:1;">
                                    <div class="item-media" style="width:15%;">
                                        <div class="image-cover">
                                            <img src="${pageContext.request.contextPath}/resources/images/flight/1.jpg" alt="" style="width: 123px!important;margin-top: 35px;">
                                        </div>
                                    </div>
                                    <div class="item-body">
                                        <div class="item-title">
                                            <h2>
                                                <a href="train-detail.html"><span style="color:#38a9ee"> ${ trip.end.name }</span></a>
                                            </h2>
                                        </div>
                                        <c:forEach var="trip" items="${travel.aller}">
                                        <table class="item-table">
                                            <thead>
                                                <tr>
                                                    <th class="route">Trajet aller</th>
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
                                        <c:forEach var="trip" items="${travel.retour}">
                                        <hr style="border-top:1px solid #0091ea">
                                        <table class="item-table">
                                            <thead>
                                                <tr>
                                                    <th class="route">Trajet retour</th>
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
                                                <tr>
                                                	<td>
                                                		<i class="awe-icon awe-icon-info"></i>
                                                		<a href="#collapse1" data-toggle="collapse">Le prix comprend l'aller et le retour</a>
                                                	</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        </c:forEach>
                                        
                                    </div>
                                    <div class="item-price-more">
                                        <div class="price">
                                            <span class="amount pricesort">80</span>
                                            Taxes incluses
                                        </div>
                                        <a href="train-detail.html" class="awe-btn">Acheter</a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->
                                </c:forEach>
                                <div class="flight-item" style="order:1;">
                                    <div class="item-media" style="width:15%;">
                                        <div class="image-cover">
                                            <img src="${pageContext.request.contextPath}/resources/images/flight/1.jpg" alt="" style="width: 123px!important;margin-top: 35px;">
                                        </div>
                                    </div>
                                    <div class="item-body">
                                        <div class="item-title">
                                            <h2>
                                                <a href="train-detail.html"><span style="color:#38a9ee"> ${ trip.end.name }</span></a>
                                            </h2>
                                        </div>
                                        <c:forEach var="trip" items="${travel.aller}">
                                        <table class="item-table">
                                            <thead>
                                                <tr>
                                                    <th class="route">Trajet aller</th>
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
                                        <c:forEach var="trip" items="${travel.retour}">
                                        <hr style="border-top:1px solid #0091ea">
                                        <table class="item-table">
                                            <thead>
                                                <tr>
                                                    <th class="route">Trajet retour</th>
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
                                                <tr>
                                                	<td>
                                                		<i class="awe-icon awe-icon-info"></i>
                                                		<a href="#collapse1" data-toggle="collapse">Le prix comprend l'aller et le retour</a>
                                                	</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        </c:forEach>
                                        
                                    </div>
                                    <div class="item-price-more">
                                        <div class="price">
                                            <span class="amount pricesort">59</span>
                                            Taxes incluses
                                        </div>
                                        <a href="train-detail.html" class="awe-btn">Acheter</a>
                                    </div>
                                </div>
                            </div>
                            <!-- END DIV SORT -->
                            </div>
                            <!-- END / PAGINATION -->
                        </div>
                    </div>
                    <div class="col-md-3 col-md-pull-9">
                        <div class="page-sidebar">
                        <form id="searchTrain" action="${pageContext.request.contextPath}/searchTravel" method="POST">
                            <!-- WIDGET -->
                            <div class="widget widget_has_radio_checkbox_text">
                            
                                <h3 style="font-size:18px;"><i class="awe-icon awe-icon-search" style="color:gray;margin-right:7px;"></i> Rechercher un trajet</h3>
                                <div class="widget_content">
                                   
                                   <label>
	                                <input type="checkbox" id="checkTravel" checked="" value="Value1">
	                                <i class="awe-icon awe-icon-check"></i>
	                                Aller/Retour
	                            </label>
                                    <label class="from">
                                        Station de départ
                                        <span class="form-item db">
                                            <i class="awe-icon awe-icon-marker-1"></i>
											<input type="text" id="StartCity" value="${ trip.start.name }" required name="StartCity">
		                                <input type="hidden" value="" id="StartCityId" name="StartCityId">                                        
                                       	</span>
                                    </label>
                                    <label class="to">
                                        Station d'arrivée
                                        <span class="form-item db">
                                            <i class="awe-icon awe-icon-marker-1"></i>
                                            <input type="text" id="EndCity" value="${ trip.end.name }" required name="EndCity">
		                                <input type="hidden" value="" id="EndCityId" name="EndCityId">
                                        </span>
                                    </label>
                                    <label>Voyageur</label>
                                    <div class="form-item" >
		                                  <select class="awe-select" name="travelers" id="travelers" style="width: 80px;">
	                                            <option value="1">1</option>
	                                            <option value="2">2</option>
	                                            <option value="3">3</option>
	                                        </select>
		                                </div>
                                </div>
                            </div>
                            <!-- END / WIDGET -->

                            <!-- WIDGET -->
                            <div class="widget widget_price_filter">
                                <h3><i class="awe-icon awe-icon-calendar" style="color:gray;margin-right:7px;"></i> Dates</h3>
                                    <div class="form-item">
	                                 <input type="text" id="date_timepicker_start" value="" required name="date_timepicker_start">
                                    </div>
                                    
                                    <div style="margin:18px;"></div>
                                    
                                    <div class="form-item date_end">
	                                 <input type="text" id="date_timepicker_end" value="" name="date_timepicker_end">
                                    </div>
                                    <div style="margin:28px;"></div>
                            </div>
                            <!-- END / WIDGET -->

                            <!-- WIDGET -->
                            <div class="widget widget_has_radio_checkbox">
                                <h3><i class="awe-icon awe-icon-clock" style="color:gray;margin-right:7px;"></i> Horaires</h3>
                                <div class="form-item">
	                                 <input type="text" name="timepicker_start" class="timepicker-24-hr hasWickedpicker" id="timepicker_start" />
                                </div>
                                <div style="margin:18px;"></div>
                                <div class="form-item clock_end">
	                                 <input type="text" id="timepicker_end" name="timepicker_end" class="timepicker-24-hr hasWickedpicker" id="timepicker_end" required>
                                 </div>
                            </div>
                            <!-- END / WIDGET -->

                            <!-- WIDGET -->
                              <div class="form-actions">
                                <input type="submit" id="submitTravel" value="Rechercher" class="btn-remix">
                            </div>
						</form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
		
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/min/wickedpicker.min.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/time_picker.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slider.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jsondata.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/submit.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/sortData.js"></script>
	
	<script type="text/javascript">
	$('.toggle-menu-responsive').on('click', function(evt) {
        evt.preventDefault();
        $(this).toggleClass('toggle-active');
        $(document).find('.awe-navigation-responsive').toggleClass('awe-navigation-responsive-active');
    });
	</script>
	<%@ include file="include/footer.jsp" %>