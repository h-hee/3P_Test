<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<script type="text/javascript"></script>

    <head>
        <meta charset="utf-8">
        <title>3P-People,Perfume,Picture</title>
        <meta name="description" content="Premium eCommerce Template">

        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Google Fonts -->
        <link href="http://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7COswald:300,400,500,600,700" rel="stylesheet">

        <link rel="stylesheet" href="/assets/css/plugins.min.css">
        <link rel="stylesheet" href="/assets/css/style.css">
        
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="/assets/images/icons/favicon.png">

        <!-- Modernizr -->
        <script src="/assets/js/modernizr.js"></script>
    </head>
    <body>
        <div id="wrapper">
        	
        	<jsp:include page="/WEB-INF/view/common/header_other.jsp"></jsp:include>
        	
        	<jsp:include page="/WEB-INF/view/common/sideMenu_in.jsp"></jsp:include>

            <div class="sidemenu-overlay"></div><!-- End .sidemenu-overlay -->
            
            <div class="main">
                <div class="container">
                    <div style="padding-left: 70px; padding-right: 70px;">
                        <div class="page-header text-center">
                            <h1>Checkout</h1>
                            <p>Checkout Your Products</p>
                        </div><!-- End .page-header -->

                        <div class="checkout-tabs">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs text-right" role="tablist">
                                <li role="presentation"><a><span>1</span>Shipping</a></li>
                                <li role="presentation"><a><span>2</span>Payment</a></li>
                                <li role="presentation"><a><span>3</span>Confirmation</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="shipping">
                                    <div class="tab-header">
                                        <h4>Check As:</h4>
                                        <div class="radio-inline-container">
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="checkout-option" data-target=".check-as-guest">
                                                    <span class="check"></span>
                                                    <span class="circle"></span>
                                                    ORDER LIST
                                                </label>
                                            </div><!-- End .radio -->

                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="checkout-option" checked data-target=".billing-form">
                                                    <span class="check"></span>
                                                    <span class="circle"></span>
                                                    BILLING ADDRESS
                                                </label>
                                            </div><!-- End .radio -->
                                        </div><!-- End .radio-inline-container -->
                                    </div><!-- End .tab-header -->

                                    <div class="check-as-guest target-area">
                                        <h3>YOUR ORDER LIST</h3>
                                        <p>Check out your order list.</p>
                                        <div class="mb15"></div><!-- margin -->
                                        
                                        <div class="table-responsive">
			                                <table class="table">
			                                    <thead>
			                                        <tr>
			                                            <th>Product Name</th>
			                                            <th>Price</th>
			                                            <th>Quantity</th>
			                                            <th>Total</th>
			                                            <th></th>
			                                        </tr>
			                                    </thead>
			                                    <tbody>
			                                        <tr>
			                                            <td class="product-col">
			                                                <div class="product">
			                                                    <figure class="product-image-container">
			                                                        <a href="product.html">
			                                                            <img src="assets/images/products/cart/product1.jpg" alt="Product">
			                                                        </a>
			                                                    </figure>
			                                                    <h3 class="product-title">
			                                                        <a href="product.html">Tripod lampshade</a>
			                                                    </h3>
			                                                </div><!-- End .product -->
			                                            </td>
			                                            <td class="price-col">$180.00</td>
			                                            <td class="quantity-col">
			                                                <input class="cart-product-quantity form-control" type="text">
			                                            </td>
			                                            <td class="total-col">$180.00</td>
			                                            <td class="delete-col"><a href="#" class="btn-delete" title="Delete product" role="button"></a></td>
			                                        </tr>
			
			                                        <tr>
			                                            <td class="product-col">
			                                                <div class="product">
			                                                    <figure class="product-image-container">
			                                                        <a href="product.html">
			                                                            <img src="assets/images/products/cart/product2.jpg" alt="Product">
			                                                        </a>
			                                                    </figure>
			                                                    <h3 class="product-title">
			                                                        <a href="product.html">Woolen scarf</a>
			                                                    </h3>
			                                                </div><!-- End .product -->
			                                            </td>
			                                            <td class="price-col">$95.00</td>
			                                            <td class="quantity-col">
			                                                <input class="cart-product-quantity form-control" type="text">
			                                            </td>
			                                            <td class="total-col">$95.00</td>
			                                            <td class="delete-col"><a href="#" class="btn-delete" title="Delete product" role="button"></a></td>
			                                        </tr>
			
			                                        <tr>
			                                            <td class="product-col">
			                                                <div class="product">
			                                                    <figure class="product-image-container">
			                                                        <a href="product.html">
			                                                            <img src="assets/images/products/cart/product3.jpg" alt="Product">
			                                                        </a>
			                                                    </figure>
			                                                    <h3 class="product-title">
			                                                        <a href="product.html">Dining Chair</a>
			                                                    </h3>
			                                                </div><!-- End .product -->
			                                            </td>
			                                            <td class="price-col">$130.00</td>
			                                            <td class="quantity-col">
			                                                <input class="cart-product-quantity form-control" type="text">
			                                            </td>
			                                            <td class="total-col">$130.00</td>
			                                            <td class="delete-col"><a href="#" class="btn-delete" title="Delete product" role="button"></a></td>
			                                        </tr>
			                                    </tbody>
			                                </table>
			                            </div><!-- End .table-responsive -->
			                            
			                            
			                            <div class="row">
			                                <div class="col-sm-7"></div><!-- End .col-sm-7 -->
			
			                                <div class="col-sm-4 col-sm-offset-1">
			                                    <div class="cart-proceed">
			                                        <p class="cart-subtotal"><span>SUB TOTAL :</span> $405.00</p>
			                                        <p class="cart-total"><span>Grand TOTAL :</span> <span class="text-accent">$405.00</span></p>
			                                    </div><!-- Endd .cart-proceed -->
			                                </div><!-- End .col-sm-4 -->
			                            </div><!-- End .row -->
			                            
                                    </div><!-- End .check-as-guest -->
                                    
                                    <div class="mb5"></div><!-- margin -->
                                    
                                    <form action="#" class="billing-form target-area active">
                                    	<h3>BILLING ADDRESS</h3>
                                    	<p>Check out your billing address.</p>
	                                    <hr>
	                                    <div class="mb15"></div><!-- margin -->
                                    
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Name*</label>
                                                    <input type="text" class="form-control" required>
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-4 -->

                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>E-mail*</label>
                                                    <input type="text" class="form-control" required>
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-4 -->
                                            
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Perfume Test code*</label>
                                                    <input type="text" class="form-control" required>
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-4 -->
                                        </div><!-- End .row -->

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="form-group">
                                                    <label>Post*</label>
                                                    <input type="search" class="form-control" required readonly="readonly">
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-3 -->
                                            
                                            <div class="col-sm-1">
                                                <div class="form-group">
                                                	<br/>
                                                    <button type="submit" title="Search" class="btn" style="padding: 15px 20px;">
														<i class="fa fa-search"></i>
													</button>
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-1 -->
                                            
                                            
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Address*</label>
                                                    <input type="text" class="form-control" required>
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-4 -->

                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Detail Address*</label>
                                                    <input type="text" class="form-control" required>
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-4 -->
                                        </div><!-- End .row -->

                                        <div class="clearfix form-action">
                                            <div class="checkbox pull-right">
                                                <label>
                                                    <input type="checkbox" name="remember" checked>
                                                    <span class="checkbox-box"><span class="check"></span></span>
                                                    My Shipping and billing address are same
                                                </label>
                                            </div><!-- End .checkbox -->

                                            <a href="#payment" aria-controls="payment" role="tab" data-toggle="tab"><input type="button" class="btn btn-accent min-width pull-left" value="Continue"></a>
                                        </div><!-- End .form-action -->
                                    </form>

                                    <div class="mb5"></div><!-- margin -->
                                    
                                </div><!-- End .tab-pane -->
                                <div role="tabpanel" class="tab-pane" id="payment">
                                    <div class="tab-header">
                                        <h4>Payment Method:</h4>
                                        <div class="radio-inline-container">
                                            <img src="assets/images/payment-card.png" alt="Card" class="radio-img">
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="payment-option" checked data-target=".payment-card">
                                                    <span class="check"></span>
                                                    <span class="circle"></span>
                                                    Credit Card
                                                </label>
                                            </div><!-- End .radio -->
                                        </div><!-- End .radio-inline-container -->
                                    </div><!-- End .tab-header -->

                                    <form action="#" class="payment-card target-area active">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Name on Card*</label>
                                                    <input type="text" class="form-control" required>
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-6 -->

                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Card number*</label>
                                                    <input type="text" class="form-control form-with-icon" placeholder="0000-0000-0000-0000" required>

                                                    <img src="assets/images/icon-input-card.png" alt="Card" class="form-icon">
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->

                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>CVV number*</label>
                                                    <input type="text" class="form-control form-with-icon" required>
                                                    <span class="form-icon">
                                                        <img src="assets/images/icon-input-info.png" alt="Card">
                                                    </span>
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-4 -->

                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Exp. Month*</label>
                                                    <select class="form-control custom-select">
                                                        <option value="Month">Month</option>
                                                        <option value="January">January</option>
                                                        <option value="February">February</option>
                                                    </select>
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-4 -->

                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Exp. Year*</label>
                                                    <select class="form-control custom-select">
                                                        <option value="Year">Year</option>
                                                        <option value="2017">2017</option>
                                                        <option value="2018">2018</option>
                                                    </select>
                                                </div><!-- End .form-group -->
                                            </div><!-- End .col-sm-4 -->
                                        </div><!-- End .row -->

                                        <div class="clearfix form-action">
                                            <div class="btn-wrap pull-right">
                                                <span class="btn-payment-info">$405.00</span>
                                                <a href="#confirmation" aria-controls="confirmation" role="tab" data-toggle="tab"><input type="submit" class="btn btn-accent" value="Pay Now"></a>
                                            </div><!-- End .btn-wrap -->
                                        </div><!-- End .form-action -->
                                    </form>
                                </div><!-- End .tab-pane -->
                                <div role="tabpanel" class="tab-pane" id="confirmation">
                                    <div class="checkout-confirm">
                                        <img src="assets/images/okay.png" alt="Okay">
                                        <h3>Payment Complete</h3>
                                        <h4>Thank you for your order</h4>
                                        <p>We have sent you an email with all the details of your order to your email address.</p>
                                    </div><!-- End .checkout-confirm -->
                                </div><!-- End .tab-pane -->
                            </div>
                        </div><!-- End .product-details-tab -->
                        
                    </div><!-- End .col-md-9 -->

                </div><!-- End .container -->
            </div><!-- End .main -->
            
            <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
            
        </div><!-- End #wrapper -->
        
        <a id="scroll-top" href="#top" title="Scroll top"><i class="fa fa-angle-up"></i></a>

        <!-- End -->

        <script src="/assets/js/plugins.js"></script>
        <script src="/assets/js/main.js"></script>
    </body>
</html>