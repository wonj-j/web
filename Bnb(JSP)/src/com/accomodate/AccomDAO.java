package com.accomodate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.main.DBUtil;

/**
 * 
 * @author 이상희
 *
 */
public class AccomDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public AccomDAO() {
		this.conn = DBUtil.open();
	}
	
	public void close(){
		try {
			this.conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @param hseq 호스트 번호
	 * @return 숙소 사진을 반환
	 * 숙소 사진 가져오는 함수
	 */
	public ArrayList<String> getpic(String hseq) {
		try {
			String sql=String.format("select pic from tblAccomPic where hostseq=%s",hseq);
			
			pstat=conn.prepareStatement(sql);
			
			rs=pstat.executeQuery();
			
			ArrayList<String> list=new ArrayList<String>();
			
			while(rs.next()) {
				//AccomDTO dto=new AccomDTO();
				
				list.add(rs.getString("pic"));
				
				
			}
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		
		}
		return null;
	}
	
	/**
	 * 
	 * @param hseq 호스트 번호
	 * @return 숙소 정보를 반환
	 * 숙소 정보 (편의시설,숙소소개,숙소 타입,체크인체크아웃 시간,요금,호스트정보 등)
	 * 를 가져오는 메소드
	 */
	public AccomDTO getaccom(String hseq) {
		try {
			String sql=String.format("select * from vwAccomInfoFee where hseq=%s"
									,hseq);
			
			//String sql= "select * from vwAccomInfoFee where userseq=?";
			
			pstat=conn.prepareStatement(sql);
			//로그인때 추가pstat.setString(1,seq);
			
			
			rs=pstat.executeQuery();
			
			if(rs.next()) {
				AccomDTO dto=new AccomDTO();
				dto.setAccomseq(rs.getString("accomseq"));
				dto.setAccominfo(rs.getString("accominfo"));
				
				dto.setAccomtype(rs.getString("accomtype"));
				dto.setCancelperiod(rs.getString("cancelperiod"));
				dto.setCapacity(rs.getString("capacity"));
				dto.setCheckintime(rs.getString("checkintime"));
				dto.setCheckouttime(rs.getString("checkouttime"));
				dto.setDetailinfo(rs.getString("detailinfo"));
				
				dto.setHostseq(rs.getString("userseq"));
				
				dto.setAccomname(rs.getString("accomname"));
				dto.setFee(rs.getString("fee"));
				dto.setHostinfo(rs.getString("hostinfo"));
				dto.setTel(rs.getString("tel"));
				
				dto.setId(rs.getString("id"));
				dto.setUserpic(rs.getString("userpic"));
				
				
				
				
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	/**
	 * 
	 * @param hseq 호스트번호
	 * @return 숙소 주의사항 반환
	 * 숙소 예약페이지에 출력될 숙소 주의사항을 가져오는 메소드
	 */
	public String getrule(String hseq) {

		try {
			String sql=String.format("select * from tblAccomRule where hostseq=%s"
									,hseq);
			
			//String sql= "select * from vwAccomInfoFee where userseq=?";
			
			pstat=conn.prepareStatement(sql);
			
			rs=pstat.executeQuery();
			//로그인때 추가pstat.setString(1,seq);
			
			
			//ArrayList<AccomDTO> list=new ArrayList<AccomDTO>();
			String rule="";
			if(rs.next()) {
				
				
				rule=rs.getString("content");
				//dto.setHostseq(rs.getString("hostseq"));
				
				
				//list.add(dto);
			}
			return rule;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	
	/**
	 * 
	 * @param hseq 호스트 번호
	 * @return 숙소 사진들 반환
	 * 사용자가 숙소를 선택했을때 나오는 숙소 소개 페이지에 
	 * 보여질 숙소 사진들을 가져오는 메소드
	 */
	  public String getpics(String hseq) { 
		  try {
			String sql=String.format("select * from tblaccompic " + 
					"where seq=(select min(seq) from tblAccompic where hostseq=%s)"
					,hseq);
			
			pstat=conn.prepareStatement(sql);
			rs=pstat.executeQuery();
			
			String pic="";
			if(rs.next()) {
				pic=rs.getString("pic");
			}
			return pic;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		  return null;
	  }

}
