package mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mypage.dao.MyInfoDao;
import mypage.vo.MyInfoVO;

@Controller
@RequestMapping("/mypage")
public class MyInfoController {

	@Autowired
	private MyInfoDao myInfo;
	
	@RequestMapping("/myInfo.do")
	public ModelAndView MyInfo(HttpSession session) {
		
		String memId = (String)session.getAttribute("memId");
		
		MyInfoVO myInfoVO = myInfo.getMyInfo(memId);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/myInfo");
		mv.addObject("myInfoVO", myInfoVO);
		
		return mv;
	}
}