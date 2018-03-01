<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%
	String point = (String)request.getAttribute("3Point");
%>
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
        
        <!-- My Style -->
        <style type="text/css">
        	
        </style>
    </head>
    <body>
        <div id="wrapper">
        	
        	<jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>
        	
        	<jsp:include page="/WEB-INF/view/common/sideMenu_in.jsp"></jsp:include>

            <div class="sidemenu-overlay"></div><!-- End .sidemenu-overlay -->
            
            <div class="main">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 col-md-push-3">
                            <div class="page-header text-center">
                            <h1>Perfume Test</h1>
                            <p>Charge your 3Point</p>
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
	                                                    <input type="radio" name="checkout-option" checked data-target=".billing-form">
	                                                    <span class="check"></span>
	                                                    <span class="circle"></span>
	                                                    Checking
	                                                </label>
	                                            </div><!-- End .radio -->
	                                        </div><!-- End .radio-inline-container -->
	                                    </div><!-- End .tab-header -->
	                                    
	                                    <div class="mb5"></div><!-- margin -->
	                                    
	                                    <form action="#" class="billing-form target-area active">
	                                    	<h3>Checking</h3>
	                                    	<p>Check the amount you will charge</p>
		                                    <hr>
		                                    <div class="mb15"></div><!-- margin -->
	                                    
	                                        <div class="row">
	                                            <div class="col-sm-3">
	                                                <div class="form-group">
	                                                    <label>Remaining 3Point</label>
	                                                    <input type="text" class="form-control" value="<%= point %>" readonly="readonly">
	                                                </div><!-- End .form-group -->
	                                            </div><!-- End .col-sm-4 -->
	                                            
	                                            <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <label>Charge 3Point</label>
                                                        <select class="form-control custom-select" id="add3Point">
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                        </select>
                                                    </div><!-- End .form-group -->
                                                </div><!-- End .col-sm-4 -->
                                                
                                                <div class="col-sm-2"></div>
                                                
                                                <div class="col-sm-3">
	                                                <div class="form-group">
	                                                	<label>Next Payment</label>
			                                            <a href="#payment" aria-controls="payment" role="tab" data-toggle="tab"><input type="button" class="btn btn-accent min-width pull-left" value="Continue"></a>
	                                                </div><!-- End .form-group -->
	                                            </div><!-- End .col-sm-4 -->
                                                
	                                        </div><!-- End .row -->
	                                    </form>
	
	                                    <div class="mb5"></div><!-- margin -->
	                                    
	                                </div><!-- End .tab-pane -->
	                                <div role="tabpanel" class="tab-pane" id="payment">
	                                    <div class="tab-header">
	                                        <h4>Payment Method:</h4>
	                                        <div class="radio-inline-container">
	                                            <img src="/assets/images/payment-card.png" alt="Card" class="radio-img">
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
	                                                    <input type="text" class="form-control" id="CardName" required>
	                                                </div><!-- End .form-group -->
	                                            </div><!-- End .col-sm-6 -->
	
	                                            <div class="col-sm-6">
	                                                <div class="form-group">
	                                                    <label>Card number*</label>
	                                                    <input type="text" class="form-control form-with-icon" placeholder="0000-0000-0000-0000" id="CardNumber" required>
	
	                                                    <img src="/assets/images/icon-input-card.png" alt="Card" class="form-icon">
	                                                </div><!-- End .form-group -->
	                                            </div><!-- End .col-sm-6 -->
	                                        </div><!-- End .row -->
	
	                                        <div class="row">
	                                            <div class="col-sm-4">
	                                                <div class="form-group">
	                                                    <label>CVV number*</label>
	                                                    <input type="text" class="form-control form-with-icon" id="CVVnumber" required>
	                                                    <span class="form-icon">
	                                                        <img src="/assets/images/icon-input-info.png" alt="Card">
	                                                    </span>
	                                                </div><!-- End .form-group -->
	                                            </div><!-- End .col-sm-4 -->
	
	                                            <div class="col-sm-4">
	                                                <div class="form-group">
	                                                    <label>Exp. Month*</label>
	                                                    <select class="form-control custom-select" id="month">
	                                                        <option value="Month">Month</option>
	                                                        <option value="January">January</option>
	                                                        <option value="February">February</option>
	                                                        <option value="March">March</option>
	                                                        <option value="April">April</option>
	                                                        <option value="May">May</option>
	                                                        <option value="June">June</option>
	                                                        <option value="July">July</option>
	                                                        <option value="August">August</option>
	                                                        <option value="September">September</option>
	                                                        <option value="October">October</option>
	                                                        <option value="November">November</option>
	                                                        <option value="December">December</option>
	                                                    </select>
	                                                </div><!-- End .form-group -->
	                                            </div><!-- End .col-sm-4 -->
	
	                                            <div class="col-sm-4">
	                                                <div class="form-group">
	                                                    <label>Exp. Year*</label>
	                                                    <select class="form-control custom-select" id="year">
	                                                        <option value="Year">Year</option>
	                                                        <option value="2017">2017</option>
	                                                        <option value="2018">2018</option>
	                                                        <option value="2018">2019</option>
	                                                        <option value="2018">2020</option>
	                                                        <option value="2018">2021</option>
	                                                        <option value="2018">2022</option>
	                                                    </select>
	                                                </div><!-- End .form-group -->
	                                            </div><!-- End .col-sm-4 -->
	                                        </div><!-- End .row -->
	
	                                        <div class="clearfix form-action">
	                                            <div class="btn-wrap pull-right">
	                                                <span class="btn-payment-info">$405.00</span>
	                                                <a href="#confirmation" aria-controls="confirmation" role="tab" data-toggle="tab"><input type="button" id="payNow" class="btn btn-accent" value="Pay Now"></a>
	                                            </div> <!-- End .btn-wrap -->
	                                        </div> <!-- End .form-action -->
	                                    </form>
	                                </div><!-- End .tab-pane -->
	                            </div>
	                        </div><!-- End .product-details-tab -->
                        </div><!-- End .col-md-9 -->

                        <aside class="col-md-3 col-md-pull-9 sidebar sidebar-shop" style="margin-top: 139px;">
                            <div class="widget widget-box widget-shop-category active">
                                <h3 class="widget-title">MYPAGE</h3>

                                <ul class="shop-category-list accordion">
                                    <li>
                                        <a href="/mypage/myInfo.do">MY INFORMATION</a> 
                                        <button class="accordion-btn collapsed" type="button" data-toggle="collapse" data-target="#accordion-ul-1" aria-expanded="false" aria-controls="accordion-ul-1"><span class="accordion-icon"></span></button>

                                        <ul class="collapse" id="accordion-ul-1" aria-expanded="true">
                                            <li><a href="/mypage/myInfo.do"><i class="fa fa-caret-right"></i>CHECK MY INFO</a></li>
                                            <li><a href="/mypage/myPurchase.do"><i class="fa fa-caret-right"></i>MY PURCHASE</a></li>
                                        </ul>
                                    </li>
                                    <li class="open">
                                        <a href="/mypage/myPerfumeTest.do?pageS=1">PERFUME TEST</a>
                                        <button class="accordion-btn" type="button" data-toggle="collapse" data-target="#accordion-ul-2" aria-expanded="true" aria-controls="accordion-ul-2"><span class="accordion-icon"></span></button>

                                        <ul class="collapse in" id="accordion-ul-2" aria-expanded="false">
                                            <li><a href="/mypage/myPerfumeTest.do"><i class="fa fa-caret-right"></i>PERFUME TEST LIST</a></li>
                                            <li class="active"><a href="/mypage/3PoingCharge.do"><i class="fa fa-caret-right"></i>3POING CHARGE</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">GO TO SHOPING</a>
                                    </li>
                                </ul>
                            </div><!-- End .widget -->
                        </aside><!-- End .col-md-3 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .main -->
            
            <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
            
        </div><!-- End #wrapper -->
        
        <a id="scroll-top" href="#top" title="Scroll top"><i class="fa fa-angle-up"></i></a>

        <!-- End -->

        <script src="/assets/js/plugins.js"></script>
        <script src="/assets/js/main.js"></script>
        <script src="/js/mypage/3PointChargeJS.js"></script>
    </body>
</html>