<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="mypage.vo.MyPurchaseVO"
%>
<%
	MyPurchaseVO myPurchase[][] = (MyPurchaseVO[][])request.getAttribute("myPurchase");
	String[] day = (String[])request.getAttribute("day");
	int orderTotalPrice[] = (int[])request.getAttribute("orderTotalPrice");
	int totalPrice = (int)request.getAttribute("totalPrice");
	int totalCount = (int)request.getAttribute("totalCount");
	int total = (int)request.getAttribute("total");
	int max = (int)request.getAttribute("max");
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
        
        
        <!-- My Link -->
		<link rel="stylesheet" href="/css/mypage/avgrund.css">
        
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
                                    	<% for (int i = 0; i < total; i++) { %>
		                                        <tr>
		                                            <td class="product-col">
		                                                <%= day[i] %>
		                                            </td>
		                                            <td class="price-col">
		                                                <div class="product-title" style="margin-right: 20px;">
		                                                	<% for (int j = 0; j < max; j++) {
		                                                		if(myPurchase[i][j] == null) {
		                                                			break;
		                                                		} else { %>
				                                                    <a href="#"><%= myPurchase[i][j].getPerName() %></a> <br/>
				                                                    <input type="hidden" value="<%= myPurchase[i][j].getOrderSq() %>" id="order_sq" />
			                                                <% }
		                                                	} %>
		                                                </div>
		                                            </td>
		                                            <td class="product-col">
		                                            	<% for (int j = 0; j < max; j++) {
	                                                		if(myPurchase[i][j] == null) {
	                                                			break;
	                                                		} else { %>
			                                                    $<%= myPurchase[i][j].getOrderPrice() %> <br/>
		                                                <% }
	                                                	} %>
		                                            </td>
		                                            <td class="quantity-col" style="padding-left: 30px;">
		                                            	<% for (int j = 0; j < max; j++) {
	                                                		if(myPurchase[i][j] == null) {
	                                                			break;
	                                                		} else { %>
			                                                    <%= myPurchase[i][j].getOrderCnt() %> <br/>
		                                                <% }
	                                                	} %>
		                                            </td>
		                                            <td class="total-col">$<%= orderTotalPrice[i] %></td>
		                                            <td class="delete-col"><a href="#"><img src="/img/mypage/find.png" class="show" style="height: 10px; width: 10px;"></a></td>
		                                        </tr>
                                        <% } %>
                                    </tbody>
                                </table>
                            </div><!-- End .table-responsive -->

                            <div class="row">
                                <div class="col-sm-7">
                                </div><!-- End .col-sm-7 -->

                                <div class="col-sm-4 col-sm-offset-1">
                                    <div class="cart-proceed">
                                        <p class="cart-subtotal"><span>COUNT TOTAL :</span> <%= totalCount %></p>
                                        <p class="cart-total"><span>PRICE TOTAL :</span> <span class="text-accent">$<%= totalPrice %></span></p>
                                    </div><!-- Endd .cart-proceed -->
                                </div><!-- End .col-sm-4 -->
                            </div><!-- End .row -->
                        </div><!-- End .col-md-9 -->
	
                        <aside class="col-md-3 col-md-pull-9 sidebar sidebar-shop" style="margin-top: 139px;">
                            <div class="widget widget-box widget-shop-category active">
                                <h3 class="widget-title">MYPAGE</h3>

                                <ul class="shop-category-list accordion">
                                    <li class="open">
                                        <a href="/mypage/myInfo.do">MY INFORMATION</a> 
                                        <button class="accordion-btn" type="button" data-toggle="collapse" data-target="#accordion-ul-1" aria-expanded="true" aria-controls="accordion-ul-1"><span class="accordion-icon"></span></button>

                                        <ul class="collapse in" id="accordion-ul-1" aria-expanded="true">
                                            <li><a href="/mypage/myInfo.do"><i class="fa fa-caret-right"></i>CHECK MY INFO</a></li>
                                            <li class="active"><a href="/mypage/myPurchase.do"><i class="fa fa-caret-right"></i>MY PURCHASE</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="/mypage/myPerfumeTest.do?pageS=1">PERFUME TEST</a>
                                        <button class="accordion-btn collapsed" type="button" data-toggle="collapse" data-target="#accordion-ul-2" aria-expanded="false" aria-controls="accordion-ul-2"><span class="accordion-icon"></span></button>

                                        <ul class="collapse" id="accordion-ul-2" aria-expanded="false">
                                            <li><a href="/mypage/myPerfumeTest.do"><i class="fa fa-caret-right"></i>PERFUME TEST LIST</a></li>
                                            <li><a href="/mypage/3PoingCharge.do"><i class="fa fa-caret-right"></i>3POING CHARGE</a></li>
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
		<script src="/js/mypage/jquery.avgrund.js"></script>
		<script>
		$(function() {
			$('.show').avgrund({
				height: 200,
				holderClass: 'custom',
				showClose: true,
				showCloseText: 'close',
				onBlurContainer: '.container',
				setEvent: 'click',
				template: '<p><br/><br/>제품의 이름을 선택하면 해당 상품 판매 페이지로 이동합니다. <br/> 제품 상세보기를 원하시면 클릭하세요.</p>'
			});
		});
		</script>
        
    </body>
</html>