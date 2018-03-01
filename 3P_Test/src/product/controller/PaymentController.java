package product.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mypage.dao.MyPageDao;
import mypage.vo.CartListVO;

@Controller
@RequestMapping("/product")
public class PaymentController {
	
	@Autowired
	MyPageDao myDAO;
	
	@RequestMapping("/checkout")
	public ModelAndView checkout(HttpSession session, ModelAndView mv) {
		
		String id = String.valueOf(session.getAttribute("memId"));
		List<CartListVO> cartList = myDAO.selectCart(id);
		String cartCnt = String.valueOf(cartList.size());
		
		mv.setViewName("/product/payment");
		mv.addObject("cartList", cartList);
		mv.addObject("cartCnt", cartCnt);
		
		return mv;
	}
}
