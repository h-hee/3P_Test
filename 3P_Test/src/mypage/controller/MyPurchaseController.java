package mypage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mypage.dao.MyPageDao;
import mypage.vo.MyPurchaseVO;

@Controller
@RequestMapping("/mypage")
public class MyPurchaseController {
	
	@Autowired
	private MyPageDao mypage;
	
	// 회원 별 구매정보 얻어와서 myPurchase.jsp 페이지로 이동
	@RequestMapping("/myPurchase.do")
	public ModelAndView MyPurchase(HttpSession session, HttpServletRequest request) {
		
//		String memId = (String)session.getAttribute("memId");
		String memId = "user";
		
		List<MyPurchaseVO> orderList = mypage.getMyPurchase(memId);
		int total = mypage.getTotalPurchase(memId);
		int max = mypage.getMaxPurchase(memId);
		int totalPrice = 0;
		int totalCount = 0;
		
		MyPurchaseVO[][] myPurchase = new MyPurchaseVO[total][max];
		String day[] = new String[total];
		int orderTotalPrice[] = new int[total];
		int index[] = new int[total];
		
		for (int i = 0; i < index.length; i++) {
			index[i] = 0;
			orderTotalPrice[i] = 0;
		}
		
		myPurchase[0][0] = orderList.get(0);
		index[0]++;
		
		for (int i = 1; i < orderList.size(); i++) {
			for (int j = 0; j < myPurchase.length; j++) {
				if(myPurchase[j][0] != null) {
					if(orderList.get(i).getOrderNum().equals(myPurchase[j][0].getOrderNum())) {
						myPurchase[j][index[j]] = orderList.get(i);
						index[j]++;
						break;
					}					
				} else {
					myPurchase[j][0] = orderList.get(i);
					index[j]++;
					break;
				}
			}
		}
		
		for (int i = 0; i < total; i++) {
			String imsi = myPurchase[i][0].getOrderNum();
			String imsi2 = imsi.substring(0,6);
			String imsi3 = "";
			
			for (int j = 0; j < max; j++) {
				if(myPurchase[i][j] == null) {
					break;
				} else {
					orderTotalPrice[i] += myPurchase[i][j].getOrderPrice();
					totalPrice += myPurchase[i][j].getOrderPrice();
					totalCount += myPurchase[i][j].getOrderCnt();
				}
				
			}
			
			for (int j = 0, k = 0; j < 8; j++) {
				if(j == 2 || j == 5) {
					imsi3 += "-";
				} else {
					if(k == 6) {
						break;
					} else {
						imsi3 += imsi2.substring(k,k+1);
						k++;					
					}
				}
			}
			day[i] = imsi3;
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/myPurchase");
		request.setAttribute("orderTotalPrice", orderTotalPrice);
		request.setAttribute("myPurchase", myPurchase);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("total", total);
		request.setAttribute("max", max);
		request.setAttribute("day", day);
		
		return mv;
	}
}