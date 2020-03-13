package com.mypage;

import java.sql.CallableStatement;
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
 * 숙소에 대한 정보를 조작하는 곳
 */
public class AccomDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private CallableStatement cstat;
	private ResultSet rs;
	
	/**
	 * @author 정원재
	 * db연결하는 메소드
	 */
	public AccomDAO() {
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
	 * 유저 아이디를 통해 예약한 숙소정보목록을 가져오는 메소드
	 * @param user 유저 정보
	 * @return list 숙소 정보 목록
	 */
	public ArrayList<AccomDTO> getAccomList(UserDTO user) {
		
		try {
			
			String sql = "select * from vwAccomList where id = ? order by bseq";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, user.getId());
			
			rs = pstat.executeQuery();
			
			ArrayList<AccomDTO> list = new ArrayList<AccomDTO>();
			while(rs.next()) {				
				AccomDTO dto = new AccomDTO();
				
				dto.setSeq(rs.getString("accomseq"));
				dto.setAccominfo(rs.getString("accominfo"));
				dto.setCapacity(rs.getString("capacity"));
				dto.setAccomtype(rs.getString("accomtype"));
				dto.setCancelperiod(rs.getString("cancelperiod"));
				dto.setCheckintime(rs.getString("ckintime"));
				dto.setCheckouttime(rs.getString("ckouttime"));
				dto.setHostseq(rs.getString("hostseq"));
				dto.setDetailinfo(rs.getString("detailinfo"));
				dto.setAccomname(rs.getString("accomname"));
				dto.setBook_bookcnt(rs.getInt("bookcnt"));
				dto.setBook_state(rs.getString("state"));
				dto.setBookcal_checkindate(rs.getString("checkindate"));
				dto.setBookcal_checkoutdate(rs.getString("checkoutdate"));
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
	 * 유저번호를 통해 누적된 예약날짜수를 가져오는 메소드
	 * @param user 유저정보
	 * @return rs.getInt("datecnt") 누적된 예약날짜수
	 */
	public int getReservecnt(UserDTO user) {
		try {
			
			String sql = "select datecnt from tbldatecount where userseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, user.getSeq());
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getInt("datecnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	
	/**
	 * @author 정원재
	 * 숙소 정보를 삭제하는 메소드
	 * @param reserveSeq 예약 시퀀스 번호
	 * @return pstat.executeUpdate() 삭제결과
	 */
	public int deleteAccom(String reserveSeq) {
		// TODO Auto-generated method stub
		try {
			
			String sql = "";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, "");
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return 0;
	}

	/**
	 * @author 정원재
	 * 숙소 정보를 수정하는 메소드
	 * @param capa 숙소수용인원
	 * @param accomtype 숙소유형
	 * @param hostseq 숙소호스트번호
	 * @return pstat.executeUpdate() 수정결과
	 */
	public int updateAccom(String capa, String accomtype, String hostseq) {
		try {
			
			String sql = "update tblaccom set capacity=?, accomtype=? where hostseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, capa);
			pstat.setString(2, accomtype);
			pstat.setString(3, hostseq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("updateAccom:"+e);
		}
		return 0;
	}

	/**
	 * @author 정원재
	 * 숙소편의시설 개수 수정하는 메소드
	 * @param bed 침대수
	 * @param bath 욕실수
	 * @param hostseq 호스트번호
	 * @return cstat.executeUpdate 수정결과
	 */
	public int updateConvenience(String bed, String bath,String hostseq) {
		try {
			
			String sql = "{ call updatebedbath_proc(?,?,?) }";
			
			cstat = conn.prepareCall(sql);
			
			cstat.setString(1, hostseq);
			cstat.setString(2, bed);
			cstat.setString(3, bath);
			
			return cstat.executeUpdate();
		} catch (Exception e) {
			System.out.println("updateConvenience:"+e);
		}
		return 0;
	}

	/**
	 * @author 정원재
	 * 숙소사진 수정하는 메소드
	 * @param picseq 숙소사진 번호
	 * @param picname 숙소사진 이름
	 * @return result 수정결과
	 */
	public int updateAcoomPic(String[] picseq, String[] picname) {
		try {
			
			int result = 1;
			int loop = 0;
			System.out.println(picseq+","+picname);
			
			String sql = "update tblaccompic set pic=? where seq = ?";
			pstat = conn.prepareStatement(sql);
			
			while(loop<picname.length) {
				
				if(picname[loop] != null) {
					pstat.setString(1, "/bnb/img/"+picname[loop]);
					pstat.setString(2, picseq[loop]);			
					result = pstat.executeUpdate();
			}
				System.out.println(loop);
				loop++;
			}
			return result;
		} catch (Exception e) {
			System.out.println("updateaccompic:"+e);
		}
		return 0;
	}

	/**
	 * @author 정원재
	 * 쿠폰 개수 확인하는 메소드
	 * @param userseq 유저번호
	 * @return rs.getInt("cnt") 쿠폰개수
	 */
	public int getCheckCoupon(String userseq) {
		try {

			
			String sql = "select count(*) as cnt from tblcoupon where userseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, userseq);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return -1;
	}

	/**
	 * @author 정원재
	 * 처음 쿠폰받을때 쿠폰 개수 누적하는 메소드
	 * @return result 누적결과
	 */
	public int insertCoupon() {
		try {
			int result = 1;
			String sql = "insert into tblcoupon values (?,?,?)";
			
			return result;
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	/**
	 * @author 정원재
	 * 쿠폰이미 받은상태일경우 쿠폰 개수 누적하는 메소드
	 * @param userseq 유저번호
	 * @return result 누적결과
	 */
	public int updateCoupon(String userseq) {
		try {
			
			int result = 1;
			String sql = "update tblcoupon set couponcnt = couponcnt+1 where userseq=?";
			
			return result;			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	
	
	

		
}

