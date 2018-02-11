package mypage.vo;

public class OrderListVO {
	private int		orderSq;
	private String	orderNum;
	private	String	memId;
	private int		perSq;
	private int		orderCnt;
	private int		orderPrice;
	
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