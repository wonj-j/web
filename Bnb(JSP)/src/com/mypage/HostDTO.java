package com.mypage;


/**
 * 
 * @author 정원재
 * ---------------숙소리스트
 * accomseq : 숙소리스트번호
 * accomid : 숙소리스트 유저아이디
 * accompw : 숙소리스트 유저비밀번호
 * accomuserseq : 숙소리스트 유저번호
 * accomhostseq : 숙소리스트 호스트번호
 * accomfee : 숙소리스트 숙소가격
 * accomname: 숙소리스트 숙소이름
 * accomtype : 숙소리스트 숙소유형
 * accomcancelperiod : 숙소리스트 취소기간
 * accomcapacity: 숙소리스트 숙소인원수
 * accomcheckintime : 숙소리스트 숙소 체크인 시간
 * accomcheckouttime : 숙소리스트 숙소 체크아웃 시간
 * accomaddress : 숙소리스트 숙소주소
 * accomrule : 숙소리스트 숙소규칙
 * accomemail : 숙소리스트 호스트이메일
 *
 * accompicseq : 숙소리스트 숙소사진 번호
 * accompic : 숙소리스트 숙소사진
 * 
 * ---------------예약리스트
 * bookseq : 예약리스트 예약번호
 * bookuserseq : 예약리스트 유저번호
 * bookhostseq : 예약리스트 호스트번호
 * bookname : 예약리스트 예약자 이름
 * bookcheckindate : 예약 시작날짜
 * bookcheckoutdate : 예약 끝날짜
 * bookaccomname: 예약숙소이름
 * bookcnt : 예약날짜수
 * bookstate : 예약상태
 * 
 * ---------------예약자 메시지
 * msgseq : 예약메시지리스트 번호
 * msgtime : 예약메시지리스트 메시지보낸시간
 * msgdates : 예약메시지리스트 메시지보낸날짜
 * msgcontent : 예약메시지리스트 메시지내용
 * msgbookseq : 예약메시지리스트 예약번호
 * msguserseq : 예약메시지리스트 유저번호
 * msghostseq : 예약메시지리스트 호스트번호
 * msgusername : 예약메시지리스트 유저이름
 * msguserpic : 예약메시지리스트 유저사진
 * msghostname : 예약메시지리스트 호스트이름
 * msgcaller : 예약메시지리스트 발신자 구분
 * 
 */
public class HostDTO {
	private String accomseq;
	private String accomid;
	private String accompw;
	private String accomuserseq;
	private String accomhostseq;
	private String accomfee;
	private String accomname;
	private String accomtype;
	private String accomcancelperiod;
	private String accomcapacity;
	private String accomcheckintime;
	private String accomcheckouttime;
	private String accomaddress;
	private String accomrule;
	private String accomemail;
	
	private String accompicseq;
	private String accompic;
	
	private String bookseq;
	private String bookuserseq;
	private String bookhostseq;
	private String bookname;
	private String bookcheckindate;
	private String bookcheckoutdate;
	private String bookaccomname;
	private String bookcnt;
	private String bookstate;
	
	private String msgseq;
	private String msgtime;
	private String msgdates;
	private String msgcontent;
	private String msgbookseq;
	private String msguserseq;
	private String msghostseq;
	private String msgusername;
	private String msguserpic;
	private String msghostname;
	private String msgcaller;
	
	
	
