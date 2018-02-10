package mypage.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PointChargeImpl implements PointChargeDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 3PointCharge.jsp 에 나타낼 회원 별 3Point 값 얻어오는 메소드s
	@Override
	public int get3Point(String memId) {
		return ss.selectOne("mypage.get3Point", memId);
	}

	// 3Point 충전을 위한 update 메소드
	@Override
	public void add3Point(String memId ,int addPoint) {
		HashMap map = new HashMap<>();
		map.put("memId", memId);
		map.put("addPoint", addPoint);
		
		ss.update("mypage.add3Point", map);
	}
}