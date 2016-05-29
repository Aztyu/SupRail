<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<%@ include file="include/headerbis.jsp" %>
	<link href="<c:url value="/resources/css/lib/wickedpicker.min.css" />" rel="stylesheet">
    <!-- HERO SECTION -->
    <section class="hero-section">
        <div id="slider-revolution">
            <ul>
                <li data-slotamount="7" data-masterspeed="500" data-title="Slide title 1">
                    <img src="${pageContext.request.contextPath}/resources/images/bg/1.jpg" data-bgposition="left center" data-duration="14000" data-bgpositionend="right center" alt="">

                    <div class="tp-caption sfb fadeout slider-caption-sub slider-caption-sub-1" data-x="500" data-y="230" data-speed="700" data-start="1500" data-easing="easeOutBack">
                      Last minute deal
                    </div>

                    <div class="tp-caption sfb fadeout slider-caption slider-caption-1" data-x="center" data-y="280" data-speed="700" data-easing="easeOutBack"  data-start="2000">Top discount Paris Hotels</div>
                    
                    <a href="#" class="tp-caption sfb fadeout awe-btn awe-btn-style3 awe-btn-slider" data-x="center" data-y="380" data-easing="easeOutBack" data-speed="700" data-start="2200">Book now</a>
                </li> 

                <li data-slotamount="7" data-masterspeed="500" data-title="Slide title 2">
                    <img src="${pageContext.request.contextPath}/resources/images/bg/2.jpg" data-bgposition="left center" data-duration="14000" data-bgpositionend="right center" alt="">

                    <div class="tp-caption  sft fadeout slider-caption-sub slider-caption-sub-2" data-x="center" data-y="220" data-speed="700" data-start="1500" data-easing="easeOutBack">
                      Check out the top weekly destination
                    </div>

                    <div class="tp-caption sft fadeout slider-caption slider-caption-2" data-x="center" data-y="260" data-speed="700" data-easing="easeOutBack"  data-start="2000">
                        Travel with us
                    </div>
                    
                    <a href="#" class="tp-caption sft fadeout awe-btn awe-btn-style3 awe-btn-slider" data-x="center" data-y="370" data-easing="easeOutBack" data-speed="700" data-start="2200">Book now</a>
                </li>

                <li data-slotamount="7" data-masterspeed="500" data-title="Slide title 3">
                    <img src="${pageContext.request.contextPath}/resources/images/bg/3.jpg" data-bgposition="left center" data-duration="14000" data-bgpositionend="right center" alt="">

                    <div class="tp-caption lfl fadeout slider-caption slider-caption-3" data-x="center" data-y="260" data-speed="700" data-easing="easeOutBack"  data-start="1500">
                        Gofar
                    </div>
                    
                    <div href="#" class="tp-caption lfr fadeout slider-caption-sub slider-caption-sub-3" data-x="center" data-y="365" data-easing="easeOutBack" data-speed="700" data-start="2000">Take you to every corner of the world</div>
                </li> 

            </ul>
        </div>
    </section>
    <!-- END / HERO SECTION -->


    <!-- SEARCH TABS -->
    <section>
        <div class="container">
            <div class="awe-search-tabs tabs">
                <ul>
                    <li>
                        <a href="#awe-search-tabs-4">
                            <i class="awe-icon awe-icon-train"></i>
                        </a>
                    </li>
                </ul>
                <div class="awe-search-tabs__content tabs__content">
                    <div id="awe-search-tabs-4" class="search-flight">
                        <h2>RECHERCHER UN TRAJET</h2>
                        <form id="searchTrain" action="${pageContext.request.contextPath}/searchTravel" method="POST">
                            <div class="form-group">
                                <div class="form-elements">
                                    <label>From</label>
                                    <div class="form-item">
                                        <i class="awe-icon awe-icon-marker-1"></i>
                                        <input type="text" id="StartCity" value="Ville de départ" required name="StartCity">
                                        <input type="hidden" value="" id="StartCityId" name="StartCityId">
                                    </div>
                                </div>
                                <div class="form-elements">
                                    <label>To</label>
                                    <div class="form-item">
                                        <i class="awe-icon awe-icon-marker-1"></i>
                                        <input type="text" id="EndCity" value="Ville d'arrivée" required name="EndCity">
                                        <input type="hidden" value="" id="EndCityId" name="EndCityId">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-elements">
                                    <label>Date/Heure départ</label>
                                    <div class="form-item">
                                        <i class="awe-icon awe-icon-calendar"></i>
                                        <input type="text" id="date_timepicker_start" value="20/06/2016" required name="date_timepicker_start">
                                    </div>
                                </div>
                                <div class="form-elements">
                                    <label>Date/Heure retour</label>
                                    <div class="form-item">
                                        <i class="awe-icon awe-icon-calendar"></i>
                                        <input type="text" id="date_timepicker_end" value="21/06/2016" required name="date_timepicker_end">
                                    </div>
                                </div>
                                <div class="form-elements">
                                    <label>Heure de départ</label>
                                    <div class="form-item">
                                        <i class="awe-icon awe-icon-clock"></i>
                                        <input type="text" name="timepicker_start" class="timepicker-24-hr hasWickedpicker" id="timepicker_start" required/>
                                    </div>
                                </div>
                                <div class="form-elements">
                                    <label>Heure de retour</label>
                                    <div class="form-item">
                                        <i class="awe-icon awe-icon-clock"></i>
                                        <input type="text" id="timepicker_end" name="timepicker_end" class="timepicker-24-hr hasWickedpicker" id="timepicker_end" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-elements">
                                    <label>Voyageur</label>
                                    <div class="form-item">
                                        <select class="awe-select" name="travelers" id="travelers">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <input type="submit" id="submitTravel" value="Rechercher">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END / SEARCH TABS -->

    <!-- MASONRY -->
    <section class="masonry-section-demo">
        <div class="container">
            <div class="destination-grid-content">
                <div class="section-title">
                    <h3>SUPRAIL dessert plus de <a href="#">34 stations</a> dans toute la France.</h3>
                </div>
                <div class="row">
                    <div class="awe-masonry">
                        <!-- GALLERY ITEM -->
                        <div class="awe-masonry__item">
                            <a href="#">
                                <div class="image-wrap image-cover">
                                    <img src="${pageContext.request.contextPath}/resources/images/img/1.jpg" alt="">
                                </div>
                            </a>
                            <div class="item-title">
                                <h2><a href="#">Paris</a></h2>
                                <div class="item-cat">
                                    <ul>
                                        <li><a href="#">France</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item-available">
                                <span class="count">21</span>
                                voyages
                            </div>
                        </div>
                        <!-- END / GALLERY ITEM -->
                        <!-- GALLERY ITEM -->
                        <div class="awe-masonry__item">
                            <a href="#">
                                <div class="image-wrap image-cover">
                                    <img src="${pageContext.request.contextPath}/resources/images/img/2.jpg" alt="">
                                </div>
                            </a>
                            <div class="item-title">
                                <h2><a href="#">Toulouse</a></h2>
                                <div class="item-cat">
                                    <ul>
                                        <li><a href="#">France</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item-available">
                                <span class="count">20</span>
                                voyages
                            </div>
                        </div>
                        <!-- END / GALLERY ITEM -->
                        <!-- GALLERY ITEM -->
                        <div class="awe-masonry__item">
                            <a href="#">
                                <div class="image-wrap image-cover">
                                    <img src="${pageContext.request.contextPath}/resources/images/img/3.jpg" alt="">
                                </div>
                            </a>
                            <div class="item-title">
                                <h2><a href="#">Lyon</a></h2>
                                <div class="item-cat">
                                    <ul>
                                        <li><a href="#">France</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item-available">
                                <span class="count">60</span>
                                voyages
                            </div>
                        </div>
                        <!-- END / GALLERY ITEM -->
                        <!-- GALLERY ITEM -->
                        <div class="awe-masonry__item">
                            <a href="#">
                                <div class="image-wrap image-cover">
                                    <img src="${pageContext.request.contextPath}/resources/images/img/4.jpg" alt="">
                                </div>
                            </a>
                            <div class="item-title">
                                <h2><a href="#">Lille</a></h2>
                                <div class="item-cat">
                                    <ul>
                                        <li><a href="#">France</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item-available">
                                <span class="count">29</span>
                                voyages
                            </div>
                        </div>
                        <!-- END / GALLERY ITEM -->
                        <!-- GALLERY ITEM -->
                        <div class="awe-masonry__item">
                            <a href="#">
                                <div class="image-wrap image-cover">
                                    <img src="${pageContext.request.contextPath}/resources/images/img/5.jpg" alt="">
                                </div>
                            </a>
                            <div class="item-title">
                                <h2><a href="#">Bordeaux</a></h2>
                                <div class="item-cat">
                                    <ul>
                                        <li><a href="#">France</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item-available">
                                <span class="count">89</span>
                                voyages
                            </div>
                        </div>
                        <!-- END / GALLERY ITEM -->
                    </div>
                </div>
                <div class="more-destination">
                    <a href="#">Découvrez toutes les villes que nous desservons</a>
                </div>
            </div>
        </div>
    </section>
    <!-- END / MASONRY -->


    <section class="sale-flights-section-demo">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="sale-flights-tabs tabs">
                        <ul>
                        
                            <li><a href="#sale-flights-tabs-2">Les derniers voyages recherchés</a></li>
                        </ul>
                        <div class="sale-flights-tabs__content tabs__content">

                            <div id="sale-flights-tabs-2">
                                
                                <table class="sale-flights-tabs__table">
                                    <tbody>
                                        <tr>
                                            <td class="sale-flights-tabs__item-flight">
                                                <div class="image-wrap">
                                                    <img src="${pageContext.request.contextPath}/resources/images/thumb/underground.png" alt="">
                                                </div>
                                                <div class="td-content">
                                                    <div class="title">
                                                        <h3>Lufthansa</h3>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <span class="from">HAN <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">SVO</span>
                                                        </li>
                                                        <li>
                                                            <span class="from">SVO <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">JFK</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="line"></div>
                                            </td>
                                            <td class="sale-flights-tabs__item-depart">
                                                <h4>Depart</h4>
                                                <ul>
                                                    <li>10:25</li>
                                                    <li>10:25</li>
                                                </ul>
                                                <div class="line"></div>
                                            </td>
                                            <td class="sale-flights-tabs__item-arrive">
                                                <h4>Arrivée</h4>
                                                <ul>
                                                    <li>12:30</li>
                                                    <li>12:30</li>
                                                </ul>
                                                <div class="line"></div>
                                            </td>
                                            <td class="sale-flights-tabs__item-duration">
                                                <h4>Durée</h4>
                                                <ul>
                                                    <li>38h5m</li>
                                                    <li>38h5m</li>
                                                </ul>
                                                <div class="line"></div>
                                            </td>
                                            <td class="sale-flights-tabs__item-choose">
                                                <span class="amount">$5,923</span>
                                                <a href="#" class="awe-btn">Choose</a>
                                                <div class="line"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="sale-flights-tabs__item-flight">
                                                <div class="image-wrap">
                                                    <img src="${pageContext.request.contextPath}/resources/images/thumb/underground.png" alt="">
                                                </div>
                                                <div class="td-content">
                                                    <div class="title">
                                                        <h3>Lufthansa</h3>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <span class="from">HAN <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">SVO</span>
                                                        </li>
                                                        <li>
                                                            <span class="from">SVO <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">JFK</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="sale-flights-tabs__item-depart">
                                                <h4>Depart</h4>
                                                <ul>
                                                    <li>10:25</li>
                                                    <li>10:25</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-arrive">
                                                <h4>Arrivée</h4>
                                                <ul>
                                                    <li>12:30</li>
                                                    <li>12:30</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-duration">
                                                <h4>Durée</h4>
                                                <ul>
                                                    <li>38h5m</li>
                                                    <li>38h5m</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-choose">
                                                <span class="amount">$5,923</span>
                                                <a href="#" class="awe-btn">Choose</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="sale-flights-tabs__item-flight">
                                                <div class="image-wrap">
                                                    <img src="${pageContext.request.contextPath}/resources/images/thumb/underground.png" alt="">
                                                </div>
                                                <div class="td-content">
                                                    <div class="title">
                                                        <h3>Lufthansa</h3>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <span class="from">HAN <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">SVO</span>
                                                        </li>
                                                        <li>
                                                            <span class="from">SVO <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">JFK</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="sale-flights-tabs__item-depart">
                                                <h4>Depart</h4>
                                                <ul>
                                                    <li>10:25</li>
                                                    <li>10:25</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-arrive">
                                                <h4>Arrivée</h4>
                                                <ul>
                                                    <li>12:30</li>
                                                    <li>12:30</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-duration">
                                                <h4>Durée</h4>
                                                <ul>
                                                    <li>38h5m</li>
                                                    <li>38h5m</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-choose">
                                                <span class="amount">$5,923</span>
                                                <a href="#" class="awe-btn">Choose</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="sale-flights-tabs__item-flight">
                                                <div class="image-wrap">
                                                    <img src="${pageContext.request.contextPath}/resources/images/thumb/underground.png" alt="">
                                                </div>
                                                <div class="td-content">
                                                    <div class="title">
                                                        <h3>Lufthansa</h3>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <span class="from">HAN <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">SVO</span>
                                                        </li>
                                                        <li>
                                                            <span class="from">SVO <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">JFK</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="sale-flights-tabs__item-depart">
                                                <h4>Depart</h4>
                                                <ul>
                                                    <li>10:25</li>
                                                    <li>10:25</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-arrive">
                                                <h4>Arrivée</h4>
                                                <ul>
                                                    <li>12:30</li>
                                                    <li>12:30</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-duration">
                                                <h4>Durée</h4>
                                                <ul>
                                                    <li>38h5m</li>
                                                    <li>38h5m</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-choose">
                                                <span class="amount">$5,923</span>
                                                <a href="#" class="awe-btn">Choose</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="sale-flights-tabs__item-flight">
                                                <div class="image-wrap">
                                                    <img src="${pageContext.request.contextPath}/resources/images/thumb/underground.png" alt="">
                                                </div>
                                                <div class="td-content">
                                                    <div class="title">
                                                        <h3>Lufthansa</h3>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <span class="from">HAN <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">SVO</span>
                                                        </li>
                                                        <li>
                                                            <span class="from">SVO <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">JFK</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="sale-flights-tabs__item-depart">
                                                <h4>Depart</h4>
                                                <ul>
                                                    <li>10:25</li>
                                                    <li>10:25</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-arrive">
                                                <h4>Arrivée</h4>
                                                <ul>
                                                    <li>12:30</li>
                                                    <li>12:30</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-duration">
                                                <h4>Durée</h4>
                                                <ul>
                                                    <li>38h5m</li>
                                                    <li>38h5m</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-choose">
                                                <span class="amount">$5,923</span>
                                                <a href="#" class="awe-btn">Choose</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="sale-flights-tabs__item-flight">
                                                <div class="image-wrap">
                                                    <img src="${pageContext.request.contextPath}/resources/images/thumb/underground.png" alt="">
                                                </div>
                                                <div class="td-content">
                                                    <div class="title">
                                                        <h3>Lufthansa</h3>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <span class="from">HAN <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">SVO</span>
                                                        </li>
                                                        <li>
                                                            <span class="from">SVO <i class="awe-icon awe-icon-arrow-right"></i></span>
                                                            <span class="to">JFK</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="sale-flights-tabs__item-depart">
                                                <h4>Depart</h4>
                                                <ul>
                                                    <li>10:25</li>
                                                    <li>10:25</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-arrive">
                                                <h4>Arrivée</h4>
                                                <ul>
                                                    <li>12:30</li>
                                                    <li>12:30</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-duration">
                                                <h4>Durée</h4>
                                                <ul>
                                                    <li>38h5m</li>
                                                    <li>38h5m</li>
                                                </ul>
                                            </td>
                                            <td class="sale-flights-tabs__item-choose">
                                                <span class="amount">$5,923</span>
                                                <a href="#" class="awe-btn">Choose</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="awe-services">
                        <h2>Nos services</h2>
                        <ul class="awe-services__list">
                            <li>
                                <a href="#">
                                    <i class="awe-icon awe-icon-check"></i>
                                    <i class="awe-icon awe-icon-arrow-right"></i>
                                    100 voyages par jours
                                    <span>En France et en Europe</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="awe-icon awe-icon-check"></i>
                                    <i class="awe-icon awe-icon-arrow-right"></i>
                                    Satisfaction 100%
                                    <span>De clients satisfaient</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="awe-icon awe-icon-check"></i>
                                    <i class="awe-icon awe-icon-arrow-right"></i>
                                    24h/7j
                                    <span>N'importe quand, n'importe ou</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="awe-icon awe-icon-check"></i>
                                    <i class="awe-icon awe-icon-arrow-right"></i>
                                    7/7j
                                    <span>Service client</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="awe-icon awe-icon-check"></i>
                                    <i class="awe-icon awe-icon-arrow-right"></i>
                                    Flexibilité, tracabilité
                                    <span>Un suivi personnalisé</span>
                                </a>
                            </li>
                        </ul>
                        <div class="video-wrapper embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="https://player.vimeo.com/video/50880604"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


	<!-- REVOLUTION DEMO -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/revslider-demo/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/revslider-demo/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/min/wickedpicker.min.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/time_picker.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slider.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jsondata.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/submit.js"></script>
	<%@ include file="include/footer.jsp" %>
	
	</body>
</html>