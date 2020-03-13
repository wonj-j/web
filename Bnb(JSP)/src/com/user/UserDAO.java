package com.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.main.DBUtil;

/**
 * 
 * @author 안유니
 *
 */
public class UserDAO {

   private Connection conn;
   private Statement stat;
   private PreparedStatement pstat;
   private ResultSet rs;

   public UserDAO() {
      this.conn = DBUtil.open();
   }

   public void close() {
      try {
         this.conn.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   /**
    * 
    * @author 안유니
    * @param dto 유저 정보가 담긴 DTO
    * @return seq, id 유저번호, 유저아이디
    * 
    * 사용자가 입력한 아이디와 비밀번호를 가입된 정보인지 확인 후
    * 로그인 하는 메서드
    * 
    */
   public String login(UserDTO dto) {

      
      try {

         String sql = "select seq as seq from tblUser where id = ? and pw = ?";

         pstat = conn.prepareStatement(sql);
         pstat.setString(1, dto.getId());
         pstat.setString(2, dto.getPw());
         
         rs = pstat.executeQuery();
         
         String seq = "";
         
         if(rs.next()) {
            seq = rs.getString("seq");
            return seq;
         } else {
            return "";
         }

         }
      
         catch (Exception e) {
         System.out.println(e);
      }
      
      return "";
   }

   /**
    * @author 안유니
    * @param id 아이디
    * @return 아이디 중복 개수
    * 
    * 사용자가 입력한 아이디가 이미 사용중인 아이디와 중복 되지 않도록 
    * 확인하는 아이디 중복 확인 메서드
    *  
    */
   public int checkid(String id) {

      try {
         
         String sql = "select count(*) as cnt from tblUser where id = ?";
         
         pstat = conn.prepareStatement(sql);
         pstat.setString(1, id);
         
         rs = pstat.executeQuery();
         
         if (rs.next()) {
            return rs.getInt("cnt");
         }
         
         
      } catch (Exception e) {
         System.out.println(e);
      }
      
      return 0;
   }

   /**
    * @author 안유니
    * @param dto 유저 정보가 담긴 DTO
    * @return 유저DTO
    * 
    * 회원가입 메서드
    */
   public int add(UserDTO dto) {
      
      try {
         
         String sql = "insert into tblUser (seq, pw, id, name, birth, gender, email, hobby ,tel , admin) values (user_seq.nextval, ?, ?, ?, ?, ?, ?, ?,? , '유저')";
         
         
         
         pstat = conn.prepareStatement(sql);
         pstat.setString(1, dto.getPw());
         pstat.setString(2, dto.getId());
         pstat.setString(3, dto.getName());
         pstat.setString(4, dto.getBirth());
         pstat.setString(5, dto.getGender());
         pstat.setString(6, dto.getEmail());
         pstat.setString(7, dto.getHobby());
         pstat.setString(8, dto.getTel());
         
         return pstat.executeUpdate();
         
         
      } catch (Exception e) {
         System.out.println(e);
      }
      return 0;
   }
   public ArrayList<UserDTO> profile(Object seq) {

	      
	      try {
	         
	      
	         String seq1 = (String)seq;
	         String sql = "select name,hobby,pic from tblUser where seq=?";
	         
	         pstat=conn.prepareStatement(sql);
	         pstat.setString(1, seq1);
	         rs = pstat.executeQuery();
	         
	         ArrayList<UserDTO> list = new ArrayList<UserDTO>();
	         
	         while(rs.next()) {
	         
	            UserDTO dto = new UserDTO();
	            
	            dto.setName(rs.getString("name"));
	            dto.setHobby(rs.getString("hobby"));
	            dto.setPic(rs.getString("pic"));
	            
	            list.add(dto);
	         }
	         
	         
	         
	         return list;
	         
	      } catch (Exception e) {
	         System.out.println(e);
	      }
	      
	      
	      
	      return null;
	   }

   /**
    * 
    * @param name 이름
    * @param tel 전화번호
    * @return 아이디
    * 
    * 핸드폰 번호로 아이디 찾기
    */
public String checkphone(String name, String tel) {

	try {
		
		String sql = "select id from tblUser where name = ? and tel = ?";
		
		pstat = conn.prepareStatement(sql);
		pstat.setString(1, name);
		pstat.setString(2, tel);
		
		rs = pstat.executeQuery();
		
		if (rs.next()) {
			return rs.getString("id");
		}
		
	} catch (Exception e) {
		System.out.println(e);
	}
	
	
	return null;

	}
}















