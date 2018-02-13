<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <p>Check Your Perfume Test List</p>
                            </div><!-- End .page-header -->

                            <ul class="portfolio-filter text-right">
                                <li class="active"><a href="#" data-filter="*">Show All</a></li>
                                <li><a href="#" data-filter=".M">Men</a></li>
                                <li><a href="#" data-filter=".W">Women</a></li>
                                <li><a href="#" data-filter=".MW">Unisex</a></li>
                            </ul>

                            <div class="portfolio-row">
                                <div class="portfolio-container max-col-3">
                                
                                	<c:forEach begin="1" var="item" items="${myPerfumeTest}" varStatus="status">
	                                    <div class="portfolio-item ${item.perGender}">
	                                        <figure>
	                                        	<input type="hidden" value="${item.perSq}" id="perSq" />
	                                            <img src="/assets/images/portfolio/item1.jpg" alt="Portfolio Image">
	                                            <a href="single-portfolio.html" class="btn-detail" role="button">View Details</a>
	                                        </figure>
	                                        <div class="portfolio-meta">
	                                            <h3 class="portfolio-title"><a href="single-portfolio.html" title="Portfolio name">${item.perName}</a></h3>
	                                            <div class="portfolio-tags">
	                                            	<c:choose>
														<c:when test="${item.perGender eq 'M'}">
															<a href="#">MEN</a>
														</c:when>
														<c:when test="${item.perGender eq 'W'}">
															<a href="#">WOMEN</a>
														</c:when>
														<c:otherwise>
															<a href="#">UNISEX</a>
														</c:otherwise>
													</c:choose>
	                                            </div><!-- End .portfolio-tags -->
	                                        </div><!-- End .portfolio-meta -->
	                                    </div><!-- End portfolio-item -->
	                                </c:forEach>

                                </div><!-- End .portfolio-container -->
                            </div><!-- End .portfolio-row -->

                            <nav aria-label="Page Navigation">
                                <ul class="pagination">
						            <c:forEach var="i" begin="1" end="${totalPage}" step="1" varStatus="status">
						            	<c:choose>
											<c:when test="${page eq status.count}">
												<li class="active"><a href="/mypage/myPerfumeTest.do?pageS=${i}">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li><a href="/mypage/myPerfumeTest.do?pageS=${i}">${i}</a></li>
											</c:otherwise>
										</c:choose>
						            </c:forEach>
									<!-- <li class="dots"><span>...</span></li> -->
                                </ul>
                            </nav>
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
                                            <li class="active"><a href="/mypage/myPerfumeTest.do"><i class="fa fa-caret-right"></i>PERFUME TEST LIST</a></li>
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
    </body>
</html>