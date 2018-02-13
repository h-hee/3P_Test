package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.dao.MemberDao;

@Controller
@RequestMapping("/member")
public class LoginController {

	@Autowired
	private MemberDao dao;
	
	@RequestMapping("/selectMember")
	public ModelAndView selectMember(ModelAndView mv) {
		
		
		
		mv.setViewName("/common/index");
		return mv;
	}
	
}
