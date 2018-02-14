<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    	
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>sideMenu</title>
		
		<!-- 0201 현희 sideMenu css -->
		<link rel="stylesheet" type="text/css" href="/css/common/sideMenu.css"/>
		
	</head>
	<body>
	
	<!-- 사이트메뉴 설정 부분 -->
	            <aside class="sidemenu">
	                <div class="sidemenu-wrapper">
	                    <div class="sidemenu-header">
	                        <a href="/index.jsp" class="sidemenu-logo">
	                            <img src="/img/common/sideLogo.png">
	                        </a>
	                    </div><!-- End .sidemenu-header -->
	                    <ul class="metismenu">
	                        <li><a href="/product/selectCate.do">Man</a></li>
							<li><a href="/product/selectCate.do">Woman</a></li>
	                        <li>
	                            <a href="#" aria-expanded="false">Brand<span class="sidemenu-icon"></span></a>
	                            <ul aria-expanded="false" class="collapse">
	                                <li><a href="#">CHANEL</a></li>
	                                <li><a href="#">GUCCI</a></li>
	                                <li><a href="#">MONTBLANC</a></li>
	                            </ul>
	                        </li>
	                    </ul>
	                   	<ul class="side-links">
	                    	<li><a href="/member/login.do">Login</a></li>
	                    	<li><a href="/member/join.do">Join</a></li>
	                    </ul>
	                </div><!-- End .sidemenu-wrapper -->
	            </aside><!-- End .sidemenu -->
	<!-- 사이트메뉴 설정 부분 끝-->
	
	</body>
</html>