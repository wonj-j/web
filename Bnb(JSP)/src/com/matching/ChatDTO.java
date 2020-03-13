package com.matching;

/**
 * 
 * @author 이진수
 * seq = 번호
 * content = 채팅 내용
 * chatTime = 채팅 시간
 * listseq = 목록 번호
 * userName = 채팅 유저 이름
 * ox = 채팅방 접속 유무
 * img = 유저 사진 url
 */
public class ChatDTO {
	 private  String seq;
	 private String content;
	 private String chatTime;
	 
	 private String listSeq;
	 private String userName;
	 private String ox;
	 
	 private String img;
	 
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getChatTime() {
		return chatTime;
	}
	public void setChatTime(String chatTime) {
		this.chatTime = chatTime;
	}

	public String getListSeq() {
		return listSeq;
	}
	public void setListSeq(String listSeq) {
		this.listSeq = listSeq;
	}
	public String getOx() {
		return ox;
	}
	public void setOx(String ox) {
		this.ox = ox;
	}
	@Override
	public String toString() {
		return "ChatDTO [seq=" + seq + ", content=" + content + ", chatTime=" + chatTime + ", listSeq=" + listSeq
				+ ", userName=" + userName + ", ox=" + ox + "]";
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
	
}
