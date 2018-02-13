package mypage.dao;

import java.util.List;

import member.vo.MemberVO;
import mypage.vo.MyPerfumeTestVO;
import mypage.vo.MyPurchaseVO;

public interface MyPageDao {
	
	// MyInfo.jsp 에 나타낼 회원 정보 값 얻어오는 메소드
	MemberVO getMyInfo(String memId);
	
	// 3PointCharge.jsp 에 나타낼 회원 별 3Point 값 얻어오는 메소드
	int get3Point(String memId);
	
	// 3Point 충전을 위한 update 메소드
	void add3Point(String memId ,int addPoint);
	
	// MyPurchase.jsp 에 나타낼 구매목록 값 얻어오는 메소드
	List<MyPurchaseVO> getMyPurchase(String memId);
	
	// 총 구매횟수 값 얻어오는 메소드
	int getTotalPurchase(String memId);
	
	// 구매목록에서 선택 된 향수가 가장 많은 값 얻어오는 메소드
	int getMaxPurchase(String memId);
	
	// MyPerfumeTest.jsp 에 나타낼 시향목록 값 얻어오는 메소드
	List<MyPerfumeTestVO> getMyPerfumeTest(String memId, int first, int last);
	
	// 시향목록 페이징 처리를 위한 시향목록 총 개수 얻어오는 메소드
	int getTotalPage(String memId);
}