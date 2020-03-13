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
 * 마일리지 정보들을 조작하는 곳
 */
public class MileageDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	/**
	 * @author 정원재
	 * db연결하는 메소드
	 */
	public MileageDAO() {
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
	 * 마일리지 목록(마일리지 적립목록, 사용목록) 을 가져오는 메소드
	 * @param user 유저정보
	 * @return list 마일리지 목록(마일리지 적립목록, 사용목록)
	 */
	public ArrayList<MileageDTO> getMileageList(UserDTO user) {
		// TODO Auto-generated method stub
		try {
			
			String sql = "select * from vwMileageList where muserseq=?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, user.getSeq());
			rs = pstat.executeQuery();
			
			ArrayList<MileageDTO> list = new ArrayList<MileageDTO>();
			while(rs.next()) {
				MileageDTO dto = new MileageDTO();
				
				dto.setMilepoint(rs.getString("mpoint"));
				dto.setMiledate(rs.getString("mdate"));
				dto.setMilestate(rs.getInt("mstate"));
				dto.setMileaccomname(rs.getString("maccomname"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("mileageDAO 55:"+e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 총마일리지 포인트 가져오는 메소드
	 * @param user 유저정보
	 * @return rs.getInt("points") 총마일리지포인트
	 */
	public int getSumMilepoint(UserDTO user) {
		
		try {
			
			String sql = "select sum(mpoint) as points from vwMileageList where mstate = 0 and muserseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, user.getSeq());
			rs = pstat.executeQuery();
			if(rs.next()) {
				return rs.getInt("points");
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return 0;
	}

	/**
	 * @author 정원재
	 * 쿠폰사용목록 가져오는 메소드
	 * @param user 유저정보
	 * @return list 쿠폰사용목록
	 */
	public ArrayList<MileageDTO> getCouponList(UserDTO user) {
		try {
			
			String sql = "select * from vwcouponlist where  cuserseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, user.getSeq());
			rs = pstat.executeQuery();
			
			ArrayList<MileageDTO> list = new ArrayList<MileageDTO>();
			
			while(rs.next()) {
				MileageDTO dto = new MileageDTO();
				
				dto.setCoupdate(rs.getString("cdate"));
				dto.setCoupstate(rs.getString("cstate"));
				dto.setCoupaccomname(rs.getString("caccomname"));
			
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 적립된 쿠폰수를 가져오는 메소드
	 * @param user 유저정보
	 * @return rs.getInt("csum") 적립된 쿠폰수
	 */
	public int getSumCouponcnt(UserDTO user) {
		try {
			
			String sql = "select sum(ccnt) as csum from vwcouponlist where  cuserseq = ? and cstate = '적립' ";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, user.getSeq());
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getInt("csum");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

}
