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
        
        <!-- My Style -->
        <style type="text/css">
        	
        </style>
    </head>
    <body>
        <div id="wrapper">
        	
        	<jsp:include page="/WEB-INF/view/common/header_other.jsp"></jsp:include>
        	
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
                                <div role="tabpanel" class="tab-pane" id="confirmation">
                                    <div class="checkout-confirm">
                                        <img src="/assets/images/okay.png" alt="Okay">
                                        <h3>Payment Complete</h3>
                                        <h4>Thank you for your order</h4>
                                        <p>We have sent you an email with all the details of your order to your email address.</p>
                                    </div> <!-- End .checkout-confirm -->
                                </div> <!-- End .tab-pane -->
                                
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