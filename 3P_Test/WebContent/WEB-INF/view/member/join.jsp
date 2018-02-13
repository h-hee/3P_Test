<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>3P - 회원가입</title>
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
		
		<!-- join css -->
		<link type="text/css" rel="stylesheet" href="/css/member/join.css" />
		
		<!-- 내부 제이쿼리 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script type="text/javascript">
			$(function() {
				// 유효성 검사
				var id = /^[a-z0-9][a-z0-9_]{4,14}$/;
				var pass = /^[^ㄱ-ㅎㅏ-ㅣ가-힣\s]{4,20}$/;
				var name = /^[ㄱ-ㅎㅏ-ㅣ가-힣A-z]{2,35}$/;
				var mail = /^([^\sㄱ-ㅎㅏ-ㅣ가-힣]+)\@([^\sㄱ-ㅎㅏ-ㅣ가-힣]+)\.([A-z]{2,})$/;
				var bday = /^[0-9]{6}$/;
				var phone = /^[0-9]{7,8}$/;
				
				$("#txtId").keyup(function() {
					
				});
				
				// join 버튼 눌렀을 때
				$("#btnJoin").click(function() {
					abc();
					// 02 아이디 중복인지 아닌지 확인
					// 06 - 전화번호 숫자 형태인지 확인
					// 07 - 만 14세 미만이면 회원가입 불가능
					// 08 - 회원가입 동의 체크박스 필수 체크 했는지 확인
					
				});
				
				// 다음 우편번호 api
				$("#btnPost").click(function() {
					new daum.Postcode({
						oncomplete: function(data) {
							// 팝업에서 검색결과 항목을 클릭했을 때 실행할 코드를 작성하는 부분
							
							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var fullAddr = ''; // 최종 주소 변수
							var extraAddr = ''; // 조합형 주소 변수
							
							// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if(data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								fullAddr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								fullAddr = data.jibunAddress;
							}
							
							// 사용자가 선택한 주소가 도로명 타입일 때 조합한다.
							if(data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다.
								if(data.bname !== '') {
									extraAddr += data.bname;
								}
								// 건물명이 있을 경우 추가한다.
								if(data.buildingName !== '') {
									extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
								}
								// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
								fullAddr += (extraAddr !== '' ? ' ('+ extraAddr + ')' : '' );
							}
							
							// 우편번호와 주소 정보를 해당 필드에 넣는다.
// 							$("#txtPost").value(data.zonecode); // 5자리 새우편번호 사용
// 							$("#txtAddr").value(fullAddr);
							document.getElementById('txtPost').value = data.zonecode; // 5자리 새우편번호 사용
							document.getElementById('txtAddr').value = fullAddr;
							
							// 커서를 상세주소 필드로 이동한다.
// 							$("#txtAD").focus();
							document.getElementById('txtAD').focus();
						}
					}).open();
				});
				
				function abc() {
					$('.confirm').text('');
					
					if( $('#txtId').val() == '' ) { 
					// 아이디 입력 안하면
						$('#txtId').focus();
						$('#conId').text('아이디를 입력하세요');
						
					} else if ( !id.test( $('#txtId').val() ) ) { 
					// 아이디 유효성 검사
						$('#txtId').focus();
						$('#conId').text('영문 소문자, 숫자와 특수기호(_)만 이용해서 5~20자를 입력하세요');
						
					} else if( $('#txtPass').val() == '' ) { 
					// 비밀번호 입력 안하면
						$('#txtPass').focus();
						$('#conPass').text('비밀번호를 입력하세요');
						
					} else if( !pass.test( $('#txtPass').val() ) ) { 
					// 비밀번호 유효성 검사
						$('#txtPass').focus();
						$('#conPass').text('영문 대 소문자, 숫자, 특수기호를 이용해서 4~20자를 입력하세요');
						
					} else if( $('#txtPass').val() != $('#txtWord').val() ) { 
					// 비밀번호 확인 과 비밀번호 불일치
						$('#txtWord').focus();
						$('#conWord').text('비밀번호가 일치하지 않습니다.');
						
					} else if( $('#txtName').val() == '' ) { 
					// 이름 입력 안하면
						$('#txtName').focus();
						$('#conName').text('이름을 입력하세요');
						
					} else if( !name.test( $('#txtName').val() ) ) { 
					// 이름 유효성 검사
						$('#txtName').focus();
						$('#conName').text('영문 대 소문자, 한글을 이용해서 2~35자를 입력하세요');
						
					} else if( $('#txtMail').val() == '' ) { 
					// 이메일 입력 안하면
						$('#txtMail').focus();
						$('#conMail').text('이메일을 입력하세요');
						
					} else if( !mail.test( $('#txtMail').val() ) ) { 
					// 이메일 유효성 검사
						$('#txtMail').focus();
						$('#conMail').text('이메일 주소를 다시 확인해주세요');
						
					} else if( $('#txtPhone').val() == '' ) { 
					// 전화번호 입력 안하면
						$('#txtPhone').focus();
						$('#conPhone').text('전화번호를 입력해주세요');
						
					} else if( !phone.test( $('#txtPhone').val() ) ) { 
					// 전화번호 유효성 검사
						$('#txtPhone').focus();
						$('#conPhone').text('숫자를 이용해서 7~8자를 입력하세요');
						
					} else if( $('#txtBday').val() == '' ) { 
					// 생년월일 입력 안하면
						$('#txtBday').focus();
						$('#conBday').text('생년월일을 입력하세요');
						
					} else if( !bday.test( $('#txtBday').val() ) ) { 
					// 생년월일 유효성 검사
						$('#txtBday').focus();
						$('#conBday').text('숫자를 이용해서 6자를 입력하세요');
						
					} else if( $('#txtPost').val() == '' ) {
					// 우편번호 검색 안하면
						$('#txtPost').focus();
						$('#conPost').text('우편번호를 검색해주세요');
						
					} else {
						$('#signup-frm').submit();
					}
				}
				
			});
			
			
		</script>
    </head>
    <body>
        <div id="wrapper">
        
            <jsp:include page="/WEB-INF/view/common/header_other.jsp"/>
            
			<jsp:include page="/WEB-INF/view/common/sideMenu_out.jsp"/>

            <div class="sidemenu-overlay"></div><!-- End .sidemenu-overlay -->
            
            <div class="main">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 col-md-push-3">
                            <div class="page-header text-center">
                                <h1>JOIN</h1>
                                <p>Create a New Account</p>
                            </div><!-- End .page-header -->

							<form action="/member/insertMember.do" class="signin-form" id="signup-frm">
                                <div class="form-group">
                                    <label>ID*</label> 
                                    <span id="conId" class="confirm"></span> <br/>
                                    <input id="txtId" name="memId" type="text" class="form-control" placeholder="영문 소문자, 숫자와 특수기호(_)를 이용해서 5~20자를 입력하세요">
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label>Password*</label> 
                                    <span id="conPass" class="confirm"></span> <br/>
                                    <input id="txtPass" name="memPw" type="password" class="form-control" placeholder="영문 대 소문자, 숫자, 특수기호를 이용해서 4~20자를 입력하세요"> 
                                </div><!-- End .form-group -->

								<div class="form-group">
                                    <label>Password-check*</label> 
                                    <span id="conWord" class="confirm"></span> <br/>
                                    <input id="txtWord" type="password" class="form-control" placeholder="비밀번호를 다시 한 번 입력하세요">
                                </div><!-- End .form-group -->
                                
                                <div class="form-group">
                                    <label>Name*</label> 
                                    <span id="conName" class="confirm"></span> <br/>
                                    <input id="txtName" name="memName" type="text" class="form-control" placeholder="이름을 입력하세요">
                                </div><!-- End .form-group -->
                                
                                <div class="form-group">
                                    <label>Email*</label> 
                                    <span id="conMail" class="confirm"></span> <br/>
                                    <input id="txtMail" name="memMail" type="text" class="form-control" placeholder="이메일을 입력하세요">
                                </div><!-- End .form-group -->
                                
                                <div class="form-group">
                                    <label>Phone*</label> 
                                    <span id="conPhone" class="confirm"></span> <br/>
                                    <select name="memPhone">
                                    	<option>010</option>
                                    	<option>011</option>
                                    	<option>017</option>
                                    	<option>016</option>
                                    	<option>019</option>
                                    </select>
                                    <input id="txtPhone" name="memPhone1" type="text" class="form-control" placeholder="전화번호를 입력하세요">
                                </div><!-- End .form-group -->
                                
                                <div class="form-group">
                                    <label>Birthday*</label> 
                                    <span id="conBday" class="confirm"></span> <br/>
                                    <input id="txtBday" name="memBirth" type="text" class="form-control" placeholder="생년월일 6자리를 입력하세요 ex)951005">
                                </div><!-- End .form-group -->
                                
                                <div class="radio-inline-container">
                                	<label>gender</label>
                                	<span class="confirm"></span> <br/>
									<div class="radio">
										<label>
											<input type="radio" name="memGender" value="M">
											<span class="check"></span>
											<span class="circle"></span>
											Male
										</label>
									</div><!-- End .radio -->
									<div class="radio">
										<label>
											<input type="radio" name="memGender" value="W">
											<span class="check"></span>
											<span class="circle"></span>
											Female
										</label>
									</div><!-- End .radio -->
                               	</div><!-- End .raddio-inline-container -->
                               	<br/>
                               	
                               	<div class="form-group">
                                    <label>Address*</label> 
									<span id="conAddr" class="confirm"></span> <br/>
                                    <input id="txtPost" name="memPost" type="text" class="post form-control" placeholder="Post" readonly>
                                    	<input id="btnPost" type="button" class="post btn btn-primary min-width" value="SEARCH"/>
                                    <input id="txtAddr" name="memAddr" type="text" class="post form-control" placeholder="Address" readonly>
                                    <input id="txtAD" name="memAddetail" type="text" class="form-control" placeholder="Address Detail">
                                </div><!-- End .form-group -->
                               	
                               	<div class="clearfix form-action">
                	          		<input id="btnJoin" type="button" class="btn btn-primary min-width" value="JOIN">
                            	</div><!-- End .form-action -->
                            </form>
                            
                        </div><!-- End .col-md-9 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .main -->
            
            <!-- footer -->
            <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
        </div><!-- End #wrapper -->
        
        <a id="scroll-top" href="/#top" title="Scroll top"><i class="fa fa-angle-up"></i></a>

        <!-- End -->
        <script src="/assets/js/plugins.js"></script>
        <script src="/assets/js/main.js"></script>
    </body>
</html>