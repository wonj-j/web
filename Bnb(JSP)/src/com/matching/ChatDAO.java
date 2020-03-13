package com.matching;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.main.DBUtil;



/**
 * 
 * @author 이진수
 * 채팅 관련 메소드를 관리하기 위한 클래스이다.
 * 채팅 대화내용의 등록, 수정, 조회를 위한 실행 메소드가 작성되어있다.
 */
public class ChatDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ChatDAO() {
		this.conn = DBUtil.open();
	}

	public void close() {
		try {
			this.conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
	
	
//채팅 리스트 가져오기
	/**
	 * 채팅 리스트를 가져온다.
	 * @param checkLocal 해당 지역번호
	 * @return 채팅 내역 정보 배열
	 */
	public ArrayList<ChatDTO> chatlist(String checkLocal) {

			try {
				
				String sql="select seq,content,to_char(chattime,'HH24:MI') as chattime,userName,ox,img from tbllocalChat c where c.listseq=? order by seq asc";
				
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, checkLocal);
				rs=pstat.executeQuery();
				ArrayList<ChatDTO> list = new ArrayList<ChatDTO>();
				while(rs.next()) {
					
					
				
					ChatDTO dto = new ChatDTO();
					dto.setUserName(rs.getString("userName"));
					dto.setContent(rs.getString("content"));
					dto.setChatTime(rs.getString("chattime"));
					dto.setOx(rs.getString("ox"));
					dto.setImg(rs.getString("img"));
					list.add(dto);
					
					
				}
				
				
				return list;
			} catch (Exception e) {
				System.out.println(e);
			}
		
		
		
		return null;
	}

	/**
	 * 채팅 내용을 데이터 베이스에 저장하기 위한 메소드
	 * @param content 채팅 내용
	 * @param chatName 유저 이름
	 * @param checkLocal 지역 번호
	 * @param imgSrc 프로필 사진 url
	 * @return insert 결과 반환
	 */
	public int sendData(String content, String chatName , String checkLocal,String imgSrc) {

		
		try {
			
			String sql = "insert into tblLocalChat (seq, content, chatTime, userName, listSeq , ox , img) values (localChat_seq.nextVal, ?, sysdate, ?, ? , 'o',?)" ;
			
			pstat=conn.prepareStatement(sql);
			
			pstat.setString(1, content);
			pstat.setString(2, chatName);
			pstat.setString(3, checkLocal);
			pstat.setString(4, imgSrc);
			return pstat.executeUpdate();
			
			
					
			
			
			
		} catch (Exception e) {

			System.out.println(e);
		}
		
		return 0;
	}
/**
 * 채팅을 나간 유저를 조회하기 위한 메서드
 * @param name 채팅을 나간 유저 이름
 * @return 수정 결과 값을 반환
 */
	public int updateUser(String name) {

		
		try {
			
			String sql = "update tbllocalChat set ox = 'x' where username =?";
			
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, name);
			
			return pstat.executeUpdate();
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return 0;
		
		
	}
/**
 * 채팅을 시작한 유저들의 목록을 가져오는 메서드
 * @param checkLocal 지역 번호
 * @return 채팅 사용중인 유저 배열 반환
 */
	public ArrayList<ChatDTO> userList(String checkLocal) {

		try {
			
			String sql = "select distinct username from tbllocalChat where ox='o' and listseq=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, checkLocal);
			rs = pstat.executeQuery();
			
			ArrayList<ChatDTO> list = new ArrayList<ChatDTO>();
			
			while(rs.next()) {
				
				ChatDTO dto = new ChatDTO();
				
				dto.setUserName(rs.getString("username"));
				
				
				
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}
/**
 * 채팅방 이용시 사용될 유저 이름과 사진을 지정하는 메서드
 * @param chatName 사용될 유저 이름
 * @param imgSrc 사용될 사진 url
 */
	public void change(String chatName, String imgSrc) {

		try {
			
			System.out.println("유저이름"+chatName);
			
			
			String sql = "UPDATE tbllocalChat SET img = ? WHERE userName=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,imgSrc);
			pstat.setString(2, chatName);
			
			pstat.executeUpdate();
				
			
			
		} catch (Exception e) {

			System.out.println(e);
		}
		
	}

//	public ArrayList<ChatDTO> userlist() {
//
//		
//		try {
//			String sql = "select distinct userName from tbllocalChat";
//			
//			stat=conn.createStatement();
//			rs = stat.executeQuery(sql);
//			ArrayList<ChatDTO> list = new ArrayList<ChatDTO>();
//			while(rs.next()) {
//				
//				ChatDTO dto = new ChatDTO();
//				
//			dto.setUserName(rs.getString("userName"));
//			
//			list.add(dto);
//				
//			}
//			
//			return list;
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//		
//		return null;
//	}
//
	/**
	 * 설문조사 점수를 저장하는 메서드
	 * @param actScore 활동점수
	 * @param planScore 계획점수
	 * @param eatScore 음식정보
	 * @param seq 유저번호
	 */
	public void saveData(String actScore, String planScore, String eatScore, String seq) {

		try {

			String sql = "insert into tblSurvey values(survey_seq.nextVal,?,?,?,?)";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, actScore);
			pstat.setString(2, planScore);
			pstat.setString(3, eatScore);
			pstat.setString(4, seq);

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}

	}

	
	/**
	 * 채팅 상대의 설문조사 결과를 가져오는 메서드
	 * @param seq 유저번호
	 * @return 상대의 설문조사 결과를 반환
	 */
	public int checkSurvey(String seq) {

		try {

			String sql = "select * from tblSurvey where userseq = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);

			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}

		return 0;
	}

	
	/**
	 * 설문조사 점수를 수정하기 위한 메서드
	 * @param actScore 활동점수
	 * @param planScore 계획점수
	 * @param eatScore 음식점수
	 * @param seq 유저번호
	 */
	public void updateData(String actScore, String planScore, String eatScore, String seq) {

		try {
			String sql = "update tblSurvey set activityScore = ?, planScore=?, eatScore=? where userseq = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, actScore);
			pstat.setString(2, planScore);
			pstat.setString(3, eatScore);
			pstat.setString(4, seq);

			pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}

	}


	
}
