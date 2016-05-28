<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<%@ include file="include/headerbis.jsp" %>
	
	        <!-- HEADING PAGE -->
        <section class="awe-parallax category-heading-section-demo">
            <div class="awe-overlay"></div>
            <div class="container">
                <div class="category-heading-content category-heading-content__2 text-uppercase">
                    <!-- BREADCRUMB -->
                    <div class="breadcrumb">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><span>Train</span></li>
                        </ul>
                    </div>
                    <!-- BREADCRUMB -->
                    <div class="find">
                        <h2 class="text-center">RECHERCHER UN TRAJET</h2>
                        <form>
                            <div class="form-group">
                                <div class="form-elements">
                                    <label>From</label>
                                    <div class="form-item">
                                        <i class="awe-icon awe-icon-marker-1"></i>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="form-elements">
                                    <label>To</label>
                                    <div class="form-item">
                                        <i class="awe-icon awe-icon-marker-1"></i>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="form-elements">
                                    <label>Depart on</label>
                                    <div class="form-item">
                                        <i class="awe-icon awe-icon-calendar"></i>
                                        <input type="text" class="awe-calendar" value="Date">
                                    </div>
                                </div>
                                <div class="form-elements">
                                    <label>Return on</label>
                                    <div class="form-item">
                                        <i class="awe-icon awe-icon-calendar"></i>
                                        <input type="text" class="awe-calendar" value="Date">
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <input type="submit" value="Find My Train">
                                </div>
                            </div>
                        </form>
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

                            <h4> SÉLECTIONNEZ VOTRE TRAJET</h4>
                                <!-- ITEM -->
                                <div class="flight-item">
                                    <div class="item-media">
                                        <div class="image-cover">
                                            <img src="images/flight/1.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="item-body">
                                        <div class="item-title">
                                            <h2>
                                                <a href="train-detail.html" style="color:#0091EA!important">Lufthansa : Hanoi - NYC</a>
                                            </h2>
                                        </div>
                                        <table class="item-table">
                                            <thead>
                                                <tr>
                                                    <th class="route">Trajet</th>
                                                    <th class="depart">Depart</th>
                                                    <th class="arrive">Arrivée</th>
                                                    <th class="duration">Durée</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="route">
                                                        <ul>
                                                            <li>Lyon<i class="awe-icon awe-icon-arrow-right"></i></li>
                                                            <li>Bordeaux<i class="awe-icon awe-icon-arrow-right"></i></li>
                                                        </ul>
                                                    </td>
                                                    <td class="depart">
                                                        <span>10:25</span>
                                                        <span class="date">14 Fevrier</span>
                                                    </td>
                                                    <td class="arrive">
                                                        <span>12:30</span>
                                                    </td>
                                                    <td class="duration">
                                                        <span>8h5m</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="route">
                                                        <ul>
                                                            <li>Bordeaux<i class="awe-icon awe-icon-arrow-right"></i></li>
                                                            <li>Lyon<i class="awe-icon awe-icon-arrow-right"></i></li>
                                                        </ul>
                                                    </td>
                                                    <td class="depart">
                                                        <span>10:25</span>
                                                    </td>
                                                    <td class="arrive">
                                                        <span>12:30</span>
                                                        <span class="date">15 Mar</span>
                                                    </td>
                                                    <td class="duration">
                                                        <span>8h5m</span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="item-price-more">
                                        <div class="price" style="color:#0091EA!important">
                                            <span class="amount">86 €</span>
                                            Taxes incluses
                                        </div>
                                        <a href="train-detail.html" class="awe-btn">Ajouter</a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="flight-item">
                                    <div class="item-media">
                                        <div class="image-cover">
                                            <img src="images/flight/2.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="item-body">
                                        <div class="item-title">
                                            <h2>
                                                <a href="train-detail.html">Cathay Pacific : Hanoi - NYC</a>
                                            </h2>
                                        </div>
                                        <table class="item-table">
                                            <thead>
                                                <tr>
                                                    <th class="route">Route</th>
                                                    <th class="depart">Depart</th>
                                                    <th class="arrive">Arrive</th>
                                                    <th class="duration">Duration</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="route">
                                                        <ul>
                                                            <li>HAN <i class="awe-icon awe-icon-arrow-right"></i></li>
                                                            <li>SVO <i class="awe-icon awe-icon-arrow-right"></i></li>
                                                            <li>JFK <i class="awe-icon awe-icon-arrow-right"></i></li>
                                                        </ul>
                                                    </td>
                                                    <td class="depart">
                                                        <span>10:25</span>
                                                        <span class="date">14 Feb</span>
                                                    </td>
                                                    <td class="arrive">
                                                        <span>12:30</span>
                                                    </td>
                                                    <td class="duration">
                                                        <span>38h5m</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="route">
                                                        <ul>
                                                            <li>JFK <i class="awe-icon awe-icon-arrow-right"></i></li>
                                                            <li>SVO <i class="awe-icon awe-icon-arrow-right"></i></li>
                                                            <li>HAN <i class="awe-icon awe-icon-arrow-right"></i></li>
                                                        </ul>
                                                    </td>
                                                    <td class="depart">
                                                        <span>10:25</span>
                                                    </td>
                                                    <td class="arrive">
                                                        <span>12:30</span>
                                                        <span class="date">15 MAr</span>
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
                            <!-- WIDGET -->
                            <div class="widget widget_has_radio_checkbox_text">
                                <h3>Votre recherche</h3>
                                <div class="widget_content">
                                    <label>
                                        <input type="checkbox">
                                        <i class="awe-icon awe-icon-check"></i>
                                        Aller
                                    </label>
                                    <label>
                                        <input type="checkbox">
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
                                </div>
                            </div>
                            <!-- END / WIDGET -->

                            <!-- WIDGET -->
                            <div class="widget widget_price_filter">
                                <h3>Price Level</h3>
                                <div class="price-slider-wrapper">
                                    <div class="price-slider"></div>
                                    <div class="price_slider_amount">
                                        <div class="price_label">
                                            <span class="from"></span> - <span class="to"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END / WIDGET -->

                            <!-- WIDGET -->
                            <div class="widget widget_has_radio_checkbox">
                                <h3>Star Rating</h3>
                                <ul>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            <span class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            <span class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            <span class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            <span class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            <span class="rating">
                                                <i class="fa fa-star"></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            <span class="rating">
                                                Unrated
                                            </span>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                            <!-- END / WIDGET -->

                            <!-- WIDGET -->
                            <div class="widget widget_has_radio_checkbox">
                                <h3>Distance</h3>
                                <ul>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Near Airport
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Near Shopping District
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Near Attractions
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Near Traffic station
                                        </label>
                                    </li>
                                </ul>
                            </div>
                            <!-- END / WIDGET -->

                            <!-- WIDGET -->
                            <div class="widget widget_has_radio_checkbox">
                                <h3>Service Include</h3>
                                <ul>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Room service
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Laundry
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Meal at room
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Wifi &amp; internet
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Parking lot
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            TV and appliances
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Pool
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox">
                                            <i class="awe-icon awe-icon-check"></i>
                                            Gym and Spa
                                        </label>
                                    </li>
                                </ul>
                            </div>
                            <!-- END / WIDGET -->

                            <!-- WIDGET -->
                            <div class="widget widget_product_tag_cloud">
                                <h3>Tags</h3>
                                <div class="tagcloud">
                                    <a href="#">Hotel</a>
                                    <a href="#">Motel</a>
                                    <a href="#">Hostel</a>
                                    <a href="#">Homestay</a>
                                </div>
                            </div>
                            <!-- END / WIDGET -->

                        </div>
                    </div>
                </div>
            </div>
        </section>
		
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/min/wickedpicker.min.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/time_picker.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jsondata.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/submit.js"></script>
	<%@ include file="include/footer.jsp" %>