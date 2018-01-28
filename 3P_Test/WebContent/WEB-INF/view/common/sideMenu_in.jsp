<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

	.side-links {
	  margin-left: 45px;
	  padding-top: 3px;
	  text-align: center;
	  -ms-flex: 0 0 auto;
	  flex: 0 0 auto;
	}
	
	.side-links:after {
	  content: '';
	  display: table;
	  clear: both;
	}
	
	.side-links li {
	  float: left;
	}
	
	.side-links li a {
	  text-transform: uppercase;
	  letter-spacing: 0.025em;
	  display: inline-block;
	  width: 80px;
	  border: 1px solid;
      padding: 2px 10px;
	}
	
	.side-links li + li {
	  margin-left: 20px;
	}
	
</style>


</head>
<body>

<!-- 사이트메뉴 설정 부분 -->
            <aside class="sidemenu">
                <div class="sidemenu-wrapper">
                    <div class="sidemenu-header">
                        <a href="index.html" class="sidemenu-logo">
                            <img src="assets/images/3plogo.png" alt="logo">
                        </a>
                    </div><!-- End .sidemenu-header -->
                    <ul class="metismenu">
                        <li><a href="#">Man</a></li>
						<li><a href="#">Woman</a></li>
                        <li>
                            <a href="#" aria-expanded="false">Brand<span class="sidemenu-icon"></span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="#">CHANEL</a></li>
                                <li><a href="#">GUCCI</a></li>
                                <li><a href="#">MONTBLANC</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" aria-expanded="false">Mypage<span class="sidemenu-icon"></span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="#">Check My Info</a></li>
                                <li><a href="#">My Purchase</a></li>
                                <li><a href="#">Perfume Test List</a></li>
                                <li><a href="#">3Point Charge</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="side-links">
                    	<li><a href="signin.jsp">Cart</a></li>
                    	<li><a href="join.jsp">Logout</a></li>
                    </ul>
                </div><!-- End .sidemenu-wrapper -->
            </aside><!-- End .sidemenu -->
<!-- 사이트메뉴 설정 부분 끝-->

</body>
</html>