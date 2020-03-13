package com.food;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.main.DBUtil;

/**
 * 
 * 음식점 DAO
 * @author 이지성
 *
 */
public class FoodDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public FoodDAO() {
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
	 * 음식점 목록 가져오기
	 * @param dto 음식점DTO
	 * @param search 검색조건
	 * @param begin 시작글번호
	 * @param end 끝번호
	 * @return 최대 9개의 음식점 목록
	 */
	public ArrayList<FoodDTO> list(FoodDTO dto, String search, int begin, int end) {
		
		try {
		
			
			
			
			String sql = "select * from (select rownum as rnum, v.* from (select r.seq, r.pic, r.writedate,r.title, r.content, r.views,to_char(starscore, '0.0') as starscore,(select count(*) from tblReview where seq2 in (select seq from tblReviewCategory where restseq =r.seq)) as review, " + 
					"r.listseq from tblRestoList r inner join tbllist l on r.listseq=l.seq where l.bigareaseq =? and l.smallareaseq=? and l.categoryseq=? order by " +search + " desc, title asc) v) " + 
					"where rnum between ? and ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getArea());
			pstat.setString(2, dto.getArea2());
			pstat.setString(3, dto.getCategory());
			pstat.setInt(4, begin);
			pstat.setInt(5, end);

			rs = pstat.executeQuery();

			

			
			ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();
		
			while(rs.next()) {
				FoodDTO item = new FoodDTO();
		
				item.setSeq(rs.getString("seq"));
		
				item.setImg(rs.getString("pic"));
			
				item.setDate(rs.getString("writedate").substring(0, 10));
		
				item.setSubject(rs.getString("title"));
			
				item.setContent(rs.getString("content"));
		
				item.setViews(rs.getString("views"));

				item.setPoint(rs.getString("starscore"));
				
				item.setReview(rs.getString("review"));
				
				list.add(item);
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		return null;
	}

	/**
	 * 메뉴판 이미지 가져오기
	 * @param seq 음식점seq
	 * @return 메뉴판 이미지 주소
	 */
	public ArrayList<String> menuImg(String seq) {
		
		try {
			String sql = "select * from tblMenuImg where restoListSeq=? ";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs=pstat.executeQuery();
			
			ArrayList<String> menuImg = new ArrayList<String>();
			
			while(rs.next()) {
				menuImg.add(rs.getString("img"));
				
				
			}
			
			return menuImg;
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}
	
	/**
	 * 
	 * 큰지역에 속한 작은지역 목록가져오기
	 * @param area 큰지역seq
	 * @param category 카테고리seq
	 * @return 큰지역에 속한 작은지역의 seq와 도시이름
	 */
	public ArrayList<AreaDTO> areaList(String area, String category) {
		try {
			
			String sql = "select l.smallareaseq as seq, (select smallarea from tblsmallarea where seq = l.smallareaseq  ) as city from tblList l where bigareaseq=? and categoryseq=?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, area);
			pstat.setString(2, category);
			
			rs=pstat.executeQuery();
			
			ArrayList<AreaDTO> result = new ArrayList<AreaDTO>();
			
			while(rs.next()) {
				AreaDTO dto = new AreaDTO();
				dto.setCity(rs.getString("city"));
				dto.setSeq(rs.getString("seq"));
				
				result.add(dto);
				
			}
			
			return result;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	/**
	 * 조회수 증가 시키기
	 * @param seq 음식점seq
	 */
	public void viewCount(String seq) {
		try {
			String sql = "select views from tblRestoList where seq =?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs =pstat.executeQuery();
			
			String count = "";
			
			if(rs.next()) {
				count = rs.getString("views");
			}
		
			count = (Integer.parseInt(count)+ 1) +"";
			
			sql ="update tblRestoList set views=? where seq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, count);
			pstat.setString(2, seq);
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

}
