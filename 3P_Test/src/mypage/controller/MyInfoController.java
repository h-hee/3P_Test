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
	private MyPageDao myPage;												// DB 연결을 위한 MyPageDao
	
	// 나의 정보 얻어와서 myInfo.jsp 페이지로 이동 
	@RequestMapping("/myInfo.do")
	public ModelAndView MyInfo(HttpSession session) {
		
//		String memId = (String)session.getAttribute("memId");
		String memId = "user";
		
		MemberVO memberVO = myPage.getMyInfo(memId);						// 회원 정보를 memberVO 변수에 저장
		
		ModelAndView mv = new ModelAndView();								// 페이지 이동을 위한 mv 변수선언
		mv.setViewName("/mypage/myInfo");
		mv.addObject("myInfoVO", memberVO);									// 각 변수들을 .jsp에 전달
		
		return mv;
	}
}