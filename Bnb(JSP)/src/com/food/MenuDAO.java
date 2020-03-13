package com.food;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.main.DBUtil;

/**
 * 
 * 메뉴 DAO
 * @author 이지성
 *
 */
public class MenuDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public MenuDAO() {
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
	 * 음식점 메뉴 가져오기
	 * @param seq 음식점seq
	 * @return 음식점의 메뉴 목록
	 */
	public ArrayList<MenuDTO> list(String seq) {
		try {
			String sql = "select * from tblMenu where restoListSeq=?";
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs =pstat.executeQuery();
			
			ArrayList<MenuDTO> list = new ArrayList<MenuDTO>();
			
			while(rs.next()) {
				MenuDTO dto = new MenuDTO();
				
				dto.setSeq(rs.getString("seq"));
				dto.setName(rs.getString("name"));
				dto.setPrice(rs.getString("price"));
				dto.setImg(rs.getString("img"));
				dto.setHit(rs.getString("hit"));
				dto.setContent(rs.getString("content"));
				
				list.add(dto);
			}
			
			
			return list;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	/**
	 * 음식점이 속한 큰지역, 작은지역, 카테고리 seq 가져오기
	 * @param seq 음식점seq
	 * @return 음식점에 대한 지역 정보와 카테고리 정보 DTO
	 */
	public AreaDTO area(String seq) {
		
		try {
			String sql ="select l.bigareaseq as area, l.smallareaseq as area2, l.categoryseq as category from tblRestoList rl inner join tblList l on rl.listseq=l.seq where rl.seq=?";
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs =pstat.executeQuery();
			
			String area="";
			String area2="";
			String category="";
			AreaDTO dto = new AreaDTO();
			
			if(rs.next()) {
				area = rs.getString("area");
				area2 = rs.getString("area2");
				category = rs.getString("category");
			}
			
			sql ="select bigarea from tblbigarea where seq =?";
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, area);
			
			rs =pstat.executeQuery();
			
			if(rs.next()) {
				dto.setArea(rs.getString("bigarea"));
			}
			
			
			sql ="select smallarea from tblsmallarea where seq =?";
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, area2);
			rs =pstat.executeQuery();
			if(rs.next()) {
				dto.setCity(rs.getString("smallarea"));
			}
			
			sql ="select genre from tblcategory where seq =?";
			pstat=conn.prepareStatement(sql);
			pstat.setString(1, category);
			rs =pstat.executeQuery();
			if(rs.next()) {
				dto.setCategory(rs.getString("genre"));
			}

			return dto;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

}