	public String getAccomid() {
		return accomid;
	}
	public void setAccomid(String accomid) {
		this.accomid = accomid;
	}
	public String getAccompw() {
		return accompw;
	}
	public void setAccompw(String accompw) {
		this.accompw = accompw;
	}
	public String getAccomuserseq() {
		return accomuserseq;
	}
	public void setAccomuserseq(String accomuserseq) {
		this.accomuserseq = accomuserseq;
	}
	public String getAccomhostseq() {
		return accomhostseq;
	}
	public void setAccomhostseq(String accomhostseq) {
		this.accomhostseq = accomhostseq;
	}
	public String getAccomfee() {
		return accomfee;
	}
	public void setAccomfee(String accomfee) {
		this.accomfee = accomfee;
	}
	public String getAccomname() {
		return accomname;
	}
	public void setAccomname(String accomname) {
		this.accomname = accomname;
	}
	public String getAccompic() {
		return accompic;
	}
	public void setAccompic(String accompic) {
		this.accompic = accompic;
	}
	public String getAccomtype() {
		return accomtype;
	}
	public void setAccomtype(String accomtype) {
		this.accomtype = accomtype;
	}
	public String getAccomcancelperiod() {
		return accomcancelperiod;
	}
	public void setAccomcancelperiod(String accomcancelperiod) {
		this.accomcancelperiod = accomcancelperiod;
	}
	public String getAccomcapacity() {
		return accomcapacity;
	}
	public void setAccomcapacity(String accomcapacity) {
		this.accomcapacity = accomcapacity;
	}
	public String getAccomcheckintime() {
		return accomcheckintime;
	}
	public void setAccomcheckintime(String accomcheckintime) {
		this.accomcheckintime = accomcheckintime;
	}
	public String getAccomcheckouttime() {
		return accomcheckouttime;
	}
	public void setAccomcheckouttime(String accomcheckouttime) {
		this.accomcheckouttime = accomcheckouttime;
	}
	public String getAccomaddress() {
		return accomaddress;
	}
	public void setAccomaddress(String accomaddress) {
		this.accomaddress = accomaddress;
	}
	public String getAccomrule() {
		return accomrule;
	}
	public void setAccomrule(String accomrule) {
		this.accomrule = accomrule;
	}
	public String getBookseq() {
		return bookseq;
	}
	public void setBookseq(String bookseq) {
		this.bookseq = bookseq;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	
	public String getBookaccomname() {
		return bookaccomname;
	}
	public void setBookaccomname(String bookaccomname) {
		this.bookaccomname = bookaccomname;
	}
	public String getBookstate() {
		return bookstate;
	}
	public void setBookstate(String bookstate) {
		this.bookstate = bookstate;
	}
	public String getMsgseq() {
		return msgseq;
	}
	public void setMsgseq(String msgseq) {
		this.msgseq = msgseq;
	}
	public String getMsgdates() {
		return msgdates;
	}
	public void setMsgdates(String msgdates) {
		this.msgdates = msgdates;
	}
	public String getMsgcontent() {
		return msgcontent;
	}
	public void setMsgcontent(String msgcontent) {
		this.msgcontent = msgcontent;
	}
	public String getMsgbookseq() {
		return msgbookseq;
	}
	public void setMsgbookseq(String msgbookseq) {
		this.msgbookseq = msgbookseq;
	}
	public String getMsguserseq() {
		return msguserseq;
	}
	public void setMsguserseq(String msguserseq) {
		this.msguserseq = msguserseq;
	}
	public String getMsghostseq() {
		return msghostseq;
	}
	public void setMsghostseq(String msghostseq) {
		this.msghostseq = msghostseq;
	}
	public String getAccomseq() {
		return accomseq;
	}
	public void setAccomseq(String accomseq) {
		this.accomseq = accomseq;
	}
	public String getAccomemail() {
		return accomemail;
	}
	public void setAccomemail(String accomemail) {
		this.accomemail = accomemail;
	}
	public String getBookcheckindate() {
		return bookcheckindate;
	}
	public void setBookcheckindate(String bookcheckindate) {
		this.bookcheckindate = bookcheckindate;
	}
	public String getBookcheckoutdate() {
		return bookcheckoutdate;
	}
	public void setBookcheckoutdate(String bookcheckoutdate) {
		this.bookcheckoutdate = bookcheckoutdate;
	}
	public String getMsgtime() {
		return msgtime;
	}
	public void setMsgtime(String msgtime) {
		this.msgtime = msgtime;
	}
	public String getMsgusername() {
		return msgusername;
	}
	public void setMsgusername(String msgusername) {
		this.msgusername = msgusername;
	}
	public String getMsghostname() {
		return msghostname;
	}
	public void setMsghostname(String msghostname) {
		this.msghostname = msghostname;
	}
	public String getMsguserpic() {
		return msguserpic;
	}
	public void setMsguserpic(String msguserpic) {
		this.msguserpic = msguserpic;
	}
	public String getBookcnt() {
		return bookcnt;
	}
	public void setBookcnt(String bookcnt) {
		this.bookcnt = bookcnt;
	}
	public String getMsgcaller() {
		return msgcaller;
	}
	public void setMsgcaller(String msgcaller) {
		this.msgcaller = msgcaller;
	}
	public String getAccompicseq() {
		return accompicseq;
	}
	public void setAccompicseq(String accompicseq) {
		this.accompicseq = accompicseq;
	}
	public String getBookuserseq() {
		return bookuserseq;
	}
	public void setBookuserseq(String bookuserseq) {
		this.bookuserseq = bookuserseq;
	}
	public String getBookhostseq() {
		return bookhostseq;
	}
	public void setBookhostseq(String bookhostseq) {
		this.bookhostseq = bookhostseq;
	}
	
	

	
	
	
	
}
