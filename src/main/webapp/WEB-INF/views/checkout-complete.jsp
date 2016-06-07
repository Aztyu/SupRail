<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%@ include file="include/headerbis.jsp" %>
<!-- PAGE WRAP -->
<div id="page-wrap">
    <!-- PRELOADER -->
  <div class="preloader"></div>
  <!-- END / PRELOADER -->
  
  <section class="checkout-section-demo">
      <div class="container">
          <div class="row">
              <div class="col-lg-12">
                  <div class="checkout-page__top">
                      <div class="title">
                          <h1 class="text-uppercase">PANIER</h1>
                      </div>
                      <span class="phone">Service Client: +1-888-8765-1234</span>
                  </div>
              </div>
              <div class="col-lg-3">
                  <div class="checkout-page__sidebar">
                      <ul>
                          <li><a href="${pageContext.request.contextPath}/user/historyUser">Votre panier</a></li>
                          <li><a href="${pageContext.request.contextPath}/user/updateUser">Vos informations</a></li>
                          <li class="current"><a href="${pageContext.request.contextPath}/checkout-complete">Commande terminée</a></li>
                      </ul>
                  </div>
              </div>
              <%@include file="include/receipt.jsp" %>
              <div class="your-cart-footer text-right">
                 <a href="#" class="awe-btn awe-btn-style3">Retour à l'accueil</a>
                 <a href="http://api.html2pdfrocket.com/pdf?value=http://alticraft.fr:8080/suprail/receipt&apikey=feee5ee0-6f25-4023-b269-4f03013855ac">Télécharger en PDF</a>
                 <a href="http://api.html2pdfrocket.com/pdf?value=${pageContext.request.contextPath}/receipt&apikey=feee5ee0-6f25-4023-b269-4f03013855ac">Télécharger en PDF</a>
             </div>
          </div>
      </div>
  </section>
 <%@ include file="include/footer.jsp" %>