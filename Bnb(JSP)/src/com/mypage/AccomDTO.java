package com.mypage;

/**
 * 
 * @author 정원재
 * 숙소 객체
 * seq:숙소번호
 * accominfo:숙소정보
 * capacity:숙소인원수
 * accomtype:숙소유형
 * accompic:숙소사진
 * cancelperiod:숙소취소기간
 * checkintime:숙소체크인시간
 * checkouttime:숙소체크아웃시간
 * hostseq:호스트 번호
 * detailinfo:숙소상세정보
 * accomname:숙소이름
 * bookcal_checkindate:예약날짜
 * bookcal_checkoutdate:예약끝나는날짜
 * book_bookcnt:예약날짜수
 * book_state:숙소 예약 상태
 */
public class AccomDTO {
	private String seq;
	private String accominfo;
	private String capacity;
	private String accomtype;
	private String accompic;
	private String cancelperiod;
	private String checkintime;
	private String checkouttime;
	private String hostseq;
	private String detailinfo;
	private String accomname;
	private String bookcal_checkindate;
	private String bookcal_checkoutdate;
	private int book_bookcnt;
	private String book_state;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getAccominfo() {
		return accominfo;
	}
	public void setAccominfo(String accominfo) {
		this.accominfo = accominfo;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getAccomtype() {
		return accomtype;
	}
	public void setAccomtype(String accomtype) {
		this.accomtype = accomtype;
	}
	public String getAccompic() {
		return accompic;
	}
	public void setAccompic(String accompic) {
		this.accompic = accompic;
	}
	public String getCancelperiod() {
		return cancelperiod;
	}
	public void setCancelperiod(String cancelperiod) {
		this.cancelperiod = cancelperiod;
	}
	public String getCheckintime() {
		return checkintime;
	}
	public void setCheckintime(String checkintime) {
		this.checkintime = checkintime;
	}
	public String getCheckouttime() {
		return checkouttime;
	}
	public void setCheckouttime(String checkouttime) {
		this.checkouttime = checkouttime;
	}
	public String getHostseq() {
		return hostseq;
	}
	public void setHostseq(String hostseq) {
		this.hostseq = hostseq;
	}
	public String getDetailinfo() {
		return detailinfo;
	}
	public void setDetailinfo(String detailinfo) {
		this.detailinfo = detailinfo;
	}
	public String getAccomname() {
		return accomname;
	}
	public void setAccomname(String accomname) {
		this.accomname = accomname;
	}
	public int getBook_bookcnt() {
		return book_bookcnt;
	}
	public void setBook_bookcnt(int book_bookcnt) {
		this.book_bookcnt = book_bookcnt;
	}
	public String getBook_state() {
		return book_state;
	}
	public void setBook_state(String book_state) {
		this.book_state = book_state;
	}
	public String getBookcal_checkoutdate() {
		return bookcal_checkoutdate;
	}
	public void setBookcal_checkoutdate(String bookcal_checkoutdate) {
		this.bookcal_checkoutdate = bookcal_checkoutdate;
	}
	public String getBookcal_checkindate() {
		return bookcal_checkindate;
	}
	public void setBookcal_checkindate(String bookcal_checkindate) {
		this.bookcal_checkindate = bookcal_checkindate;
	}
	
	
}
