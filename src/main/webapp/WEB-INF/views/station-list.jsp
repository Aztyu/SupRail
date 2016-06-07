<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<%@ include file="include/headerbis.jsp" %>
		<link href="<c:url value="/resources/css/lib/wickedpicker.min.css" />" rel="stylesheet">
	
	  <!-- BREADCRUMB -->
            <section>
              <div class="container">
                <div class="breadcrumb">
                  <ul>
                    <li><a href="${pageContext.request.contextPath}/index">Accueil</a></li>
                    <li><span><a href="">Nos gares</a></span></li>
                  </ul>
                </div>
              </div>
            </section>
            <!-- BREADCRUMB -->
            <section class="product-detail">
              <div class="container">
              <div class="blog-heading-content text-uppercase" style="padding-top:0px;padding-bottom:15px;">
                    <h2>Liste des stations de France</h2>
                </div>
                <div class="row">
                  <div class="col-md-9">
                    <div class="filter-page__content">
                    <c:forEach var="trip" items="${stationList}">
                      <div class="filter-item-wrapper">
                        <!-- ITEM -->
                        <div class="hotel-item" style="min-height: 151px!important;">
                          <div class="item-media">
                            <div class="image-cover">
                              <img src="${pageContext.request.contextPath}/resources/images/villes/${trip.id}.jpg" alt="">
                            </div>
                          </div>
                          <div class="item-body">
                            <div class="item-title">
                              <h2>
                                <a href="${pageContext.request.contextPath}/station-info/${trip.id}" style="color:#2f91ea">${trip.name }</a>
                              </h2>
                            </div>
                            <div class="item-address">
                              <i class="awe-icon awe-icon-marker-2"></i>
                              ${trip.address } | ${trip.zipcode }
                            </div>
                            <div class="item-footer">
                              <div class="item-icon" style="float:left;">
                                <i class="awe-icon awe-icon-wifi"></i>
                                <i class="awe-icon awe-icon-car"></i>
                                <i class="awe-icon awe-icon-key"></i>
                                <i class="awe-icon awe-icon-tv"></i>
                              </div>
                            </div>
                          </div>
                          <div class="item-price-more">
							<img src="/suprail/resources/images/logo.png" alt="">
                            <a href="${pageContext.request.contextPath}/station-info/${trip.id}" class="awe-btn">PLUS D'INFOS</a>
                          </div>
                        </div>
                      </div>
                      
                      <!-- END / PAGINATION -->
                      </c:forEach>
                      
                      <div class="page__pagination">
                        <c:forEach var="i" begin="1" end="4">
	                      <a href="${pageContext.request.contextPath}/station-list?page=${i}" <c:if test="${i eq page}">style="background-color:#0091ea;color:white"</c:if> >${i}</a>
                      	</c:forEach>
                       </div>
                       
                    </div>
                  </div>
                  <div class="col-md-3">
                  
                    <div class="detail-sidebar" style="margin-top: 0px!important;">
                        <div class="booking-info">
                        <form id="searchTrain" action="${pageContext.request.contextPath}/searchTravel" method="POST">
                          <div class="call-to-book">
                            <i class="awe-icon awe-icon-train"></i>
                            <span>RECHERCHER VOTRE TRAJET</span>
                          </div>
                          <div class="page-sidebar" style="margin-bottom:10px;">
                            <!-- WIDGET -->
                            <div class="widget widget_has_radio_checkbox_text">
                              <div class="widget_content">
                                <label>
	                                <input type="checkbox" id="checkTravel" checked="" value="Value1">
	                                <i class="awe-icon awe-icon-check"></i>
	                                Aller/Retour
	                            </label>
	                                <label class="from">
		                                Station de départ
		                                <span class="form-item db">
		                                <i class="awe-icon awe-icon-marker-1" style="margin:-9px 0px"></i>
		                                <input type="text" id="StartCity" value="Ville de départ" required name="StartCity">
		                                <input type="hidden" value="" id="StartCityId" name="StartCityId">
		                                </span>
	                                </label>
	                                <label class="to">
		                                Station d'arrivée
		                                <span class="form-item db">
		                                <i class="awe-icon awe-icon-marker-1" style="margin:-9px 0px"></i>
		                                <input type="text" id="EndCity" value="Ville d'arrivée" required name="EndCity">
		                                <input type="hidden" value="" id="EndCityId" name="EndCityId">
		                                </span>
	                                </label>
	                                <label>Voyageur</label>
		                                <div class="form-item" >
		                                  <select class="awe-select" name="travelers" id="travelers">
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
	                              <h3><i class="awe-icon awe-icon-calendar" style="background: white;margin-right:7px;"></i> Dates</h3>
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
	                              <h3><i class="awe-icon awe-icon-clock" style="background: white;margin-right:7px;"></i> Horaires</h3>
	                              <div class="form-item">
	                                 <input type="text" name="timepicker_start" class="timepicker-24-hr hasWickedpicker" id="timepicker_start" />
	                              </div>
	                              <div style="margin:18px;"></div>
	                              <div class="form-item clock_end">
	                                 <input type="text" id="timepicker_end" name="timepicker_end" class="timepicker-24-hr hasWickedpicker" id="timepicker_end" required>
	                              </div>
	                              <div style="margin:18px;"></div>
	                            </div>
	                          </div>
	                          <div class="form-submit">
	                            <div class="add-to-cart">
	                              <button type="submit">
	                              <i class="awe-icon awe-icon-cart"></i>Rechercher
	                              </button>
	                            </div>
	                          </div>
                          </form>
                      </div>
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
			<script type="text/javascript">
				$('.toggle-menu-responsive').on('click', function(evt) {
			        evt.preventDefault();
			        $(this).toggleClass('toggle-active');
			        $(document).find('.awe-navigation-responsive').toggleClass('awe-navigation-responsive-active');
			    });
				</script>
	<%@ include file="include/footer.jsp" %>