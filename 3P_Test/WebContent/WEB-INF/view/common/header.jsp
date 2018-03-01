<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header_other</title>
<style type="text/css">
	#otherLogo {
		width: 48%;
	}
</style>
</head>
<body>
	<header class="header sticky-header">
		<div class="container">
			<!-- 클릭 이동 -->
			<a href="/common/index.do" class="site-logo" title="3P - Person Picture Perfume">
				<!-- 로고 -->
				<img id="otherLogo" src="/img/common/otherLogo.png" alt="Logo">
				<span class="sr-only">3P - Person Picture Perfume</span>
			</a>
			
			<!-- 상단 빈공간용 div -->
			<div class="search-form-container"></div>

			<ul class="top-links"></ul>

			<!-- 장바구니 -->
			<div class="dropdown cart-dropdown">
				<a class="dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-expanded="false">
					<span class="cart-icon">
						<img src="/assets/images/bag.png" alt="Cart">
						<span class="cart-count">${ cartCnt }</span>
					</span>
					<i class="fa fa-caret-down"></i>
				</a>

				<div class="dropdown-menu dropdown-menu-right">
					<!-- 로그인 안했을 때 장바구니 -->
					<c:if test="${ user eq null }">
						<p class="dropdown-cart-info">You must log in to use your cart.</p>
					</c:if>
					<!-- 로그인 했을 때 장바구니 -->
					<c:if test="${ user ne null }">
						<p class="dropdown-cart-info">You have 2 products in your cart.</p>
						<div class="dropdown-menu-wrapper">
							<c:forEach var="cart" items="${ cartList }">
							<c:set var="totalPrice" value="${totalPrice + cart.cntPrice }"></c:set>
								<div class="product">
									<figure class="product-image-container">
										<a href="product.html" title="Product Name">
											<img src="/assets/images/products/small/product2.jpg" alt="Product Image">
										</a>
									</figure>
									<div>
										<a href="#" class="btn-delete" title="Delete product" role="button"></a>
										<h4 class="product-title"><a href="product.html">${ cart.perName }</a></h4>
										<div class="product-price-container">
											<span class="product-price">${ cart.perPrice }원</span>
										</div><!-- End .product-price-container -->
                                        <div class="product-qty">x${ cart.cartCnt }</div><!-- End .product-qty -->
									</div><!-- End .product-image-container -->
								</div><!-- End .product- -->
							</c:forEach>
						</div><!-- End .droopdowm-menu-wrapper -->

						<div class="cart-dropdowm-action">
							<div class="dropdowm-cart-total"><span>TOTAL:</span> <c:out value="${totalPrice}원"></c:out> </div>
							<a href="/product/checkout.do" class="btn btn-primary">Checkout</a>
						</div><!-- End .cart-dropdown-action -->
					</c:if>
				</div><!-- End .dropdown-menu -->
			</div><!-- End .cart-dropddown -->

			<a href="#" class="sidemenu-btn" title="Menu Toggle">
				<span></span>
				<span></span>
				<span></span>
			</a>
		</div><!-- End .container-fluid -->
	</header><!-- End .header -->
</body>
</html>