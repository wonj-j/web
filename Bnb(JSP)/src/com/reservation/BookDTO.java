package com.reservation;

public class BookDTO {
	private String userseq;
	private String bookstate;
	private String checkin;
	private String checkout;
	private String hseq;
	
	public String getUserseq() {
		return userseq;
	}
	public void setUserseq(String userseq) {
		this.userseq = userseq;
	}
	public String getBookstate() {
		return bookstate;
	}
	public void setBookstate(String bookstate) {
		this.bookstate = bookstate;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public String getHseq() {
		return hseq;
	}
	public void setHseq(String hseq) {
		this.hseq = hseq;
	}
}
