package com.mypage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.main.DBUtil;

/**
 * 
 * @author 정원재
 * 리뷰에 대한 정보를 조작하는 곳
 */
public class ReviewDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	/**
	 * @author 정원재
	 * db연결하는 메소드
	 */
	public ReviewDAO() {
		this.conn = DBUtil.open();
	}

	/**
	 * @author 정원재
	 * db연결을 끊는 메소드
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
	 * 숙소리뷰목록을 가져오는 메소드
	 * @param user 유저정보
	 * @return list 숙소리뷰목록
	 */
	public ArrayList<ReviewDTO> getAccomReview(UserDTO user) {
		
		try {
			
			String sql = "select * from vwaccomreviewlist where ruserseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,user.getSeq());
			rs = pstat.executeQuery();
			
			ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
			while(rs.next()) {
				
				ReviewDTO dto = new ReviewDTO();
				
				dto.setRseq(rs.getString("rseq"));
				dto.setRaccomname(rs.getString("raccomname"));
				dto.setRhostseq(rs.getString("rhostseq"));
				dto.setRcontent(rs.getString("rcontent"));
				dto.setRdate(rs.getString("rdate"));
				dto.setRstarscore(rs.getDouble("rstarscore"));
				dto.setRcategoryseq(rs.getString("rcategoryseq"));
				
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
//			System.out.println("hello1");
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 숙소리뷰정보 하나를 가져오는 메소드
	 * @param rseq 리뷰번호
	 * @return dto 리뷰정보
	 */
	public ReviewDTO getAccomReview(String rseq) {
		
		try {
			
			String sql = "select * from vwaccomreviewlist where rseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,rseq);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				ReviewDTO dto = new ReviewDTO();
				
				dto.setRseq(rs.getString("rseq"));
				dto.setRaccomname(rs.getString("raccomname"));
				dto.setRhostseq(rs.getString("rhostseq"));
				dto.setRcontent(rs.getString("rcontent"));
				dto.setRdate(rs.getString("rdate"));
				dto.setRstarscore(rs.getDouble("rstarscore"));
				dto.setRcategoryseq(rs.getString("rcategoryseq"));
				
				return dto;
			}
			
			
		} catch (Exception e) {
//			System.out.println("hello1");
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 여행리뷰목록을 가져오는 메소드
	 * @param user 유저정보
	 * @return list 여행리뷰목록
	 */
	public ArrayList<ReviewDTO> getTourReview(UserDTO user) {
		try {

			String sql = "select * from vwtourreviewlist where ruserseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, user.getSeq());
			rs = pstat.executeQuery();

			ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
			while (rs.next()) {
				ReviewDTO dto = new ReviewDTO();

				dto.setRseq(rs.getString("rseq"));
				dto.setRtourname(rs.getString("rtourname"));
				dto.setRtourseq(rs.getString("rtourseq"));
				dto.setRcontent(rs.getString("rcontent"));
				dto.setRdate(rs.getString("rdate"));
				dto.setRstarscore(rs.getDouble("rstarscore"));
				dto.setRcategoryseq(rs.getString("rcategoryseq"));

				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			// System.out.println("hello3");
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 여행리뷰정보를 가져오는 메소드
	 * @param rseq 리뷰번호
	 * @return dto 여행리뷰정보
	 */
	public ReviewDTO getTourReview(String rseq) {
		try {

			String sql = "select * from vwtourreviewlist where rseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			rs = pstat.executeQuery();

			
			if (rs.next()) {
				ReviewDTO dto = new ReviewDTO();

				dto.setRseq(rs.getString("rseq"));
				dto.setRtourname(rs.getString("rtourname"));
				dto.setRtourseq(rs.getString("rtourseq"));
				dto.setRcontent(rs.getString("rcontent"));
				dto.setRdate(rs.getString("rdate"));
				dto.setRstarscore(rs.getDouble("rstarscore"));
				dto.setRcategoryseq(rs.getString("rcategoryseq"));
				
				return dto;
			}
		} catch (Exception e) {
//			System.out.println("hello3");
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 맛집리뷰목록을 가져오는 메소드
	 * @param user 유저정보
	 * @return list 맛집리뷰목록
	 */
	public ArrayList<ReviewDTO> getRestoReview(UserDTO user) {
		try {
			
			String sql = "select * from vwRestoReviewList where ruserseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,user.getSeq());
			rs = pstat.executeQuery();
			ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
			while(rs.next()) {
				ReviewDTO dto = new ReviewDTO();
				
				dto.setRseq(rs.getString("rseq"));
				dto.setRrestname(rs.getString("rrestname"));
				dto.setRrestseq(rs.getString("rrestseq"));
				dto.setRcontent(rs.getString("rcontent"));
				dto.setRdate(rs.getString("rdate"));
				dto.setRstarscore(rs.getDouble("rstarscore"));
				dto.setRcategoryseq(rs.getString("rcategoryseq"));
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
//			System.out.println("hello2");
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 맛집리뷰정보 하나를 가져오는 메소드
	 * @param rseq 리뷰번호
	 * @return dto 맛집리뷰정보
	 */
	public ReviewDTO getRestoReview(String rseq) {
try {
			
			String sql = "select * from vwRestoReviewList where rseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,rseq);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				ReviewDTO dto = new ReviewDTO();
				
				dto.setRseq(rs.getString("rseq"));
				dto.setRrestname(rs.getString("rrestname"));
				dto.setRrestseq(rs.getString("rrestseq"));
				dto.setRcontent(rs.getString("rcontent"));
				dto.setRdate(rs.getString("rdate"));
				dto.setRstarscore(rs.getDouble("rstarscore"));
				dto.setRcategoryseq(rs.getString("rcategoryseq"));
				return dto;
			}
		} catch (Exception e) {
//			System.out.println("hello2");
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 리뷰를 가져올때 리뷰카테고리를 구분하는 메소드
	 * @param rcateseq 리뷰카테고리번호
	 * @return number 카테고리구분번호
	 */
	public int checkCategory(String rcateseq) {
		try {
			String sql = "select * from tblReviewCategory where seq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rcateseq);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("hostseq") != null) {//카테고리가 숙소
					return 1;
				} else if(rs.getString("tourseq") != null) {//카테고리가 여행
					return 2;
				} else if(rs.getString("restseq") != null) {//카테고리가 맛집
					return 3;
				}
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	/**
	 * @author 정원재
	 * 리뷰를 수정하는 메소드
	 * @param rseq 리뷰번호
	 * @param rscore 리뷰점수
	 * @param rcontent 리뷰내용
	 * @return pstat.executeUpdate() 수정결과
	 */
	public int updateReview(String rseq, String rscore, String rcontent) {
		try {

			String sql = "update tblreview set content=?, starscore =? where seq = ?";
			System.out.println("reviewdao rscore:"+rscore);
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rcontent);
			pstat.setString(2, rscore);
			pstat.setString(3, rseq);
			
			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}


}
