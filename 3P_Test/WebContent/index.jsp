<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>3P-People,Perfume,Picture</title>
        <meta name="description" content="Premium eCommerce Template">

        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Google Fonts -->
        <link href="http://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7COswald:300,400,500,600,700" rel="stylesheet">

        <link rel="stylesheet" href="assets/css/plugins.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="assets/images/icons/favicon.png">

        <!-- Modernizr -->
        <script src="assets/js/modernizr.js"></script>
    </head>
    <body>
        <div id="wrapper">
        
        	<jsp:include page="/WEB-INF/view/common/header_main.jsp"/>
        	
			<jsp:include page="/WEB-INF/view/common/sideMenu_out.jsp"/>
			
            <div class="sidemenu-overlay"></div><!-- End .sidemenu-overlay -->
            
            <div class="main">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 col-md-push-3">
                        	<div id="imsi" style="height: 500px;" ></div>
                        	
                        	<jsp:include page="/WEB-INF/view/common/searchBar.jsp"/>
                        	    
			                <div id="imsi" style="height: 50px;" ></div>
	                        <div class="tp-bannertimer tp-bottom" style="display:none; height: 2px; background-color: rgba(0, 0, 0, 0.2);"></div>
                            
                            <h3 class="carousel-title">Featured Product</h3>
                            <div class="owl-data-carousel owl-carousel"
                            data-owl-settings='{ "items":4, "nav": true, "dots":false }'
                            data-owl-responsive='{ "480": {"items": 2}, "768": {"items": 3}, "992": {"items": 3}, "1200": {"items": 4} }'>
                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name" class="product-image-link">
                                            <img class="owl-lazy" src="assets/images/blank.png" data-src="assets/images/products/product5.jpg" width="195" height="255" alt="Product Image">
                                        </a>
                                        <span class="product-label">-55%</span>
                                        <a href="#" class="btn-quick-view">Quick View</a>

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-wishlist" title="Add to Wishlist">
                                                <i class="icon-product icon-heart"></i>
                                            </a>
                                            <a href="#" class="btn-product btn-add-cart" title="Add to Bag">
                                                <i class="icon-product icon-bag"></i>
                                                <span>Add to Bag</span>
                                            </a>
                                            <a href="#" class="btn-product btn-compare" title="Add to Compare">
                                                <i class="icon-product icon-bar"></i>
                                            </a>
                                        </div><!-- End .product-action -->
                                    </figure>
                                    <h3 class="product-title">
                                        <a href="product.html">Chandelier bulb</a>
                                    </h3>
                                    <div class="product-price-container">
                                        <span class="product-price">$250.00</span>
                                    </div><!-- Endd .product-price-container -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name" class="product-image-link">
                                            <img class="owl-lazy" src="assets/images/blank.png" data-src="assets/images/products/product10.jpg" width="195" height="255" alt="Product Image">
                                        </a>
                                        <a href="#" class="btn-quick-view">Quick View</a>

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-wishlist" title="Add to Wishlist">
                                                <i class="icon-product icon-heart"></i>
                                            </a>
                                            <a href="#" class="btn-product btn-add-cart" title="Add to Bag">
                                                <i class="icon-product icon-bag"></i>
                                                <span>Add to Bag</span>
                                            </a>
                                            <a href="#" class="btn-product btn-compare" title="Add to Compare">
                                                <i class="icon-product icon-bar"></i>
                                            </a>
                                        </div><!-- End .product-action -->
                                    </figure>
                                    <h3 class="product-title">
                                        <a href="product.html">Dining chair</a>
                                    </h3>
                                    <div class="product-price-container">
                                        <span class="product-price">$130.00</span>
                                    </div><!-- Endd .product-price-container -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name" class="product-image-link">
                                            <img class="owl-lazy" src="assets/images/blank.png" data-src="assets/images/products/product11.jpg" width="195" height="255" alt="Product Image">
                                        </a>
                                        <a href="#" class="btn-quick-view">Quick View</a>

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-wishlist" title="Add to Wishlist">
                                                <i class="icon-product icon-heart"></i>
                                            </a>
                                            <a href="#" class="btn-product btn-add-cart" title="Add to Bag">
                                                <i class="icon-product icon-bag"></i>
                                                <span>Add to Bag</span>
                                            </a>
                                            <a href="#" class="btn-product btn-compare" title="Add to Compare">
                                                <i class="icon-product icon-bar"></i>
                                            </a>
                                        </div><!-- End .product-action -->
                                    </figure>
                                    <h3 class="product-title">
                                        <a href="product.html">Woolen scarf</a>
                                    </h3>
                                    <div class="product-price-container">
                                        <span class="product-price">$95.00</span>
                                    </div><!-- Endd .product-price-container -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name" class="product-image-link">
                                            <img class="owl-lazy" src="assets/images/blank.png" data-src="assets/images/products/product12.jpg" width="195" height="255" alt="Product Image">
                                        </a>
                                        <a href="#" class="btn-quick-view">Quick View</a>

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-wishlist" title="Add to Wishlist">
                                                <i class="icon-product icon-heart"></i>
                                            </a>
                                            <a href="#" class="btn-product btn-add-cart" title="Add to Bag">
                                                <i class="icon-product icon-bag"></i>
                                                <span>Add to Bag</span>
                                            </a>
                                            <a href="#" class="btn-product btn-compare" title="Add to Compare">
                                                <i class="icon-product icon-bar"></i>
                                            </a>
                                        </div><!-- End .product-action -->
                                    </figure>
                                    <h3 class="product-title">
                                        <a href="product.html">Tripod lampshade</a>
                                    </h3>
                                    <div class="product-price-container">
                                        <span class="product-price">$180.00</span>
                                    </div><!-- Endd .product-price-container -->
                                </div><!-- End .product -->

                               <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name" class="product-image-link">
                                            <img class="owl-lazy" src="assets/images/blank.png" data-src="assets/images/products/product14.jpg" width="195" height="255" alt="Product Image">
                                        </a>
                                        <a href="#" class="btn-quick-view">Quick View</a>

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-wishlist" title="Add to Wishlist">
                                                <i class="icon-product icon-heart"></i>
                                            </a>
                                            <a href="#" class="btn-product btn-add-cart" title="Add to Bag">
                                                <i class="icon-product icon-bag"></i>
                                                <span>Add to Bag</span>
                                            </a>
                                            <a href="#" class="btn-product btn-compare" title="Add to Compare">
                                                <i class="icon-product icon-bar"></i>
                                            </a>
                                        </div><!-- End .product-action -->
                                    </figure>
                                    <h3 class="product-title">
                                        <a href="product.html">Ceiling lights</a>
                                    </h3>
                                    <div class="product-price-container">
                                        <span class="product-price">$140.00</span>
                                    </div><!-- Endd .product-price-container -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-data-carousel -->

                            <div class="mb30 mb10-xs"></div><!-- margin -->

                            
                            <div class="row">
                            </div><!-- End .row -->
                            <div class="mb50 visible-sm visible-xs"></div><!-- margin -->
                        </div><!-- End .col-md-9 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .main -->
            
            <jsp:include page="/WEB-INF/view/common/footer.jsp"/>
        </div><!-- End #wrapper -->
        
        <a id="scroll-top" href="#top" title="Scroll top"><i class="fa fa-angle-up"></i></a>

        <!-- End -->
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>

        <!-- REVOLUTION JS FILES -->
        <script type="text/javascript" src="assets/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="assets/js/jquery.themepunch.revolution.min.js"></script>

        <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
        (Load Extensions only on Local File Systems !  
        The following part can be removed on Server for On Demand Loading) -->  
        <script type="text/javascript" src="assets/js/extensions/revolution.extension.actions.min.js"></script>
        <script type="text/javascript" src="assets/js/extensions/revolution.extension.carousel.min.js"></script>
        <script type="text/javascript" src="assets/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script type="text/javascript" src="assets/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script type="text/javascript" src="assets/js/extensions/revolution.extension.migration.min.js"></script>
        <script type="text/javascript" src="assets/js/extensions/revolution.extension.navigation.min.js"></script>
        <script type="text/javascript" src="assets/js/extensions/revolution.extension.parallax.min.js"></script>
        <script type="text/javascript" src="assets/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script type="text/javascript" src="assets/js/extensions/revolution.extension.video.min.js"></script>

        <script type="text/javascript">
            jQuery(document).ready(function() {
                "use strict";

                var revapi;
                if ( $("#rev_slider").revolution == undefined ) {
                    revslider_showDoubleJqueryError("#rev_slider");
                } else {
                    revapi = $("#rev_slider").show().revolution({
                        sliderType: "standard",
                        jsFileLocation: "assets/js/",
                        sliderLayout: "auto",
                        dottedOverlay:"none",
                        delay: 15000,
                        navigation: {
                            mouseScrollNavigation: "off",
                            onHoverStop: "off",
                            touch: {
                                touchenabled: "on"
                            },
                            arrows: {
                                style: "custom",
                                enable: true,
                                hide_onmobile: false,
                                hide_under: 768,
                                hide_onleave: false,
                                tmp: '',
                                left: {
                                    h_align: "left",
                                    v_align: "bottom",
                                    h_offset: 63,
                                    v_offset: 48
                                },
                                right: {
                                    h_align: "left",
                                    v_align: "bottom",
                                    h_offset: 85,
                                    v_offset: 48
                                }
                            },
                            bullets: {
                                enable: false
                            }
                        },
                        responsiveLevels: [1200,992,768,480],
                        gridwidth: [870,679,640,480],
                        gridheight: [468,400,360,300],
                        lazyType: "smart",
                        spinner: "spinner2",
                        parallax: {
                            type: "off"
                        },
                        debugMode: false
                    });
                }
            });
        </script>
    </body>
</html>