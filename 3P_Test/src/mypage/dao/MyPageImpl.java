package mypage.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.vo.MemberVO;
import mypage.vo.MyPerfumeTestVO;
import mypage.vo.MyPurchaseVO;


@Repository
public class MyPageImpl implements MyPageDao {
	
	@Autowired
	private SqlSessionTemplate ss;

	// MyInfo.jsp 에 나타낼 회원 정보 값 얻어오는 메소드
	@Override
	public MemberVO getMyInfo(String memId) {
		return ss.selectOne("mypage.getMyInfo", memId);
	}

	// 3PointCharge.jsp 에 나타낼 회원 별 3Point 값 얻어오는 메소드
	@Override
	public int get3Point(String memId) {
		return ss.selectOne("mypage.get3Point", memId);
	}

	// 3Point 충전을 위한 update 메소드
	@Override
	public void add3Point(String memId, int addPoint) {
		HashMap map = new HashMap<>();
		map.put("memId", memId);
		map.put("addPoint", addPoint);
		
		ss.update("mypage.add3Point", map);
	}

	// MyPurchase.jsp 에 나타낼 구매목록 값 얻어오는 메소드
	@Override
	public List<MyPurchaseVO> getMyPurchase(String memId) {
		return ss.selectList("mypage.getMyPurchase", memId);
	}

	// 총 구매횟수 값 얻어오는 메소드
	@Override
	public int getTotalPurchase(String memId) {
		return ss.selectOne("mypage.getTotalPurchase", memId);
	}

	// 구매목록에서 선택 된 향수가 가장 많은 값 얻어오는 메소드
	public int getMaxPurchase(String memId) {
		return ss.selectOne("mypage.getMaxPurchase", memId);
	}

	// MyPerfumeTest.jsp 에 나타낼 시향목록 값 얻어오는 메소드
	@Override
	public List<MyPerfumeTestVO> getMyPerfumeTest(String memId, int first, int last) {
		HashMap map = new HashMap<>();
		map.put("memId", memId);
		map.put("first", first);
		map.put("last", last);
		return ss.selectList("mypage.getMyPerfumeTest", map);
	}

	// 시향목록 페이징 처리를 위한 시향목록 총 개수 얻어오는 메소드
	@Override
	public int getTotalPage(String memId) {
		return ss.selectOne("mypage.getTotalPage", memId);
	}

}