package com.food;

/**
 * 
 * 음식점의 지역정보와 카테고리 정보를 담는 DTO
 * @author 이지성
 *
 */
public class AreaDTO {
	private String seq;
	private String city;
	private String area;
	private String category;
	
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	

}
