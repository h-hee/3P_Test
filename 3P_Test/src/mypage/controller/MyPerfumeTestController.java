package mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mypage.dao.MyPageDao;
import mypage.vo.MyPerfumeTestVO;

@Controller
@RequestMapping("/mypage")
public class MyPerfumeTestController {
	
	@Autowired
	private MyPageDao mypage;														// DB 연결을 위한 MyPageDao
	
	// 나의 향수 시향정보를 얻어와서 myPerfumeTest.jsp 페이지로 이동
	@RequestMapping("/myPerfumeTest.do")
	public ModelAndView MyPerfumeTest(HttpSession session, String pageS) {
		
//		String memId = (String)session.getAttribute("memId");
		String memId = "user";
		
		int page;
		if(pageS != null) {																		// page 변수 초기화
			page = Integer.parseInt(pageS);
		} else {
			page = 1;
		}
		
		int first = (page - 1) * 9 + 1;
		int last = first + 8;
		int totalPage = mypage.getTotalPage(memId);
		
		List<MyPerfumeTestVO> myPerfumeTest = mypage.getMyPerfumeTest(memId, first, last);		// 회원 정보를 memberVO 변수에 저장
		
		ModelAndView mv = new ModelAndView();													// 페이지 이동을 위한 mv 변수선언
		mv.setViewName("/mypage/myPerfumeTest");
		mv.addObject("myPerfumeTest", myPerfumeTest);											// 각 변수들을 .jsp에 전달
		mv.addObject("totalPage", (int)Math.ceil(totalPage/(double)9));
		
		return mv;
	}
}