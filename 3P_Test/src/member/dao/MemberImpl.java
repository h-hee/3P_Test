package member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.vo.MemberVO;

@Repository
public class MemberImpl implements MemberDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public int insertMember(MemberVO vo) {
	// join.jsp에 입력한 내용을 통해 회원가입을 하는 insert 메소드
		
		return ss.insert("member.insertMember", vo);
	}

	@Override
	public MemberVO selectMember(MemberVO vo) {
	// login.jsp에서 회원이 맞나 확인하는 메소드
		
		return ss.selectOne("member.selectMember", vo);
	}

}
