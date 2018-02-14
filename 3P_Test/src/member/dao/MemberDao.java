package member.dao;

import member.vo.MemberVO;

public interface MemberDao {
	// join.jsp에 입력한 내용을 통해 회원가입을 하는 insert 메소드
	public int insertMember(MemberVO vo);
	
	// login.jsp에서 회원이 맞나 확인하는 메소드
	public MemberVO selectMember(MemberVO vo);
}
