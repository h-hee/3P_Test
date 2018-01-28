<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>3P - 상품 상세보기</title>
	
	<meta charset="utf-8">
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
	
	<style type="text/css">
		@media (min-width: 992px) {
			.col-md-push-3 {
				left: unset;
			}
		}
		.col-md-9 {
			margin: 0 13%;
		}
	</style>
</head>
<body>
        <div id="wrapper">
            <header class="header sticky-header">
                <div class="container">
                    <a href="index.html" class="site-logo" title="Shopo - eCommerce Template">
                        <img src="assets/images/logo.png" alt="Logo">
                        <span class="sr-only">Shopo - eCommerce Template</span>
                    </a>

                    <div class="header-dropdowns">
                        <div class="dropdown header-dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-expanded="false">
                                USD
                                <i class="fa fa-caret-down"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#" title="Euro">EUR</a></li>
                                <li><a href="#" title="Pound">PND</a></li>
                                <li><a href="#" title="Yen">YEN</a></li>
                            </ul>
                        </div><!-- End .dropddown -->

                        <div class="dropdown header-dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-expanded="false">
                                ENG
                                <i class="fa fa-caret-down"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#" title="Spanish">SPA</a></li>
                                <li><a href="#" title="Turkish">TUR</a></li>
                                <li><a href="#" title="German">GER</a></li>
                            </ul>
                        </div><!-- End .dropddown -->
                    </div><!-- End .header-dropdowns -->

                    <div class="search-form-container">
                        <a href="#" class="search-form-toggle" title="Toggle Search"><i class="fa fa-search"></i></a>
                        <form action="#">
                            <div class="dropdown search-dropdown">
                                <a class="dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-expanded="false">
                                   All Category
                                    <i class="fa fa-caret-down"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Fashion</a></li>
                                    <li><a href="#">Electronics</a></li>
                                    <li><a href="#">Furniture</a></li>
                                    <li><a href="#">Equipments</a></li>
                                </ul>
                            </div><!-- End .dropddown -->
                            <input type="search" class="form-control" placeholder="Search" required>
                            <button type="submit" title="Search" class="btn"><i class="fa fa-search"></i></button>
                        </form>
                    </div><!-- End .search-form-container -->

                    <ul class="top-links">
                        <li><a href="signin.html">Sign In</a></li>
                        <li><a href="cart.html">Cart</a></li>
                    </ul>

                    <div class="dropdown cart-dropdown">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-expanded="false">
                            <span class="cart-icon">
                                <img src="assets/images/bag.png" alt="Cart">
                                <span class="cart-count">4</span>
                            </span>
                            <i class="fa fa-caret-down"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <p class="dropdown-cart-info">You have 2 products in your cart.</p>
                            <div class="dropdown-menu-wrapper">
                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name">
                                            <img src="assets/images/products/small/product2.jpg" alt="Product Image">
                                        </a>
                                    </figure>

                                    <div>
                                        <a href="#" class="btn-delete" title="Delete product" role="button"></a>
                                        <h4 class="product-title"><a href="product.html">Sunglasses</a></h4>
                                        <div class="product-price-container">
                                            <span class="product-price">$110.00</span>
                                        </div><!-- End .product-price-container -->
                                        <div class="product-qty">x1</div><!-- End .product-qty -->
                                    </div><!-- End .product-image-container -->
                                </div><!-- End .product- -->

                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name">
                                            <img src="assets/images/products/small/product1.jpg" alt="Product Image">
                                        </a>
                                    </figure>

                                    <div>
                                        <a href="#" class="btn-delete" title="Delete product" role="button"></a>
                                        <h4 class="product-title"><a href="product.html">Leather Belt</a></h4>
                                        <div class="product-price-container">
                                            <span class="product-price">$99.00</span>
                                        </div><!-- End .product-price-container -->
                                        <div class="product-qty">x1</div><!-- End .product-qty -->
                                    </div><!-- End .product-image-container -->
                                </div><!-- End .product- -->
                            </div><!-- End .droopdowm-menu-wrapper -->

                            <div class="cart-dropdowm-action">
                                <div class="dropdowm-cart-total"><span>TOTAL:</span> $209.00</div>
                                <a href="checkout.html" class="btn btn-primary">Checkout</a>
                            </div><!-- End .cart-dropdown-action -->
                        </div><!-- End .dropdown-menu -->
                    </div><!-- End .cart-dropddown -->

                    <a href="#" class="sidemenu-btn" title="Menu Toggle">
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                </div><!-- End .container-fluid -->
            </header><!-- End .header -->

            <aside class="sidemenu">
                <div class="sidemenu-wrapper">
                    <div class="sidemenu-header">
                        <a href="index.html" class="sidemenu-logo">
                            <img src="assets/images/logo.png" alt="logo">
                        </a>
                    </div><!-- End .sidemenu-header -->

                    <ul class="metismenu">
                        <li><a href="index.html">Home</a></li>
                        <li>
                            <a href="#" aria-expanded="false">Pages <span class="sidemenu-icon"></span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="about.html">About Us</a></li>
                                <li><a href="404.html">404 Page</a></li>
                                <li><a href="contact.html">Contact Us</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" aria-expanded="false">Shop <span class="sidemenu-icon"></span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="category.html">Category</a></li>
                                <li><a href="product.html">Product</a></li>
                                <li><a href="cart.html">Shopping Cart</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                                <li><a href="signin.html">Sign In</a></li>
                                <li><a href="signup.html">Sign Up</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" aria-expanded="false">Portfolio<span class="sidemenu-icon"></span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="portfolio-2col.html">Portfolio 2 Col</a></li>
                                <li><a href="portfolio-3col.html">Portfolio 3 Col</a></li>
                                <li><a href="portfolio-4col.html">Portfolio 4 Col</a></li>
                                <li><a href="single-portfolio.html">Portfolio Post</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" aria-expanded="false">Blog<span class="sidemenu-icon"></span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="single.html">blog Post</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact Us</a></li>
                        <li><a href="#">Buy Shopo!</a></li>
                    </ul>
                </div><!-- End .sidemenu-wrapper -->
            </aside><!-- End .sidemenu -->

            <div class="sidemenu-overlay"></div><!-- End .sidemenu-overlay -->
            
            <div class="main">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 col-md-push-3">

                            <div class="row">
                                <div class="product-gallery-container">
                                    <div class="product-zoom-wrapper">
                                        <div class="product-zoom-container">
                                        <img class="xzoom" id="product-zoom" src="assets/images/products/single/product1.jpg" data-xoriginal="assets/images/products/single/big/product1.jpg" alt="Zoom image"/>
                                        </div><!-- End .product-zoom-container -->
                                    </div><!-- End .product-zoom-wrapper -->

                                    <div class="product-gallery-wrapper">
                                        <div class="owl-data-carousel owl-carousel product-gallery"
                                            data-owl-settings='{ "items":4, "margin":14, "nav": true, "dots":false }'
                                            data-owl-responsive='{"240": {"items": 2}, "360": {"items": 3}, "768": {"items": 4}, "992": {"items": 3}, "1200": {"items": 4} }'>

                                            <a href="#" data-image="assets/images/products/single/product1.jpg" data-zoom-image="assets/images/products/single/big/product1.jpg" class="product-gallery-item">
                                                <img src="assets/images/products/single/thumbs/product1.jpg" alt="product-small-1">
                                            </a>
                                            <a href="#" data-image="assets/images/products/single/product2.jpg" data-zoom-image="assets/images/products/single/big/product2.jpg" class="product-gallery-item">
                                                <img src="assets/images/products/single/thumbs/product2.jpg" alt="product-small-2">
                                            </a>
                                            <a href="#" data-image="assets/images/products/single/product3.jpg" data-zoom-image="assets/images/products/single/big/product3.jpg" class="product-gallery-item">
                                                <img src="assets/images/products/single/thumbs/product3.jpg" alt="product-small-3">
                                            </a>
                                            <a href="#" data-image="assets/images/products/single/product4.jpg" data-zoom-image="assets/images/products/single/big/product4.jpg" class="product-gallery-item">
                                                <img src="assets/images/products/single/thumbs/product4.jpg" alt="product-small-4">
                                            </a>
                                            <a href="#" data-image="assets/images/products/single/product5.jpg" data-zoom-image="assets/images/products/single/big/product5.jpg" class="product-gallery-item">
                                                <img src="assets/images/products/single/thumbs/product5.jpg" alt="product-small-5">
                                            </a>
                                            <a href="#" data-image="assets/images/products/single/product6.jpg" data-zoom-image="assets/images/products/single/big/product6.jpg" class="product-gallery-item">
                                                <img src="assets/images/products/single/thumbs/product6.jpg" alt="product-small-6">
                                            </a>
                                        </div><!-- End .product-gallery -->
                                    </div><!-- End .product-gallery-wrapper -->
                                </div><!-- End .product-gallery-container -->

                                <div class="product-details">
                                    <h2 class="product-title">Comfort Couch Classic Single Seater Sofa</h2>
                                    
                                    <div class="product-meta-row">
                                        <div class="product-price-container">
                                            <span class="product-price">$250.00</span>
                                        </div><!-- Endd .product-price-container -->

