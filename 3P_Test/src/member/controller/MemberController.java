package member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	
	// 화면 띄우기
	@RequestMapping(value="/{url}.do")
	public String url(@PathVariable String url) {
		return "/member/" + url;
	}

}
