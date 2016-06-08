<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<%@ include file="include/headerbis.jsp" %>
	<section>
            <div class="container">
                <div class="breadcrumb">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/index">Accueil</a></li>
                        <li><a href="${pageContext.request.contextPath}/station-list">Gare</a></li>
                        <li><span>Lyon - Part dieu</span></li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- BREADCRUMB -->

        
        <section class="product-detail">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="product-detail__info">
                        <div class="category-heading-content" style="padding-top:0px!important;padding-bottom:10px!important;">
                            <h3>${stationinfo.city}</h3><br>
                            <h2 style="font-size:20px;">${stationinfo.name}<a href="#"><i class="awe-icon awe-icon-info"></i></a></h2>
                        </div>
                            <div class="product-address">
                                <span>${stationinfo.address} | <strong>${stationinfo.country}</strong></span>
                            </div>
                            <div class="product-email" style="">
                                <div class="call-to-book">
                                    <i class="awe-icon awe-icon-phone"></i>
                                    <em style="color:#0091ea">Contacter la gare</em>
                                    <span>+1-888-8765-1234</span>
                                </div>
                            </div>
                            <div class="product-descriptions">
                            <span style="font-weight:bold;">A propos :</span>
                                <p>${stationinfo.description}</p>
                            </div>
                            
                            <div class="property-highlights">
                                <h3>Les services à proximité</h3>
                                <div class="property-highlights__content">
                                    <div class="item">
                                        <i class="awe-icon awe-icon-wifi"></i>
                                        <span>Wifi</span>
                                    </div>
                                    <div class="item">
                                        <i class="awe-icon awe-icon-car"></i>
                                        <span>Taxi</span>
                                    </div>
                                    <div class="item">
                                        <i class="awe-icon awe-icon-food"></i>
                                        <span>Restaurations</span>
                                    </div>
                                    <div class="item">
                                        <i class="awe-icon awe-icon-key"></i>
                                        <span>Stockages</span>
                                    </div>
                                    <div class="item">
                                        <i class="awe-icon awe-icon-laundry"></i>
                                        <span>Magasins</span>
                                    </div>
                                    <div class="item">
                                        <i class="awe-icon awe-icon-shower"></i>
                                        <span>Toilettes / Douches</span>
                                    </div>
                                    <div class="item">
                                        <i class="awe-icon awe-icon-beds"></i>
                                        <span>Hôtels</span>
                                    </div>
                                    <div class="item">
                                        <i class="awe-icon awe-icon-pool"></i>
                                        <span>Piscines</span>
                                    </div>
                                    <div class="item">
                                        <i class="awe-icon awe-icon-tv"></i>
                                        <span>Salles détentes</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
                        <div class="product-detail__gallery">
                            <div class="product-slider-wrapper">
                                <div class="product-slider">
                                    <div class="item">
                                        <img src="${pageContext.request.contextPath}/resources/images/villes/${stationinfo.id}.jpg" alt="">
                                    </div>                                   
                                </div>
                            </div>
  
                            <h3 style="font-size: 20px;font-weight: 600;color: #0091ea;border-bottom: 2px solid #D4D4D4;padding: 8px 0;margin-top: 15px;">Localisation de la gare</h3>
                            <div class="tour-map">
                                <div data-latlong="${stationinfo.latitude}, ${stationinfo.longitude}"></div>
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
	
	