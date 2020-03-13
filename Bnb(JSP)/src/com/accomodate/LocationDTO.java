package com.accomodate;

public class LocationDTO {
	private String seq;
	private String accomseq;
	
	private String lat;
	private String lng;
	private String accomname;
	private String accomtype;
	private String fee;
	/*
	 * private String accompic;
	 * 
	 * public String getAccompic() { return accompic; } public void
	 * setAccompic(String accompic) { this.accompic = accompic; }
	 */
	private String hseq;
	
	
	public String getHseq() {
		return hseq;
	}
	public void setHseq(String hseq) {
		this.hseq = hseq;
	}
	public String getAccomseq() {
		return accomseq;
	}
	public void setAccomseq(String accomseq) {
		this.accomseq = accomseq;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	public String getAccomname() {
		return accomname;
	}
	public void setAccomname(String accomname) {
		this.accomname = accomname;
	}
	public String getAccomtype() {
		return accomtype;
	}
	public void setAccomtype(String accomtype) {
		this.accomtype = accomtype;
	}
	public String getFee() {
		return fee;
	}
	public void setFee(String fee) {
		this.fee = fee;
	}
	
	
}
