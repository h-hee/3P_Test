package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.dao.MemberDao;
import member.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class JoinController {
	
	@Autowired
	private MemberDao dao;
	
	// 회원가입
	@RequestMapping("/insertMember")
	public ModelAndView insertMember(ModelAndView mv, MemberVO vo, String memPhone1) {
		
		vo.setMemPhone(vo.getMemPhone() + memPhone1); // 전화번호 붙이기
		dao.insertMember(vo);
		
		mv.setViewName("/member/login");
		
		return mv;
	}
}
