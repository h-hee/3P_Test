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
	private MyPageDao mypage;												// DB 연결을 위한 MyPageDao
	
	// 회원 별 구매정보 얻어와서 myPurchase.jsp 페이지로 이동
	@RequestMapping("/myPurchase.do")
	public ModelAndView MyPurchase(HttpSession session, HttpServletRequest request) {
		
//		String memId = (String)session.getAttribute("memId");
		String memId = "user";
		
		List<MyPurchaseVO> orderList = mypage.getMyPurchase(memId);			// DB에서 구매목록 List 형태로 orderList 변수에 저장
		int total = mypage.getTotalPurchase(memId);							// 날짜 별 개수 total 변수에 저장
		int max = mypage.getMaxPurchase(memId);								// 날짜 별 최대 구매횟수 max 변수에 저장
		int totalPrice = 0;
		int totalCount = 0;
		
		MyPurchaseVO[][] myPurchase = new MyPurchaseVO[total][max];			// 같은 날짜에 구매한 제품들을 나눌 myPurchase 변수선언
		String day[] = new String[total];									// 구매 날짜 저장할 day 변수선언
		int orderTotalPrice[] = new int[total];								// 같은 날짜에 구매한 제품 총 가격을 담을 orderTotalPrive 변수선언
		int index[] = new int[total];										// 저장 될 위치를 지정해주는 index 변수선언
		
		for (int i = 0; i < index.length; i++) {							// 배열 초기화
			index[i] = 0;
			orderTotalPrice[i] = 0;
		}
		
		myPurchase[0][0] = orderList.get(0);								// 날짜 비교할 초기값 지정
		index[0]++;
		
		for (int i = 1; i < orderList.size(); i++) {						// for : 날짜별로 제품 분류 알고리즘
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
			
			for (int j = 0; j < max; j++) {									// for : 날짜 별 총 결제 금액, 최종 총 결제 금액, 최종 총 구매 제품 개수 알고리즘
				if(myPurchase[i][j] == null) {
					break;
				} else {
					orderTotalPrice[i] += myPurchase[i][j].getOrderPrice();
					totalPrice += myPurchase[i][j].getOrderPrice();
					totalCount += myPurchase[i][j].getOrderCnt();
				}
				
			}
			
			for (int j = 0, k = 0; j < 8; j++) {							// ##-##-## 날짜 형식에 맞추는 알고리즘
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
		
		ModelAndView mv = new ModelAndView();								// 페이지 이동을 위한 mv 변수선언
		mv.setViewName("/mypage/myPurchase");
		request.setAttribute("orderTotalPrice", orderTotalPrice);			// 각 변수들을 .jsp에 전달
		request.setAttribute("myPurchase", myPurchase);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("total", total);
		request.setAttribute("max", max);
		request.setAttribute("day", day);
		
		return mv;
	}
}