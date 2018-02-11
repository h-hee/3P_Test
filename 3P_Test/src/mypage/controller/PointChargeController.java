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
	private MyPageDao myPage;

	// 회원 별 3Point 얻어와 3PointCharge.jsp 페이지 이동
	@RequestMapping("/3PoingCharge.do")
	public ModelAndView PointCharge(HttpSession session, HttpServletRequest request) {
		
//		String memId = (String)session.getAttribute("memId");
		String memId = "user";
		
		String point = String.valueOf(myPage.get3Point(memId));
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/3PointCharge");
		request.setAttribute("3Point", point);
		
		return mv;
	}

	// 추가할 3Point update, 3PointChargeSuc.jsp 페이지 이동
	@RequestMapping("/3PointChargeSuc.do")
	public ModelAndView Suc(HttpSession session, String add3Point) {
		
//		String memId = (String)session.getAttribute("memId");
		String memId = "user";
		
		int addPoint = Integer.valueOf(add3Point);
		myPage.add3Point(memId, addPoint);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/3PointChargeSuc");
		
		return mv;
	}
	
}