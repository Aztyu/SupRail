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
                            <li><span>Train</span></li>
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
                            <select class="awe-select">
                                <option>Trier par prix</option>
                                <option>Trier par ordre croissant</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-9 col-md-push-3">
                        <div class="filter-page__content">
                            <div class="filter-item-wrapper">
                              
							<c:forEach var="trip" items="${travel.aller}">
                                <!-- ITEM -->
                                <div class="flight-item">
                                    <div class="item-media">
                                        <div class="image-cover">
                                            <img src="${pageContext.request.contextPath}/resources/images/flight/1.jpg" alt="" style="width: 123px!important;margin-top: 22px;">
                                        </div>
                                    </div>
                                    <div class="item-body">
                                        <div class="item-title">
                                            <h2>
                                                <a href="train-detail.html">Train en direction de ${ trip.end.name }</a>
                                            </h2>
                                        </div>
                                        <table class="item-table">
                                            <thead>
                                                <tr>
                                                    <th class="route">Trajet</th>
                                                    <th class="depart">Départ</th>
                                                    <th class="arrive">Arrivée</th>
                                                    <th class="duration">Durée</th>
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
                                                        <span>${ trip.formatedStopDate }</span>
                                                        <span class="date">${ trip.formatedStopDate }</span>
                                                    </td>
                                                    <td class="duration">
                                                        <span>38h5m</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                	<td>
                                                		<i class="awe-icon awe-icon-info"></i> <a data-toggle="collapse" href="#collapse1">Plus d'informations...</a>
                                                		<div id="collapse" class="collapse">
													      <div class="panel-body">Panel Body</div>
													    </div>
                                                	</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="item-price-more">
                                        <div class="price">
                                            <span class="amount">$5,923</span>
                                            exclude Fare
                                        </div>
                                        <a href="train-detail.html" class="awe-btn">Book now</a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->
                                </c:forEach>
                            </div>


                            <!-- PAGINATION -->
                            <div class="page__pagination">
                                <span class="pagination-prev"><i class="fa fa-caret-left"></i></span>
                                <span class="current">1</span>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#" class="pagination-next"><i class="fa fa-caret-right"></i></a>
                            </div>
                            <!-- END / PAGINATION -->
                        </div>
                    </div>
                    <div class="col-md-3 col-md-pull-9">
                        <div class="page-sidebar">
                        	<form action="">
                            <!-- WIDGET -->
                            <div class="widget widget_has_radio_checkbox_text">
                            
                                <h3 style="font-size:18px;"><i class="awe-icon awe-icon-search" style="color:gray;margin-right:7px;"></i>   Votre recherche</h3>
                                <div class="widget_content">
                                    <label>
                                        <input type="checkbox">
                                        <i class="awe-icon awe-icon-check"></i>
                                        Aller
                                    </label>
                                    <label>
                                        <input type="checkbox" checked>
                                        <i class="awe-icon awe-icon-check"></i>
                                        Aller / Retour
                                    </label>
                                    <label class="from">
                                        Station de départ
                                        <span class="form-item db">
                                            <i class="awe-icon awe-icon-marker-1"></i>
                                            <input type="text" value="Lyon">
                                        </span>
                                    </label>
                                    <label class="to">
                                        Station d'arrivée
                                        <span class="form-item db">
                                            <i class="awe-icon awe-icon-marker-1"></i>
                                            <input type="text" value="Borde">
                                        </span>
                                    </label>
                                    <label>Voyageur</label>
                                    <div class="form-item" >
                                        <select class="awe-select" style="width:58px!important;" name="travelers" id="travelers">
                                            <option selected="selected">1</option>
                                            <option>2</option>
                                            <option>3</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!-- END / WIDGET -->

                            <!-- WIDGET -->
                            <div class="widget widget_price_filter">
                                <h3><i class="awe-icon awe-icon-calendar" style="color:gray;margin-right:7px;"></i> Dates</h3>
                                    <div class="form-item">
                                        
                                        <input type="text" class="awe-calendar" value="Date de départ">
                                    </div>
                                    <div style="margin:18px;"></div>
                                    <div class="form-item">
                                       
                                        <input type="text" class="awe-calendar" value="Date d'arrivée">
                                    </div>
                                    <div style="margin:28px;"></div>
                            </div>
                            <!-- END / WIDGET -->

                            <!-- WIDGET -->
                            <div class="widget widget_has_radio_checkbox">
                                <h3><i class="awe-icon awe-icon-clock" style="color:gray;margin-right:7px;"></i> Horaires</h3>
                                <div class="form-item">
                                        
                                        <input type="text" class="awe-calendar" value="Heure de départ ">
                                        
                                    </div>
                                    <div style="margin:18px;"></div>
                                    <div class="form-item">
                                       
                                        <input type="text" class="awe-calendar" value="Heure d'arrivée">
                                    </div>
                                                                        <div style="margin:18px;"></div>
                                    
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jsondata.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/submit.js"></script>
	<script type="text/javascript">
	$('.toggle-menu-responsive').on('click', function(evt) {
        evt.preventDefault();
        $(this).toggleClass('toggle-active');
        $(document).find('.awe-navigation-responsive').toggleClass('awe-navigation-responsive-active');
    });
	</script>
	<%@ include file="include/footer.jsp" %>