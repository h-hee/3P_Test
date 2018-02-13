package member.dao;

import member.vo.MemberVO;

public interface MemberDao {
	// join.jsp에 입력한 내용을 통해 회원가입을 하는 insert 메소드
	public int insertMember(MemberVO vo);
	
	
}
