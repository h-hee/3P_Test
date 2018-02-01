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
        
        
        <!-- My Link -->
		<link rel="stylesheet" href="/assets/css/3P/avgrund.css">
        
        <!-- My Style -->
        <style type="text/css">
        
        	.product-col {
        		width: 150px;
        	}
     		.price-col {
     			width: 260px;
     		}
     		.quantity-col {
     			width: 135px;
     		}
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
                                <p>Check Your Shopping List</p>
                            </div><!-- End .page-header -->

                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>DATE</th>
                                            <th>ITEMS</th>
                                            <th>PRICE</th>
                                            <th>QUANTITY</th>
                                            <th>TOTAL</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="product-col">
                                                2017-02-18
                                            </td>
                                            <td class="price-col">
                                                <div class="product-title">
                                                    <a href="#">Perfume Name1</a> <br/>
                                                    <a href="#">Perfume Name2</a> <br/>
                                                    <a href="#">Perfume Name3</a>
                                                </div>
                                            </td>
                                            <td class="product-col">
                                                $56.00 <br/>
                                                $50.00 <br/>
                                                $49.00
                                            </td>
                                            <td class="quantity-col" style="padding-left: 30px;">
                                            	1 <br/>
                                            	3 <br/>
                                            	1
                                            </td>
                                            <td class="total-col">$180.00</td>
                                            <td class="delete-col"><a href="#"><img src="/assets/images/3P/find.png" class="show" style="height: 10px; width: 10px;"></a></td>
                                        </tr>
                                        
                                        <tr>
                                            <td class="product-col">
                                                2017-07-18
                                            </td>
                                            <td class="price-col">
                                                <div class="product-title">
                                                    <a href="#">Perfume Name1</a> <br/>
                                                    <a href="#">Perfume Name2</a>
                                                </div>
                                            </td>
                                            <td class="product-col">
                                                $56.00 <br/>
                                                $50.00
                                            </td>
                                            <td class="quantity-col" style="padding-left: 30px;">
                                            	1 <br/>
                                            	1
                                            </td>
                                            <td class="total-col">$180.00</td>
                                            <td class="delete-col"><a href="#"><img src="/assets/images/3P/find.png" class="show" style="height: 10px; width: 10px;"></a></td>
                                        </tr>
                                                                                
                                        <tr>
                                            <td class="product-col">
                                                2018-01-30
                                            </td>
                                            <td class="price-col">
                                                <div class="product-title">
                                                    <a href="#">Perfume Name1</a> <br/>
                                                    <a href="#">Perfume Name2</a> <br/>
                                                    <a href="#">Perfume Name3</a>
                                                </div>
                                            </td>
                                            <td class="product-col">
                                                $56.00 <br/>
                                                $50.00 <br/>
                                                $49.00
                                            </td>
                                            <td class="quantity-col" style="padding-left: 30px;">
                                            	1 <br/>
                                            	1 <br/>
                                            	4
                                            </td>
                                            <td class="total-col">$180.00</td>
                                            <td class="delete-col"><a href="#"><img src="/assets/images/3P/find.png" class="show" style="height: 10px; width: 10px;"></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div><!-- End .table-responsive -->

                            <div class="row">
                                <div class="col-sm-7">
                                </div><!-- End .col-sm-7 -->

                                <div class="col-sm-4 col-sm-offset-1">
                                    <div class="cart-proceed">
                                        <p class="cart-subtotal"><span>COUNT TOTAL :</span> 24</p>
                                        <p class="cart-total"><span>PRICE TOTAL :</span> <span class="text-accent">$405.00</span></p>
                                    </div><!-- Endd .cart-proceed -->
                                </div><!-- End .col-sm-4 -->
                            </div><!-- End .row -->
                        </div><!-- End .col-md-9 -->
	
                        <aside class="col-md-3 col-md-pull-9 sidebar sidebar-shop" style="margin-top: 139px;">
                            <div class="widget widget-box widget-shop-category active">
                                <h3 class="widget-title">MYPAGE</h3>

                                <ul class="shop-category-list accordion">
                                    <li class="open">
                                        <a href="category.html">MY INFORMATION</a> 
                                        <button class="accordion-btn" type="button" data-toggle="collapse" data-target="#accordion-ul-1" aria-expanded="true" aria-controls="accordion-ul-1"><span class="accordion-icon"></span></button>

                                        <ul class="collapse in" id="accordion-ul-1" aria-expanded="true">
                                            <li><a href="category.html"><i class="fa fa-caret-right"></i>CHECK MY INFO</a></li>
                                            <li class="active"><a href="category.html"><i class="fa fa-caret-right"></i>MY PURCHASE</a></li>
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
        
        <!-- My Script -->
		<script src="/assets/js/3P/jquery.avgrund.js"></script>
		<script>
		$(function() {
			$('.show').avgrund({
				height: 200,
				holderClass: 'custom',
				showClose: true,
				showCloseText: 'close',
				onBlurContainer: '.container',
				setEvent: 'click',
				template: '<p><br/><br/>So implement your design and place content here! If you want to close modal, please hit "Esc", click somewhere on the screen or use special button.</p>'
			});
		});
		</script>
        
    </body>
</html>