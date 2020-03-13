package com.mypage;
/**
 * 
 * @author 정원재
 * seq: 유저번호
 * pw: 비밀번호
 * id: 아이디
 * name: 이름
 * tel: 핸드폰번호
 * birth: 생일
 * gender: 성별
 * email: 이메일
 * hobby: 취미(자기소개글)
 * pic:프로필 사진
 * admin:권한
 */
public class UserDTO {
	private String seq;//유저번호
	private String pw;//비밀번호
	private String id;//아이디
	private String name;//이름
	private String tel;//핸드폰번호
	private String birth;//생일
	private String gender;//성별
	private String email;//이메일
	private String hobby;//취미(자기소개글)
	private String pic;//프로필사진
	private String admin;//권한
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
}
