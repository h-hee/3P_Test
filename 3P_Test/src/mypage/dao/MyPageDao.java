package mypage.dao;

import member.vo.MemberVO;

public interface MyPageDao {
	
	// MyInfo.jsp 에 나타낼 회원 정보 값 얻어오는 메소드
	MemberVO getMyInfo(String memId);
	
	// 3PointCharge.jsp 에 나타낼 회원 별 3Point 값 얻어오는 메소드
	int get3Point(String memId);
	
	// 3Point 충전을 위한 update 메소드
	void add3Point(String memId ,int addPoint);
}