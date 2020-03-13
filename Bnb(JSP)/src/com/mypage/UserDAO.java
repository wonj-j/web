package com.mypage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.main.DBUtil;

/**
 * 
 * @author 정원재
 * 유저에 대한 정보를 조작하는 곳
 */
public class UserDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	/**
	 * @author 정원재
	 * DB연결하는 메소드
	 */
	public UserDAO() {
		this.conn = DBUtil.open();
	}

	/**
	 * @author 정원재
	 * DB연결을 끊는 메소드
	 */
	public void close() {
		try {			
			this.conn.close();			
		} catch (SQLException e) {		
			e.printStackTrace();
		}
	}
	
	
	

	/**
	 * @author 정원재
	 * (테스트용)
	 * 유저번호를 직접 입력해 그 번호로 db에서 유저정보를 가져오는 메소드
	 * 
	 * @return dto 유저정보
	 */
	public UserDTO getUser() {
		try {
			
			String sql = "select seq,pw,id,name,tel,to_char(birth,'YYYY-MM-DD') as birth,gender,email,hobby,pic,admin from tblUser where seq = 1";
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			UserDTO dto = new UserDTO();
			if(rs.next()) {
				dto.setSeq(rs.getString("seq"));
				dto.setPw(rs.getString("pw"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setTel(rs.getString("tel"));
				dto.setBirth(rs.getString("birth"));
				dto.setGender(rs.getString("gender"));
				dto.setEmail(rs.getString("email"));
				dto.setHobby(rs.getString("hobby"));
				dto.setPic(rs.getString("pic"));
				dto.setAdmin(rs.getString("admin"));
				
			}
//			System.out.println(dto.getId());
			return dto;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * @param seq 유저번호
	 * 세션으로부터 유저번호를 얻어와 그 번호로 db에서 유저정보를 가져오는 메소드
	 * 
	 * @return dto 유저정보
	 */
	public UserDTO getUser(String seq) {
			try {
				
	String sql = "select seq,pw,id,name,tel,to_char(birth,'YYYY-MM-DD') as birth,gender,email,hobby,pic,admin from tblUser where seq = ?";
				
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, seq);
				rs = pstat.executeQuery();
				
				UserDTO dto = new UserDTO();
				if(rs.next()) {
					dto.setSeq(rs.getString("seq"));
					dto.setPw(rs.getString("pw"));
					dto.setId(rs.getString("id"));
					dto.setName(rs.getString("name"));
					dto.setTel(rs.getString("tel"));
					dto.setBirth(rs.getString("birth"));
					dto.setGender(rs.getString("gender"));
					dto.setEmail(rs.getString("email"));
					dto.setHobby(rs.getString("hobby"));
					dto.setPic(rs.getString("pic"));
					dto.setAdmin(rs.getString("admin"));
					
				}
	//			System.out.println(dto.getId());
				return dto;
				
			} catch (Exception e) {
				System.out.println(e);
			}
			return null;
		}

	/**
	 * @author 정원재
	 * 유저번호를 가져와 호스트인지 아닌지 판단하는 메소드
	 * @param seq 유저번호
	 * @return cnt 호스트 존재유무
	 */
	public int checkHost(String seq) {
		int cnt = 0;
		
		try {
			String sql = "select count(*) as cnt from tblhost where userseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt("cnt");
			}
			
			return cnt;
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("UserDAO.checkHost():"+e);
		}
		return cnt;
	}

	/**
	 * @author 정원재
	 * 유저번호를 받아와 그 번호로 유저정보를 수정하는 메소드
	 * @param dto 유저정보
	 * @return pstat.executeUpdate() 업데이트 성공유무
	 */
	public int updateInfo(UserDTO dto) {
		try {
			
			String sql = "update tblUser set pw=?,tel=?,email=?,hobby=?,pic=? where seq=?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getPw());
			pstat.setString(2, dto.getTel());
			pstat.setString(3, dto.getEmail());
			pstat.setString(4, dto.getHobby());
			pstat.setString(5, dto.getPic());
			pstat.setString(6, dto.getSeq());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	

	
}
