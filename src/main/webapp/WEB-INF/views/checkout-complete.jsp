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
                    <div class="col-lg-9">
                        <div class="checkout-page__content">
                            <div class="complete-content">
                                <div class="woocommerce-info">
                                    Merci pour votre achat ! Nous avons bien reçu votre demande.
                                </div>
                                <div class="your-order">
                                    <h2>Votre commande</h2>
                                    <table class="order-table">
                                        <thead>
                                            <tr>
                                                <th>Commande</th>
                                                <th>Date</th>
                                                <th>Total</th>
                                                <th>Méthode de paiement</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td># 5365</td>
                                                <td>27 Feb 2015</td>
                                                <td>$ 467.909</td>
                                                <td>Transfert bancaire</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="billing-info">
                                        <h3>Informations de facturation</h3>
                                        <table class="billing-table">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <h4 class="title">Nom du client</h4>
                                                        <p>All in One</p>
                                                    </td>
                                                    <td>
                                                        <h4 class="title">Nom de la société</h4>
                                                        <p>All in One</p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h4 class="title">Email</h4>
                                                        <p><a href="#">AllinOne@mail.com</a></p>
                                                    </td>
                                                    <td>
                                                        <h4 class="title">Téléphone</h4>
                                                        <p>085654523656</p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <h4 class="title">Adresse</h4>
                                                        <p>Boudin ham hock chicken,. Leberkas ham sausage doner pastrami porchetta tri-tip boudin shankle. Meatball shoulder rump spare ribs tongue venison short</p>
                                                    </td>
                                                    <td>
                                                        <h4 class="title">Adresse de livraison</h4>
                                                        <p>Boudin ham hock chicken,. Leberkas ham sausage doner pastrami porchetta tri-tip boudin shankle. Meatball shoulder rump spare ribs tongue venison short</p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="cart-detail">
                                        <h3>Détails de la commande</h3>
                                        <table class="cart-detail-table">
                                            <tbody>
                                                <tr>
                                                    <th>Product Category 1 eg.Hotel</th>
                                                    <td>67.909 €</td>
                                                </tr>
                                                <tr>
                                                    <th>Product Category 1 eg.Hotel</th>
                                                    <td>67.909 €</td>
                                                </tr>
                                                <tr>
                                                    <th>Product Category 1 eg.Hotel</th>
                                                    <td>67.909 €</td>
                                                </tr>
                                                <tr>
                                                    <th>Product Category 1 eg.Hotel</th>
                                                    <td>67.909 €</td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>Sous Total</th>
                                                    <td>467.909 €</td>
                                                </tr>
                                                <tr>
                                                    <th>Frais de port</th>
                                                    <td>90 €</td>
                                                </tr>
                                                <tr class="order-total">
                                                    <th>Total</th>
                                                    <td><span class="amount">467.90 €</span></td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                    <div class="your-cart-footer text-right">
                                        <a href="#" class="awe-btn awe-btn-style3">Retour à l'accueil</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>