/**
 * 3PointCharge.jsp 페이지 유효성 검사 JS - 양은지
 */

$(document).ready(function(){
	
	// 카드 정보 입력 시 유효성 검사
	$('#payNow').click(function() {
		var check = 0;
		
		// 공백 시 check 변수에 count 1 증가
		if ($('#CardName').val() == "") {
			check++;
		} else if ($('#CardNumber').val() == "") {
			check++;
		} else if ($('#CVVnumber').val() == "") {
			check++;
		}
		
		if(check != 0) {
			alert('입력 사항을 확인해주세요.');
		} else {
			// 유효성 검사 마친 후 페이지 이동
			location.href="/mypage/3PointCargeSuc.do";
		}
		
	});
	
});