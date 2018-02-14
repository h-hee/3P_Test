package member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.dao.MemberDao;
import member.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class LoginController {

	@Autowired
	private MemberDao dao;
	
	@RequestMapping("/selectMember")
	public ModelAndView selectMember(ModelAndView mv, MemberVO vo, HttpSession session) {
		
		MemberVO user = dao.selectMember(vo);
		
		if(user != null) { // 아이디와 비밀번호가 일치할 때
			session.setAttribute("memId", user.getMemId());
			mv.setViewName("/common/index");
			mv.addObject("user", user);
			
		} else { // 일치하지 않을 때 이전화면으로 (아직 이전화면 x)
			mv.setViewName("/member/login");
		}
		
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(ModelAndView mv, HttpSession session) {
		
		session.setAttribute("memId", null);
		
		mv.setViewName("/common/index");
		
		return mv;
	}
}
