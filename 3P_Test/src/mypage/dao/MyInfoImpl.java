package mypage.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mypage.vo.MyInfoVO;

@Repository
public class MyInfoImpl implements MyInfoDao {
	
	@Autowired
	private SqlSessionTemplate ss;

	// MyInfo.jsp 에 나타낼 회원 정보 값 얻어오는 메소드
	@Override
	public MyInfoVO getMyInfo(String memId) {
		return ss.selectOne("mypage.getMyInfo", memId);
	}
}