<!--                                         <div class="product-ratings-wrapper"> -->
<!--                                             <div class="ratings-container"> -->
<!--                                                 <div class="product-ratings"> -->
<!--                                                     <span class="ratings" style="width:80%"></span>End .ratings -->
<!--                                                 </div>End .product-ratings -->
<!--                                             </div>End .ratings-container -->
<!--                                             <a class="ratings-link" href="#reviews" title="Reviews">30 Reviews</a> -->
<!--                                         </div>End .product-ratings-wrapper -->
                                    </div><!-- End .product-meta-row -->
                                    <div class="product-content">
                                        <p>Comfort Couch Classic sigle Seater Soft is Relax in supreme comfort and add style to your living room with this fabulously designed single.</p>
                                    </div><!-- End .product-content -->

                                    <ul class="product-meta-list">
                                        <li><label>Availability:</label> <span class="product-stock">In Stock</span></li>
                                    </ul>

                                    <div class="product-action">
                                        <div class="product-quantity">
                                            <label>QTD:</label>
                                            <input class="single-product-quantity form-control" type="text">
                                        </div><!-- end .product-quantity -->
                                        
                                        <a href="#" class="btn btn-accent btn-addtobag">Add to Bag</a>
                                    </div><!-- End .product-action -->
                                </div><!-- End .product-details -->
                            </div><!-- End .row -->

                            <div class="product-details-tab">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#description" aria-controls="description" role="tab" data-toggle="tab">Description</a></li>
                                    <li role="presentation"><a href="#information" aria-controls="information" role="tab" data-toggle="tab">Information</a></li>
                                    <li role="presentation"><a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">Contact us</a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,</p>
                                        <p>Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur.</p>
                                    </div><!-- End .tab-pane -->
                                    <div role="tabpanel" class="tab-pane" id="information">
                                        <div class="table-responsive">
                                            <table class="table product-info-table">
                                                <tbody>
                                                    <tr>
                                                        <td>Weight:</td>
                                                        <td>50 KG</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Dimensions:</td>
                                                        <td>120 x 120 x 120 cm</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Material:</td>
                                                        <td>Wood, Leather</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Colors:</td>
                                                        <td>Beige, Black</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Size:</td>
                                                        <td>SM, MD, LG</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Other Info:</td>
                                                        <td>Comfort Couch Classic sigle Seater Soft is Relax in supreme comfort.</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div><!-- End .table-responsive -->
                                    </div><!-- End .tab-pane -->
                                    <div role="tabpanel" class="tab-pane" id="reviews">
			
			                            <div class="mb20"></div><!-- margin -->
			
			                            <div class="row">
			                                <div class="col-sm-4">
			                                    <div class="contact-info-box">
			                                        <img src="assets/images/icon-pin.png" alt="Pin">
			                                        <h3>Address</h3>
			
			                                        <address>
			                                            <span>Seoul Gwanak-gu</span>
			                                            <span>173 Gwanak-ro</span>
			                                            <span>Tomntown Toms Second flor</span>
			                                        </address>
			                                    </div><!-- End .contact-info-box -->
			                                </div><!-- End .col-sm-4 -->
			                                <div class="col-sm-4">
			                                    <div class="contact-info-box">
			                                        <img src="assets/images/icon-mobile.png" alt="Pin">
			                                        <h3>Phone</h3>
			                                        <p><strong>Office :</strong> 010 6729 9292</p>
			                                        <p><strong>Sale :</strong> 010 4300 6867</p>
			                                        <p><strong>Admin :</strong> 010 3543 2975</p>
			                                    </div><!-- End .contact-info-box -->
			                                </div><!-- End .col-sm-4 -->
			                                <div class="col-sm-4">
			                                    <div class="contact-info-box">
			                                        <img src="assets/images/icon-email.png" alt="Pin">
			                                        <h3>Email</h3>
			                                        <p><a href="mailto:#">seung382@gmail.com</a></p>
			                                        <p><a href="mailto:#">elly6867@gmail.com</a></p>
			                                        <p><a href="mailto:#">cyzy4862@gmail.com</a></p>
			                                    </div><!-- End .contact-info-box -->
			                                </div><!-- End .col-sm-4 -->
			                            </div><!-- End .row -->
			
			                            <div class="mb35 mb20-sm mb10-xs"></div><!-- margin -->
                                    
                                        <div class="review-form-container">
                                        	<div class="title-group text-center">
				                                <h1 class="title">Send a Message</h1>
				                                <p class="title-desc">Send Us a Message</p>
				                            </div><!-- End .title-group -->


                                            <form action="#" method="post">
                                                <div class="row">
				                                	<div class="col-sm-6">
				                                		<div class="form-group">
						                                    <label>Your Name*</label>
						                                    <input type="text" class="form-control" required>
						                                </div><!-- End .form-group -->
				
				                                        <div class="form-group">
				                                            <label>Email*</label>
				                                            <input type="email" class="form-control" required>
				                                        </div><!-- End .form-group -->
				                                	</div><!-- End .col-sm-6 -->
				
				                                    <div class="col-sm-6">
				                                        <div class="form-group">
				                                            <label>Message*</label>
				                                            <textarea cols="30" rows="6" class="form-control" required></textarea>
				                                        </div><!-- End .form-group -->
				                                    </div><!-- End .col-sm-6 -->
				                                </div><!-- End .row -->
				
				                                <div class="clearfix text-right">
				                                    <input type="submit" class="btn btn-accent min-width" value="Send Message">
				                                </div><!-- End .clearfix -->
                                            </form>
                                        </div><!-- End #respond -->
                                    </div><!-- End .tab-pane -->
                                </div>
                            </div><!-- End .product-details-tab -->
                            
                            <h3 class="carousel-title">Also Purchased</h3>
                            <div class="owl-data-carousel owl-carousel"
                            data-owl-settings='{ "items":4, "nav": true, "dots":false }'
                            data-owl-responsive='{ "480": {"items": 2}, "768": {"items": 3}, "992": {"items": 3}, "1200": {"items": 4} }'>
                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name" class="product-image-link">
                                            <img class="owl-lazy" src="assets/images/blank.png" data-src="assets/images/products/product1.jpg" alt="Product Image">
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
                                        <a href="product.html">Classic Chair</a>
                                    </h3>
                                    <div class="product-price-container">
                                        <span class="product-price">$250.00</span>
                                    </div><!-- Endd .product-price-container -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name" class="product-image-link">
                                            <img class="owl-lazy" src="assets/images/blank.png" data-src="assets/images/products/product3.jpg" alt="Product Image">
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
                                        <a href="product.html">Miniature Chair</a>
                                    </h3>
                                    <div class="product-price-container">
                                        <span class="product-price">$95.00</span>
                                    </div><!-- Endd .product-price-container -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name" class="product-image-link">
                                            <img class="owl-lazy" src="assets/images/blank.png" data-src="assets/images/products/product4.jpg" alt="Product Image">
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
                                        <a href="product.html">Modern Lampshade</a>
                                    </h3>
                                    <div class="product-price-container">
                                        <span class="product-price">$180.00</span>
                                    </div><!-- Endd .product-price-container -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name" class="product-image-link">
                                            <img class="owl-lazy" src="assets/images/blank.png" data-src="assets/images/products/product5.jpg" alt="Product Image">
                                        </a>
                                        <span class="product-label">-30%</span>
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
                                        <a href="product.html">Modern Edison Light</a>
                                    </h3>
                                    <div class="product-price-container">
                                        <span class="product-price">$250.00</span>
                                    </div><!-- Endd .product-price-container -->
                                </div><!-- End .product -->

                               <div class="product">
                                    <figure class="product-image-container">
                                        <a href="product.html" title="Product Name" class="product-image-link">
                                            <img class="owl-lazy" src="assets/images/blank.png" data-src="assets/images/products/product2.jpg" alt="Product Image">
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
                                        <a href="product.html">Decorative Pots</a>
                                    </h3>
                                    <div class="product-price-container">
                                        <span class="product-price">$130.00</span>
                                    </div><!-- Endd .product-price-container -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-data-carousel -->

                            <div class="mb50"></div><!-- margin -->
                        </div><!-- End .col-md-9 -->

                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .main -->
            
            <footer class="footer">
                <div class="container">
                    <div class="info-bar">
                        <div class="info-bar-col">
                            <h5 class="info-bar-title">FREE SHIPPING &amp; RETURN</h5>
                            <p>Free shipping on all orders over $99</p>
                        </div><!-- End .info-bar-col -->
                        <div class="info-bar-col">
                            <h5 class="info-bar-title">MONEY BACK GUARANTEE</h5>
                            <p>100% money back guarantee</p>
                        </div><!-- End .info-bar-col -->
                        <div class="info-bar-col">
                            <h5 class="info-bar-title">ONLINE SUPPORT 24/7</h5>
                            <p>Highly customer satisfaction</p>
                        </div><!-- End .info-bar-col -->
                    </div><!-- End .info-bar -->
                </div><!-- End .container -->
                <div class="footer-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <div class="widget widget-about">
                                    <h4 class="widget-title">Contact Information</h4>

                                    <address>
                                        <span>123 Shopo St</span>
                                        <span>Commerce Land, EC 12345</span>
                                        <span>+123 456 7890</span>
                                        <a href="mailto:info@domain.com">info@domain.com</a>
                                    </address>
                                </div><!-- End .widget -->
                            </div><!-- End .col-md-3 -->

                            <div class="col-sm-6 col-md-3">
                                <div class="widget">
                                    <h4 class="widget-title">Collection</h4>

                                    <ul class="links">
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Electronics</a></li>
                                        <li><a href="#">Home &amp; Garden</a></li>
                                        <li><a href="#">Music</a></li>
                                        <li><a href="#">Sports</a></li>
                                        <li><a href="#">Motors</a></li>
                                    </ul>
                                </div><!-- End .widget -->
                            </div><!-- End .col-md-3 -->

                            <div class="clearfix visible-sm"></div><!-- clearfix -->

                            <div class="col-sm-6 col-md-3">
                                <div class="widget">
                                    <h4 class="widget-title">My Account</h4>

                                    <ul class="links">
                                        <li><a href="#">Account</a></li>
                                        <li><a href="#">Login</a></li>
                                        <li><a href="#">My cart</a></li>
                                        <li><a href="#">Wishlist</a></li>
                                        <li><a href="#">Checkout</a></li>
                                    </ul>
                                </div><!-- End .widget -->
                            </div><!-- End .col-md-3 -->

                            <div class="col-sm-6 col-md-3">
                                <div class="widget widget-newsletter">
                                    <h4 class="widget-title">Newsletter</h4>
                                    <p>Signup for our newsletter</p>

                                    <form action="#">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email" required>
                                            <input type="submit" value="GO" class="btn">
                                        </div><!-- End .form-group -->
                                    </form>

                                    <div class="social-icons">
                                        <a href="#" class="social-icon" title="Facebook"><i class="fa fa-facebook"></i></a>
                                        <a href="#" class="social-icon" title="Twitter"><i class="fa fa-twitter"></i></a>
                                        <a href="#" class="social-icon" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div><!-- End .widget -->
                            </div><!-- End .col-md-3 -->
                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End .footer-inner -->

                <div class="footer-bottom">
                    <div class="container">
                        <p class="copyright">Online &copy; 2017. All Rights Reserved</p>
                    <img src="assets/images/cards.png" alt="Payment Methods" class="img-cards">
                    </div><!-- End .container -->
                </div><!-- End .footer-bottom -->
            </footer><!-- End .footer -->
        </div><!-- End #wrapper -->
        
        <a id="scroll-top" href="#top" title="Scroll top"><i class="fa fa-angle-up"></i></a>

        <!-- End -->
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/xzoom.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>