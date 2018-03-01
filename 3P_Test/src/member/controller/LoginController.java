package member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import common.controller.IndexController;
import member.dao.MemberDao;
import member.vo.MemberVO;
import mypage.dao.MyPageDao;
import mypage.vo.CartVO;
import product.dao.ProductDao;

@Controller
@RequestMapping("/member")
public class LoginController {

	@Autowired
	private MemberDao dao;
	@Autowired
	private MyPageDao myDAO;
	
	@RequestMapping("/selectMember")
	public ModelAndView selectMember(ModelAndView mv, MemberVO vo, HttpSession session) {
		
		MemberVO user = dao.selectMember(vo);
		
		if(user != null) { // 아이디와 비밀번호가 일치할 때
			
			List<CartVO> cartList = myDAO.selectCart(user.getMemId());
			String cartCnt = String.valueOf(cartList.size());
			session.setAttribute("memId", user.getMemId());
			
			mv.setViewName("/common/index");
			mv.addObject("user", user);
			mv.addObject("cartCnt", cartCnt);
			mv.addObject("cartList", cartList);
			
		} else { // 일치하지 않을 때 이전화면으로 (아직 이전화면 x)
			mv.setViewName("/member/login");
		}
		
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(ModelAndView mv, HttpSession session) {
		
		session.setAttribute("memId", null);
		
		mv.setViewName("/common/index");
		
		return mv;
	}
}
