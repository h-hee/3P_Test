package mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mypage")
public class MyPurchase {
	
	@RequestMapping("/myPurchase.do")
	public ModelAndView MyPurchase(HttpSession session) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName("/mypage/myPurchase");
		
		return model;
	}
}