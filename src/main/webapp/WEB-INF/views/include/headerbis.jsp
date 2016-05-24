<head>
    <meta charset="utf-8">
    
    <!-- TITLE -->
    <title>SUPRAIL - Rail of success</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="google-signin-client_id" content="62410611142-3mese73l1crnh0hc3p5rdr4k0eicdpb5.apps.googleusercontent.com">

    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,400,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oswald:400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>

    <!-- CSS LIBRARY -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/lib/bootstrap.min.css"/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/lib/font-awesome.min.css"/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/lib/awe-booking-font.css"/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/lib/owl.carousel.css"/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/lib/jquery-ui.css"/> ">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/revslider-demo/css/settings.css"/> ">
    <!-- MAIN STYLE -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/> "> 
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/demo.css"/> "> 
   	<link id="colorreplace" rel="stylesheet" type="text/css" href="<c:url value="/resources/css/colors/blue.css"/> ">

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lib/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lib/masonry.pkgd.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lib/jquery.parallax-1.1.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lib/jquery.owl.carousel.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lib/theia-sticky-sidebar.js"></script>
    <script type='text/javascript' src="${pageContext.request.contextPath}/resources/js/lib/jquery-ui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
    
    <!-- CONNEXION GOOGLE API -->
    <script src="https://apis.google.com/js/platform.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/connexion.js"></script>	
    
    
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
</head>
<body>
    <!-- PAGE WRAP -->
    <div id="page-wrap">
        <!-- PRELOADER -->
        <div class="preloader"></div>
        <!-- END / PRELOADER -->

        
        <!-- HEADER PAGE -->
        <header id="header-page">
            <div class="header-page__inner">
                <div class="container">
                    <!-- LOGO -->
                    <div class="logo">
                        <a href="index.html"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt=""></a>
                    </div>
                    <!-- END / LOGO -->
                    
                    <!-- NAVIGATION -->
                    <nav class="navigation awe-navigation" data-responsive="1200">
                        <ul class="menu-list">
                            <li class="menu-item-has-children">
                                <a href="index.html">Accueil</a>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="destinations-list.html">Destinations</a>
                                <ul class="sub-menu">
                                    <li><a href="destinations-list.html">List</a></li>
                                    <li><a href="destinations-grid.html">Grid</a></li>
                                    <li class="menu-item-has-children">
                                        <a href="destinations-trip.html">Detail</a>
                                        <ul class="sub-menu">
                                            <li><a href="destinations-trip.html">Trips in destination</a></li>
                                            <li><a href="destinations-hotel.html">Hotels in destination</a></li>
                                            <li><a href="destinations-attraction.html">Attraction in destination</a></li>
                                            <li><a href="destinations-flight.html">Flights in destination</a></li>
                                            <li><a href="destinations-train.html">Train in destination</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="destinations-list-dark.html">List (Dark)</a></li>
                                    <li><a href="destinations-grid-dark.html">Grid (Dark)</a></li>
                                    <li class="menu-item-has-children">
                                        <a href="destinations-trip.html">Detail (Dark)</a>
                                        <ul class="sub-menu">
                                            <li><a href="destinations-trip-dark.html">Trips in destination</a></li>
                                            <li><a href="destinations-hotel-dark.html">Hotels in destination</a></li>
                                            <li><a href="destinations-attraction-dark.html">Attraction in destination</a></li>
                                            <li><a href="destinations-flight-dark.html">Flights in destination</a></li>
                                            <li><a href="destinations-train-dark.html">Train in destination</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="train.html">Train</a>
                                <ul class="sub-menu">
                                    <li><a href="train.html">Train</a></li>
                                    <li><a href="train-detail.html">Train Detail</a></li>
                                    <li><a href="train-dark.html">Train (Dark)</a></li>
                                    <li><a href="train-detail-dark.html">Train Detail (Dark)</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="attraction.html">Attraction</a>
                                <ul class="sub-menu">
                                    <li><a href="attraction.html">Attraction</a></li>
                                    <li><a href="attraction-detail.html">Attraction Detail</a></li>
                                    <li><a href="attraction-dark.html">Attraction (Dark)</a></li>
                                    <li><a href="attraction-detail-dark.html">Attraction Detail (Dark)</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children current-menu-parent">
                                <a href="#">Pages</a>
                                <ul class="sub-menu">
                                    
                                    <li class="menu-item-has-children current-menu-parent">
                                        <a href="login.html">Log In</a>
                                        <ul class="sub-menu">
                                            <li><a href="login.html">Log In</a></li>
                                            <li class="current-menu-item"><a href="register.html">Register</a></li>
                                            <li><a href="login.html">Log In (Dark)</a></li>
                                            <li><a href="register.html">Register (Dark)</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="checkout-yourcart.html">Checkout</a>
                                        <ul class="sub-menu">
                                            <li><a href="checkout-yourcart.html">Your cart</a></li>
                                            <li><a href="checkout-customer.html">Customer</a></li>
                                            <li><a href="checkout-complete.html">Complete</a></li>
                                            <li><a href="checkout-yourcart-dark.html">Your cart (Dark)</a></li>
                                            <li><a href="checkout-customer-dark.html">Customer (Dark)</a></li>
                                            <li><a href="checkout-complete-dark.html">Complete (Dark)</a></li>
                                        </ul>
                                    </li>
                                

                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="contact.html">Contact</a>
                            </li>
                            
                            <li class="menu-item-has-children" style="border-left: 1px solid #D4D4D4;">
	                            <c:if test="${empty sessionScope.user}">
	                            <a href="contact.html"><i class="fa fa-user" aria-hidden="true"></i></a>
	                            <ul class="sub-menu" style="margin-top: 23px;">
	                                    <li><a href="register">Connexion / Inscriptions</a></li>
	                                </ul>
	                            </c:if>
	                            
								<c:if test="${not empty sessionScope.user}">
									<a href="contact.html"><i class="fa fa-user" aria-hidden="true"></i> Bonjour ${sessionScope.user.lastName}</a>
									<ul class="sub-menu" style="margin-top: 23px;">
                                      <li><a href="register">Mes informations</a></li>
                                      <li>
								        <c:choose>
											<c:when test="${ sessionScope.user.googleUser == true }">
												<a onclick="googleLogOut()">Déconnexion</a>
											</c:when>
											<c:otherwise>
												<a onclick="simpleLogOut()">Déconnexion</a>
											</c:otherwise>
										</c:choose>
									  </li>
                                  	</ul>
								</c:if>
                            </li>
                        </ul>
                    </nav>
                    <!-- END / NAVIGATION -->
                    
                    <!-- SEARCH BOX -->
                    <div class="search-box">
                        <span class="searchtoggle" >
                       		 <i class="awe-icon awe-icon-cart" style="margin-top: 21px;"></i>
                        </span>
                        <form class="form-search">
                            
                        </form>
                    </div>

                    <!-- END / SEARCH BOX -->


                    <!-- TOGGLE MENU RESPONSIVE -->
                    <a class="toggle-menu-responsive" href="#">
                        <div class="hamburger">
                            <span class="item item-1"></span>
                            <span class="item item-2"></span>
                            <span class="item item-3"></span>
                        </div>
                    </a>
                    <!-- END / TOGGLE MENU RESPONSIVE -->
                </div>
            </div>
        </header>
        <!-- END / HEADER PAGE -->