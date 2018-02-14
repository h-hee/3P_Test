package common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/common")
public class CommonController {
	
	
	// 화면 띄우기
	@RequestMapping(value="/{url}.do")
	public String url(@PathVariable String url) {
		return "/common/" + url;
	}
	
	// index new/best
	@RequestMapping("/common/index.do")
	public ModelAndView index(ModelAndView mv) {
		mv.setViewName("/common/index");
		
		
		
		return mv;
	}
}
