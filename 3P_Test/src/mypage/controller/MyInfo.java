package mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mypage")
public class MyInfo {
	
	@RequestMapping("/myInfo.do")
	public ModelAndView MyInfo(HttpSession session) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName("/mypage/myInfo");
		
		return model;
	}
}
