package mypage.vo;

public class CartVO {
	private String	cartNum;		// 장바구니 번호 (제품ID_회원ID)
	private String	memId;			// 회원ID
	private int		perSq;			// 제품ID
	private int		cartCnt;		// 선택수량
	private String	cartChk;		// 결제유무
	
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