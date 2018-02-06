package mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mypage")
public class PointCharge {

	@RequestMapping("/3PoingCharge.do")
	public ModelAndView PointCharge(HttpSession session) {
		
		ModelAndView model = new ModelAndView();
		model.setViewName("/mypage/3PointCharge");
		
		return model;
	}
}
