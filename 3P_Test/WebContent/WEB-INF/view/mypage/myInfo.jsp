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
                                <h1>MY INFORMATION</h1>
                                <p>Check Your Inside information</p>
                            </div><!-- End .page-header -->

                            <form action="#" class="signup-form" style="padding-top: 20px;">
                                <div class="row">
                                	<div class="col-sm-4">
                                		<div class="form-group">
		                                    <label>ID</label>
		                                    <input type="text" class="form-control" readonly="readonly">
		                                </div><!-- End .form-group -->
                                	</div><!-- End .col-sm-4 -->

                                	<div class="col-sm-4">
                                		<div class="form-group">
		                                    <label>Name</label>
		                                    <input type="text" class="form-control" readonly="readonly">
		                                </div><!-- End .form-group -->
                                	</div><!-- End .col-sm-4 -->

                                	<div class="col-sm-4">
                                		<div class="form-group">
		                                    <label>Email</label>
		                                    <input type="email" class="form-control" readonly="readonly">
		                                </div><!-- End .form-group -->
                                	</div><!-- End .col-sm-4 -->
                                </div><!-- End .row -->

                                <div class="row">
                                	<div class="col-sm-4">
                                		<div class="form-group">
		                                    <label>Address</label>
		                                    <input type="password" class="form-control" readonly="readonly">
		                                </div><!-- End .form-group -->
                                	</div><!-- End .col-sm-4 -->

                                	<div class="col-sm-4">
                                		<div class="form-group">
		                                    <label>+ Detail</label>
		                                    <input type="text" class="form-control" readonly="readonly">
		                                </div><!-- End .form-group -->
                                	</div><!-- End .col-sm-4 -->
                                	
                                	<div class="col-sm-4">
                                		<div class="form-group">
		                                    <label>3Point</label>
		                                    <input type="text" class="form-control" readonly="readonly">
		                                </div><!-- End .form-group -->
                                	</div><!-- End .col-sm-4 -->
                                </div><!-- End .row -->

                            </form>
                        </div><!-- End .col-md-9 -->

                        <aside class="col-md-3 col-md-pull-9 sidebar sidebar-shop" style="margin-top: 139px;">
                        	<div class="widget widget-box widget-shop-category active">
                                <h3 class="widget-title">MYPAGE</h3>

                                <ul class="shop-category-list accordion">
                                    <li class="open">
                                        <a href="category.html">MY INFORMATION</a> 
                                        <button class="accordion-btn" type="button" data-toggle="collapse" data-target="#accordion-ul-1" aria-expanded="true" aria-controls="accordion-ul-1"><span class="accordion-icon"></span></button>

                                        <ul class="collapse in" id="accordion-ul-1" aria-expanded="true">
                                            <li class="active"><a href="category.html"><i class="fa fa-caret-right"></i>CHECK MY INFO</a></li>
                                            <li><a href="category.html"><i class="fa fa-caret-right"></i>MY PURCHASE</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="category.html">PERFUME TEST</a>
                                        <button class="accordion-btn collapsed" type="button" data-toggle="collapse" data-target="#accordion-ul-2" aria-expanded="false" aria-controls="accordion-ul-2"><span class="accordion-icon"></span></button>

                                        <ul class="collapse" id="accordion-ul-2" aria-expanded="false">
                                            <li><a href="category.html"><i class="fa fa-caret-right"></i>PERFUME TEST LIST</a></li>
                                            <li><a href="category.html"><i class="fa fa-caret-right"></i>3POING CHARGE</a></li>
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
    </body>
</html>