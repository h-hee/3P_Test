package mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.vo.MemberVO;
import mypage.dao.MyPageDao;

@Controller
@RequestMapping("/mypage")
public class MyInfoController {

	@Autowired
	private MyPageDao myPage;
	
	// 나의 정보 얻어와서 myInfo.jsp 페이지로 이동 
	@RequestMapping("/myInfo.do")
	public ModelAndView MyInfo(HttpSession session) {
		
//		String memId = (String)session.getAttribute("memId");
		String memId = "user";
		
		MemberVO memberVO = myPage.getMyInfo(memId);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/myInfo");
		mv.addObject("myInfoVO", memberVO);
		
		return mv;
	}
}