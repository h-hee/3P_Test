package mypage.vo;

public class CartVO {
	private String	cartNum;
	private String	memId;
	private int		perSq;
	private int		cartCnt;
	private String	cartChk;
	
	public String getCartNum() {
		return cartNum;
	}
	public void setCartNum(String cartNum) {
		this.cartNum = cartNum;
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
	public int getCartCnt() {
		return cartCnt;
	}
	public void setCartCnt(int cartCnt) {
		this.cartCnt = cartCnt;
	}
	public String getCartChk() {
		return cartChk;
	}
	public void setCartChk(String cartChk) {
		this.cartChk = cartChk;
	}
}