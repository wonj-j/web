package com.reservation;

public class ReserveDTO {
	private String content;
	private String hseq;
	private String userseq;
	
	private String checkindate;
	private String checkoutdate;
	private String bookstate;
	
	private String call;//발신인 표시 g,h
	

	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getHseq() {
		return hseq;
	}
	public void setHseq(String hseq) {
		this.hseq = hseq;
	}
	public String getUserseq() {
		return userseq;
	}
	public void setUserseq(String userseq) {
		this.userseq = userseq;
	}
	public String getCheckindate() {
		return checkindate;
	}
	public void setCheckindate(String checkindate) {
		this.checkindate = checkindate;
	}
	public String getCheckoutdate() {
		return checkoutdate;
	}
	public void setCheckoutdate(String checkoutdate) {
		this.checkoutdate = checkoutdate;
	}
	public String getBookstate() {
		return bookstate;
	}
	public void setBookstate(String bookstate) {
		this.bookstate = bookstate;
	}
	
	

}
