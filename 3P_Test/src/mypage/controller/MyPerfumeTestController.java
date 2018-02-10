package mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mypage")
public class MyPerfumeTestController {
	
	@RequestMapping("/myPerfumeTest.do")
	public ModelAndView MyPerfumeTest(HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/myPerfumeTest");
		
		return mv;
	}
}