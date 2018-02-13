package mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mypage.dao.MyPageDao;

@Controller
@RequestMapping("/mypage")
public class PointChargeController {
	
	@Autowired
	private MyPageDao myPage;													// DB 연결을 위한 MyPageDao

	// 회원 별 3Point 얻어와 3PointCharge.jsp 페이지 이동
	@RequestMapping("/3PoingCharge.do")
	public ModelAndView PointCharge(HttpSession session, HttpServletRequest request) {
		
//		String memId = (String)session.getAttribute("memId");
		String memId = "user";
		
		String point = String.valueOf(myPage.get3Point(memId));					// 회원 별 보유 3Point를 point 변수에 저장 
		
		ModelAndView mv = new ModelAndView();									// 페이지 이동을 위한 mv 변수선언
		mv.setViewName("/mypage/3PointCharge");
		request.setAttribute("3Point", point);									// 각 변수들을 .jsp에 전달
		
		return mv;
	}

	// 추가할 3Point update, 3PointChargeSuc.jsp 페이지 이동
	@RequestMapping("/3PointChargeSuc.do")
	public ModelAndView Suc(HttpSession session, String add3Point) {
		
//		String memId = (String)session.getAttribute("memId");
		String memId = "user";
		
		int addPoint = Integer.valueOf(add3Point);								// parameter 값으로 가져온 추가 될 3Point를 addPoint 변수에 저장
		myPage.add3Point(memId, addPoint);										// 추가 될 3Point를 DB에 update
		
		ModelAndView mv = new ModelAndView();									// 페이지 이동을 위한 mv 변수선언
		mv.setViewName("/mypage/3PointChargeSuc");
		
		return mv;
	}
	
}