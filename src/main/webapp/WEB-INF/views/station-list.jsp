<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<%@ include file="include/headerbis.jsp" %>
	  <!-- BREADCRUMB -->
            <section>
              <div class="container">
                <div class="breadcrumb">
                  <ul>
                    <li><a href="#">Accueil</a></li>
                    <li><span>Nos gares</span></li>
                  </ul>
                </div>
              </div>
            </section>
            <!-- BREADCRUMB -->
            <section class="product-detail">
              <div class="container">
                <h2 style="color:#2f91ea">Liste des stations de France</h2>
                <div class="row">
                  <div class="col-md-9">
                    <div class="filter-page__content">
                      <div class="filter-item-wrapper">
                        <!-- ITEM -->
                        <div class="hotel-item" style="min-height: 151px!important;">
                          <div class="item-media">
                            <div class="image-cover">
                              <img src="${pageContext.request.contextPath}/resources/images/img/2.jpg" alt="">
                            </div>
                          </div>
                          <div class="item-body">
                            <div class="item-title">
                              <h2>
                                <a href="#">Gare Lyon Part Dieu</a>
                              </h2>
                            </div>
                            <div class="item-address">
                              <i class="awe-icon awe-icon-marker-2"></i>
                              69003 Lyon | 16 rue desparmet 
                            </div>
                            <div class="item-footer">
                              <div class="item-rate">
                                <span>7.5 Good</span>
                              </div>
                              <div class="item-icon">
                                <i class="awe-icon awe-icon-wifi"></i>
                                <i class="awe-icon awe-icon-car"></i>
                                <i class="awe-icon awe-icon-key"></i>
                                <i class="awe-icon awe-icon-tv"></i>
                              </div>
                            </div>
                          </div>
                          <div class="item-price-more">
                            <div class="price">Prix :
                              <span class="amount">200 €</span>
                            </div>
                            <a href="#" class="awe-btn">PLUS D'INFOS</a>
                          </div>
                        </div>
                      </div>
                      <!-- END / PAGINATION -->
                    </div>
                  </div>
                  <div class="col-md-3">
                  <form>
                    <div class="detail-sidebar" style="margin-top: 0px!important;">
                        <div class="booking-info">
                          <div class="call-to-book">
                            <i class="awe-icon awe-icon-train"></i>
                            <span>RECHERCHER VOTRE TRAJET</span>
                          </div>
                          <div class="page-sidebar" style="margin-bottom:10px;">
                            <!-- WIDGET -->
                            <div class="widget widget_has_radio_checkbox_text">
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
                                <i class="awe-icon awe-icon-marker-1" style="margin:-9px 0px"></i>
                                <input type="text" value="Lyon">
                                </span>
                                </label>
                                <label class="to">
                                Station d'arrivée
                                <span class="form-item db">
                                <i class="awe-icon awe-icon-marker-1" style="margin:-9px 0px"></i>
                                <input type="text" value="Borde">
                                </span>
                                </label>
                                <label>Voyageur</label>
                                <div class="form-item" >
                                  <select class="awe-select" name="travelers" id="travelers">
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
                              <h3><i class="awe-icon awe-icon-calendar" style="background: white;margin-right:7px;"></i> Dates</h3>
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
                              <h3><i class="awe-icon awe-icon-clock" style="background: white;margin-right:7px;"></i> Horaires</h3>
                              <div class="form-item">
                                <input type="text" class="awe-calendar" value="Heure de départ ">
                              </div>
                              <div style="margin:18px;"></div>
                              <div class="form-item">
                                <input type="text" class="awe-calendar" value="Heure d'arrivée">
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
                      </div>
                    </div>
                  </div>
                  </form>
                </div>
              </div>
            </section>
	
	<%@ include file="include/footer.jsp" %>