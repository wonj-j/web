package com.tour;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.main.DBUtil;

public class TourDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public TourDAO() {
		this.conn = DBUtil.open();
	}

	public void close() {
		
		try {
			this.conn.close();			
		} catch (Exception e) {
			System.out.println(e);
		}
	}


	/**
	 * 
	 * @param dto 큰지역, 세부지역의 seq번호를 담은 객체
	 * @return 동작하면 1을 반환, 오류가 생기면 0을 반환.
	 */
	public int area(TourDTO dto) {
		try {
			
			String sql = "select bigareaseq ba, smallareaseq sa from tblList l\r\n" + 
					"inner join tblSmallArea s on s.seq = l.smallAreaSeq\r\n" + 
					"inner join tblBigArea b on b.seq = l.bigAreaSeq where bigareaseq= ? and smallareaseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getBigArea());
			pstat.setString(2, dto.getSmallArea());
			
			return pstat.executeUpdate(); 
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	/**
	 * 
	 * @param dto 댓글을 쓸 때 별점, 댓글내용, 최신순으로 출력하기 위한 쓰레드를 담은 객체
	 * @param seq 지금 현재 보는 음식점 또는 여행지에 대한 seq번호
	 */
	public void comment(TourCommentDTO dto, String seq) {

		try {
			String sql = "insert into tblreviewcategory (seq, restseq) values (reviewcategory_seq.nextval, ?)";
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, seq);
			pstat.executeUpdate();
			
			
			sql = "select max(seq) as seq2 from tblreviewcategory";
			
			String seq2="";
			stat=conn.createStatement();
			rs=stat.executeQuery(sql);
			if(rs.next()) {
				seq2 = rs.getString("seq2");
				
			}
			
			//userseq 세션 받아온걸로 바꿔야함.
			sql = "insert into tblreview (seq, starscore, content, dates, userseq, seq2, depth, thread) values (review_seq.nextval, ?, ?, sysdate, 4, ?, 0, ?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getPoint());
			pstat.setString(2, dto.getComment());
			pstat.setString(3, seq2);
			pstat.setString(4, dto.getThread());
			
			pstat.executeUpdate();
			
			sql = "select to_char((sum(starscore) / count(*)), '0.0') as avg from (select vw.*, rownum as rnum from (select r.*, (select id from tbluser u where u.seq=r.userseq ) as id, (select pic from tbluser u where u.seq=r.userseq) as img, re.restseq as restseq\r\n" + 
					"    from tblreview r left outer join tblreviewcategory re on r.seq2=re.seq order by r.thread desc) vw where restseq=?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			
			String avg="";
			if(rs.next()) {
				avg = rs.getString("avg");
			}
			
			sql = "update tblrestolist set starScore=? where seq=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, avg);
			pstat.setString(2, seq);
			pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	/**
	 * 
	 * @param seq 지금 현재 보는 음식점 또는 여행지에 대한 seq번호
	 * @param map 한페이지에 출력 될 댓글의 수를 나타내기 위한 begin, end를 담은 HashMap 객체
	 * @return 화면에 출력될 댓글에 대한 내용을 담은 list
	 */
	public ArrayList<TourCommentDTO> commentlist(String seq, HashMap<String, String> map) {

		try {
			
			String sql = "select * from (select vw.*, rownum as rnum from (select r.*, (select id from tbluser u where u.seq=r.userseq ) as id, (select pic from tbluser u where u.seq=r.userseq) as img, re.restseq as restseq\r\n" + 
					"    from tblreview r left outer join tblreviewcategory re on r.seq2=re.seq order by r.thread desc) vw where restseq=?) where (rnum between ? and ?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			pstat.setString(2, map.get("begin"));
			pstat.setString(3, map.get("end"));
			rs = pstat.executeQuery();
			
			ArrayList<TourCommentDTO> list = new ArrayList<TourCommentDTO>();
			

			while(rs.next()) {
				
				TourCommentDTO dto = new TourCommentDTO();
				
				
				dto.setMyimg(rs.getString("img"));
				dto.setId(rs.getString("id"));
				dto.setComment(rs.getString("content"));
				dto.setPoint(rs.getString("starscore"));
				dto.setDates(rs.getString("dates"));
				dto.setDepth(rs.getString("depth"));
				
				
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
	 * @param seq 현재 보고 있는 글번호
	 * @param id 현재 로그인 한 아이디
	 * @return 댓글에 관련된 내용을 담은 dto 객체
	 */
	public TourCommentDTO comment2(String seq, String id) {

		try {

			String sql = "select * "+ 
					"from " + 
					"(select r.*, (select rc.restseq  from tblreviewcategory rc where seq=r.seq2) as re, " + 
					"(select u.pic from tbluser u where r.userseq = u.seq) as img " + 
					"from tblreview r order by thread desc) vw " + 
					"where re=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			
			while(rs.next()) {
				TourCommentDTO dto = new TourCommentDTO();
				
				dto.setMyimg(rs.getString("img"));
				dto.setId(id);
				dto.setComment(rs.getString("content"));
				dto.setPoint(rs.getString("starscore"));
				dto.setDates(rs.getString("dates"));
				dto.setDepth(rs.getString("depth"));
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	
	}

	/**
	 * 
	 * @param seq 현재 보고 있는 글번호
	 * @return 마지막 쓴글의 쓰레드 값
	 */
	public int maxthread(String seq) {

		try {
			
			String sql = "select max(seq) as seq from tblreviewcategory where restseq=?";
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			
			String seq2 = "";
			if(rs.next()) {
				seq2 = rs.getString("seq");
			}
			sql = "select max(seq) as mx from tblreview where seq2=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq2);
			
			rs = pstat.executeQuery();
			String thread = "";
			if(rs.next()) {
				thread = rs.getString("mx");
			}
			return Integer.parseInt(thread); 
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	/**
	 * 
	 * @param seq 현재보는 글번호
	 * @return 총 댓글 수
	 */
	public int getTotalCount(String seq) {

		try {
			
			String sql = "select count(*) as cnt from tblreview r inner join tblreviewcategory ca on ca.seq = r.seq2 where ca.restseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return Integer.parseInt(rs.getString("cnt"));	
			}

			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	//userseq 세션받아오는걸로 바꿔야함.
	/**
	 * 
	 * @param map 한페이지에 출력 될 댓글의 수를 나타내기 위한 begin, end를 담은 HashMap 객체
	 * @return 화면에 출력될 댓글에 대한 내용을 담은 list
	 */
	public ArrayList<TourCommentDTO> list(HashMap<String, String> map) {
			try {
			
			String sql = "select * from (select rv.*, rownum as rnum from (select rev.* from (select re.*, (select u.id from tbluser u where u.seq = 4) as id, (select u.pic from tbluser u where u.seq=4) as img from tblreview re) rev order by thread desc) rv) where rnum between ? and ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("begin"));
			pstat.setString(2, map.get("end"));
			rs = pstat.executeQuery();
			
			ArrayList<TourCommentDTO> list = new ArrayList<TourCommentDTO>();
			

			while(rs.next()) {
				
				TourCommentDTO dto = new TourCommentDTO();
				
				
				dto.setMyimg(rs.getString("img"));
				dto.setId(rs.getString("id"));
				dto.setComment(rs.getString("content"));
				dto.setPoint(rs.getString("starscore"));
				dto.setDates(rs.getString("dates"));
				dto.setDepth(rs.getString("depth"));
				
				
				list.add(dto);
			}
			
			return list;
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}


}
