package mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mypage")
public class PointChargeController {

	@RequestMapping("/3PoingCharge.do")
	public ModelAndView PointCharge(HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/3PointCharge");
		
		return mv;
	}

	@RequestMapping("/3PointCargeSuc.do")
	public ModelAndView Suc(HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/3PointChargeSuc");
		
		return mv;
	}
	
}
