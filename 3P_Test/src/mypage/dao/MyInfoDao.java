package mypage.dao;

import mypage.vo.MyInfoVO;

public interface MyInfoDao {
	
	// MyInfo.jsp 에 나타낼 회원 정보 값 얻어오는 메소드
	MyInfoVO getMyInfo(String memId);
}