package mypage.vo;

public class MyPerfumeTestVO {
	private String	preNum;			// 시향번호 (제품ID_회원ID)
	private String	memId;			// 회원ID
	private int		perSq;			// 제품ID
	private String	preChk;			// 주문유무
	private String	preDate;		// 시향신청일
	private String	perGender;		// 사용고객 성별
	private String	perName;			// 제품명
	
	public String getPreNum() {
		return preNum;
	}
	public void setPreNum(String preNum) {
		this.preNum = preNum;
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
	public String getPreChk() {
		return preChk;
	}
	public void setPreChk(String preChk) {
		this.preChk = preChk;
	}
	public String getPreDate() {
		return preDate;
	}
	public void setPreDate(String preDate) {
		this.preDate = preDate;
	}
	public String getPerGender() {
		return perGender;
	}
	public void setPerGender(String perGender) {
		this.perGender = perGender;
	}
	public String getPerName() {
		return perName;
	}
	public void setPerName(String perName) {
		this.perName = perName;
	}
}