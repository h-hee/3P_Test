package mypage.vo;

// MyInfo.jsp 에 나타낼 Date값을 위한 model VO

public class MyInfoVO {
	private String	memId;
	private String	memName;
	private String	memMail;
	private String	memAddr;
	private String	memAddetail;
	private int		memPoint;
	
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemMail() {
		return memMail;
	}
	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}
	public String getMemAddr() {
		return memAddr;
	}
	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}
	public String getMemAddetail() {
		return memAddetail;
	}
	public void setMemAddetail(String memAddetail) {
		this.memAddetail = memAddetail;
	}
	public int getMemPoint() {
		return memPoint;
	}
	public void setMemPoint(int memPoint) {
		this.memPoint = memPoint;
	}
}