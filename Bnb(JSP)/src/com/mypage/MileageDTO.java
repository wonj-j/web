package com.mypage;

/**
 * 
 * @author 정원재
 *
 * milepoint:마일리지포인트
 * milestate:마일리지 상태
 * miledate: 마일리지 사용날짜및 적립날짜(state로 판단)
 * mileaccomname: 마일리지 적용된 숙소 이름
 * 
 * coupcouponcnt: 쿠폰 갯수
 * coupaccomname: 쿠폰 사용된 숙소 이름
 * coupstate : 쿠폰 사용된 상태
 * coupdate: 쿠폰 사용날짜및 적립날짜(state로 판단)
 */
public class MileageDTO {
	//마일리지
	private String milepoint;
	private int milestate;
	private String miledate;//마일리지 사용날짜및 적립날짜(state로 판단)
	private String mileaccomname;
	//쿠폰
	private int coupcouponcnt;
	private String coupaccomname;
	private String coupstate;
	private String coupdate;//쿠폰 사용날짜및 적립날짜(state로 판단)
	
	
	public String getMilepoint() {
		return milepoint;
	}
	public void setMilepoint(String milepoint) {
		this.milepoint = milepoint;
	}
	public int getMilestate() {
		return milestate;
	}
	public void setMilestate(int milestate) {
		this.milestate = milestate;
	}
	public String getMiledate() {
		return miledate;
	}
	public void setMiledate(String miledate) {
		this.miledate = miledate;
	}
	public String getMileaccomname() {
		return mileaccomname;
	}
	public void setMileaccomname(String mileaccomname) {
		this.mileaccomname = mileaccomname;
	}
	public int getCoupcouponcnt() {
		return coupcouponcnt;
	}
	public void setCoupcouponcnt(int coupcouponcnt) {
		this.coupcouponcnt = coupcouponcnt;
	}

	public String getCoupstate() {
		return coupstate;
	}
	public void setCoupstate(String coupstate) {
		this.coupstate = coupstate;
	}
	public String getCoupdate() {
		return coupdate;
	}
	public void setCoupdate(String coupdate) {
		this.coupdate = coupdate;
	}
	public String getCoupaccomname() {
		return coupaccomname;
	}
	public void setCoupaccomname(String coupaccomname) {
		this.coupaccomname = coupaccomname;
	}
	
	
	
}
