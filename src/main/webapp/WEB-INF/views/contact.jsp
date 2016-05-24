<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="include/headerbis.jsp" %>
 <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="contact-page__map">
                            <div data-latlong="45.7357733, 4.87778030000004"></div>
                        </div>
                    </div>
                    <div class="col-md-6 col-md-offset-1">
                        <div class="contact-page__form">
                            <div class="title">
                                <span>Besoin d'informations ?</span>
                                <h2>CONTACTEZ-NOUS</h2>
                            </div>
                          
                            <form class="contact-form" method="post">
                                <div class="form-item">
                                    <input type="text" value="Votre nom *" name="name" required>
                                </div>
                                <div class="form-item">
                                    <input type="text" value="Votre prénom *" name="subject" required>
                                </div>
                                <div class="form-item">
                                    <input type="email" value="Votre email *" name="email" required>
                                </div>
                                
                                <div class="form-item form-captcha">
                                    <img src="images/img/captcha-demo.png" alt="" class="wpcf7-captchac">
                                    <span class="wpcf7-form-control-wrap">
                                        <input type="text" value="Captcha" required>
                                    </span>
                                </div>
                                <div class="form-textarea-wrapper">
                                    <textarea name="message" required>Votre message...</textarea>
                                </div>
                                <div class="form-actions">
                                    <input type="submit" value="Envoyer" class="submit-contact">
                                </div>
                                <div id="contact-content"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<%@ include file="include/footer.jsp" %>