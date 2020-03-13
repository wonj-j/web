package com.mypage;

/**
 * 
 * @author 정원재
 *
 * rseq : 리뷰번호
 * rcategoryseq: 리뷰 카테고리 번호
 * raccomname: 리뷰 숙소 이름
 * rrestname : 리뷰 맛집 이름
 * rtourname: 리뷰 여행 이름
 * rhostseq : 리뷰 호스트번호
 * rrestseq : 리뷰 맛집 번호
 * rtourseq : 리뷰 여행 번호
 * rcontent : 리뷰 내용
 * rstarscore : 리뷰 평점
 * rdate : 리뷰 작성 날짜
 */
public class ReviewDTO {
	private String rseq;
	private String rcategoryseq;
	
	private String raccomname;
	private String rrestname;
	private String rtourname;
	
	private String rhostseq;
	private String rrestseq;
	private String rtourseq;
	
	private String rcontent;
	private double rstarscore;
	private String rdate;
	
	
	public String getRseq() {
		return rseq;
	}
	public void setRseq(String rseq) {
		this.rseq = rseq;
	}
	public String getRcategoryseq() {
		return rcategoryseq;
	}
	public void setRcategoryseq(String rcategoryseq) {
		this.rcategoryseq = rcategoryseq;
	}
	public String getRaccomname() {
		return raccomname;
	}
	public void setRaccomname(String raccomname) {
		this.raccomname = raccomname;
	}
	public String getRhostseq() {
		return rhostseq;
	}
	public void setRhostseq(String rhostseq) {
		this.rhostseq = rhostseq;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public double getRstarscore() {
		return rstarscore;
	}
	public void setRstarscore(double rstarscore) {
		this.rstarscore = rstarscore;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRrestname() {
		return rrestname;
	}
	public void setRrestname(String rrestname) {
		this.rrestname = rrestname;
	}
	public String getRrestseq() {
		return rrestseq;
	}
	public void setRrestseq(String rrestseq) {
		this.rrestseq = rrestseq;
	}
	public String getRtourname() {
		return rtourname;
	}
	public void setRtourname(String rtourname) {
		this.rtourname = rtourname;
	}
	public String getRtourseq() {
		return rtourseq;
	}
	public void setRtourseq(String rtourseq) {
		this.rtourseq = rtourseq;
	}

}
