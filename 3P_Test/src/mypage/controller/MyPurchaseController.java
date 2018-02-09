package mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mypage")
public class MyPurchaseController {
	
	@RequestMapping("/myPurchase.do")
	public ModelAndView MyPurchase(HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/myPurchase");
		
		return mv;
	}
}