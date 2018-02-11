package member.vo;

public class MemberShipVO {
	String msLevel;	// 등급
	int msCnt;		// 구매횟수
	
	public MemberShipVO() {}
	public MemberShipVO(String msLevel, int msCnt) {
		this.msLevel = msLevel;
		this.msCnt = msCnt;
	}
	
	public String getMsLevel() {
		return msLevel;
	}
	public void setMsLevel(String msLevel) {
		this.msLevel = msLevel;
	}
	public int getMsCnt() {
		return msCnt;
	}
	public void setMsCnt(int msCnt) {
		this.msCnt = msCnt;
	}
	
	
	
}
