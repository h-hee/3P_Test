package member.vo;

public class MemberVO {
	String memId;		// 회원ID
	String memPw;		// 비밀번호
	String memName;		// 이름
	String memMail;		// 이메일
	String memBirth;	// 생년월일
	String memGender;	// 성별
	String memPost;		// 우편번호
	String memAddr;		// 주소
	String memAddetail;	// 상세주소
	int memTest;		// 시향테스트
	int memPoint;		// 3Point
	String msLevel;		// 등급
	
	public MemberVO() {}
	public MemberVO(String memId, String memPw, String memName,
			String memMail, String memBirth, String memGender,
			String memPost, String memAddr, String memAddetail,
			int memTest, int memPoint, String msLevel) {
		this.memId = memId;
		this.memPw = memPw;
		this.memName = memName;
		this.memMail = memMail;
		this.memBirth = memBirth;
		this.memGender = memGender;
		this.memPost = memPost;
		this.memAddr = memAddr;
		this.memAddetail = memAddetail;
		this.memTest = memTest;
		this.memPoint = memPoint;
		this.msLevel = msLevel;
	}
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
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
	public String getMemBirth() {
		return memBirth;
	}
	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}
	public String getMemGender() {
		return memGender;
	}
	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}
	public String getMemPost() {
		return memPost;
	}
	public void setMemPost(String memPost) {
		this.memPost = memPost;
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
	public int getMemTest() {
		return memTest;
	}
	public void setMemTest(int memTest) {
		this.memTest = memTest;
	}
	public int getMemPoint() {
		return memPoint;
	}
	public void setMemPoint(int memPoint) {
		this.memPoint = memPoint;
	}
	public String getMsLevel() {
		return msLevel;
	}
	public void setMsLevel(String msLevel) {
		this.msLevel = msLevel;
	}	
}
