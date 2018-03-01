package mypage.vo;

public class CartListVO {
	private String perName;	// 해당 제품 이름
	private int perPrice;	// 해당 제품 가격 * 선택 수량
	private int cartCnt;	// 해당 제품 선택 수량
	
	public CartListVO() {}
	public CartListVO(String perName, int perPrice, int cartCnt) {
		this.perName = perName;
		this.perPrice = perPrice;
		this.cartCnt = cartCnt;
	}
	
	public String getPerName() {
		return perName;
	}
	public void setPerName(String perName) {
		this.perName = perName;
	}
	public int getPerPrice() {
		return perPrice;
	}
	public void setPerPrice(int perPrice) {
		this.perPrice = perPrice;
	}
	public int getCartCnt() {
		return cartCnt;
	}
	public void setCartCnt(int cartCnt) {
		this.cartCnt = cartCnt;
	}
}
