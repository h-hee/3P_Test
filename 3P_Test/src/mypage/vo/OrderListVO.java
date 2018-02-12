package mypage.vo;

public class OrderListVO {
	private int		orderSq;			// 주문내역 시퀀스
	private String	orderNum;			// 주문번호 (YYMMDDHHmmSS_회원ID)
	private	String	memId;				// 회원ID
	private int		perSq;				// 제품ID
	private int		orderCnt;			// 주문수량
	private int		orderPrice;			// 주문가격
	
	public int getOrderSq() {
		return orderSq;
	}
	public void setOrderSq(int orderSq) {
		this.orderSq = orderSq;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getPerSq() {
		return perSq;
	}
	public void setPerSq(int perSq) {
		this.perSq = perSq;
	}
	public int getOrderCnt() {
		return orderCnt;
	}
	public void setOrderCnt(int orderCnt) {
		this.orderCnt = orderCnt;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
}