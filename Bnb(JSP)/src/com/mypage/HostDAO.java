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
 * 호스트메뉴페이지의 여러정보들을 조작하는 곳
 */
public class HostDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	/**
	 * @author 정원재
	 * db연결하는 메소드
	 */
	public HostDAO() {
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
	 * 유저번호를 통해 호스트 번호얻는 메소드
	 * @param seq 유저번호
	 * @return rs.getString("seq") 호스트번호
	 */
	public String getHostSeq(String seq) {
		
		try {
			
			String sql = "select seq from tblhost where userseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getString("seq");
			}
		} catch (Exception e) {
			System.out.println("HostDAO.getHostseq():"+e);
		}
		
		return null;
	}

	/**
	 * @author 정원재
	 * 숙소 규칙목록을 얻는 메소드
	 * @param hostseq 호스트 번호
	 * @return list 숙소규칙목록
	 */
	public ArrayList<HostDTO> getAccomrule(String hostseq) {
		try {
			
			String sql = "select content from tblaccomrule where hostseq= ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, hostseq);
			rs = pstat.executeQuery();
			
			ArrayList<HostDTO> list = new ArrayList<HostDTO>();
			while(rs.next()) {
				
				HostDTO dto = new HostDTO();
				
				dto.setAccomrule(rs.getString("rule"));
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			System.out.println("HostDAO.getAccomrule():"+e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 호스트의 숙소정보를 얻는 메소드
	 * @param hostseq 호스트번호
	 * @return dto 숙소정보
	 */
	public HostDTO getHostmenu(String hostseq) {
		try {
			
			String sql = "select * from vwHostmenu where hostseq= ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, hostseq);
			rs = pstat.executeQuery();
			
			HostDTO dto = new HostDTO();
			
			if(rs.next()) {
				
				dto.setAccomseq(rs.getString("aseq"));
				dto.setAccomid(rs.getString("id"));
				dto.setAccompw(rs.getString("pw"));
				dto.setAccomemail(rs.getString("email"));
				dto.setAccomuserseq(rs.getString("userseq"));
				dto.setAccomhostseq(rs.getString("hostseq"));
				dto.setAccomfee(rs.getString("fee"));
				dto.setAccomname(rs.getString("accomname"));
				dto.setAccomtype(rs.getString("accomtype"));
				dto.setAccomcancelperiod(rs.getString("cancelperiod"));
				dto.setAccomcapacity(rs.getString("capacity"));
				dto.setAccomcheckintime(rs.getString("checkintime"));
				dto.setAccomcheckouttime(rs.getString("checkouttime"));
				dto.setAccomaddress(rs.getString("accomaddress"));
				
				return dto; 
			}
			
			
		} catch (Exception e) {
			System.out.println("HostDAO.getHostmenu():"+e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 숙소 예약자 목록을 얻는 메소드
	 * @param hostseq 호스트번호
	 * @return list 숙소 예약자 목록
	 */
	public ArrayList<HostDTO> getAccommenu(String hostseq) {
		try {
			
			String sql = "select bseq,userseq,hostseq,name,bookstate,checkindate,checkoutdate"
					+ ",accomname,bookcnt from vwAccomList where hostseq=? and checkindate > sysdate and bookstate = '0' order by bseq, bookcnt asc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, hostseq);
			rs = pstat.executeQuery();
			ArrayList<HostDTO> list = new ArrayList<HostDTO>();
			
			while(rs.next()) {
				HostDTO dto = new HostDTO();
				
				dto.setBookseq(rs.getString("bseq"));
				dto.setBookuserseq(rs.getString("userseq"));
				dto.setBookhostseq(rs.getString("hostseq"));
				dto.setBookname(rs.getString("name"));
				dto.setBookstate(rs.getString("bookstate"));
				dto.setBookcheckindate(rs.getString("checkindate"));
				dto.setBookcheckoutdate(rs.getString("checkoutdate"));
				dto.setBookaccomname(rs.getString("accomname"));
				dto.setBookcnt(rs.getString("bookcnt"));
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			System.out.println("HostDAO.getAccommenu():"+e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 예약 메시지 목록을 가져오는 메소드
	 * @param hostseq 호스트 번호
	 * @return list 예약자 메시지 목록
	 */
	public ArrayList<HostDTO> getBookmsg(String hostseq) {
		
		try {	
			String sql = "select * from vwbookmsg" + 
					" where userseq in" + 
					"(select userseq from vwbookmsg where hostseq=? group by userseq)" + 
					" and seq in(select max(seq) as seq from vwbookmsg where hostseq=? group by userseq)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, hostseq);
			pstat.setString(2, hostseq);
			rs = pstat.executeQuery();
			
			ArrayList<HostDTO> list = new ArrayList<HostDTO>();
			while(rs.next()) {
				
				HostDTO dto = new HostDTO();
				
				dto.setMsgseq(rs.getString("seq"));
				dto.setMsgdates(rs.getString("dates"));
				dto.setMsgtime(rs.getString("time"));
				dto.setMsgcontent(rs.getString("content"));
				dto.setMsgusername(rs.getString("username"));
				dto.setMsghostname(rs.getString("hostname"));
				dto.setMsgbookseq(rs.getString("bookseq"));
				dto.setMsguserseq(rs.getString("userseq"));
				dto.setMsghostseq(rs.getString("hostseq"));
				dto.setMsguserpic(rs.getString("userpic"));
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			System.out.println("HostDAO.getBookmsg():"+e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 호스트 정보(사진,아이디)를 가져오는 메소드
	 * @param hostseq 호스트번호
	 * @return dto 호스트 정보
	 */
	public UserDTO getHostinfo(String hostseq) {
		try {
			
			String sql = "select * from vwhostinfo where hostseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, hostseq);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				UserDTO dto = new UserDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPic(rs.getString("pic"));
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 유저정보(사진,아이디)를 가져오는 메소드
	 * @param userseq 유저번호
	 * @return dto 유저정보
	 */
	public UserDTO getUserinfo(String userseq) {
		try {
			
			String sql = "select id,seq,pic from tbluser where seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, userseq);
			
			rs = pstat.executeQuery();
			
			
			if(rs.next()) {
				UserDTO dto = new UserDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPic(rs.getString("pic"));
				
				return dto;
			}
			
		
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 예약 메시지 내용목록을 가져오는 메소드
	 * @param hostseq 호스트 번호
	 * @param userseq 유저 번호
	 * @return list 예약 메시지 내용목록
	 */
	public ArrayList<HostDTO> getMsglist(String hostseq, String userseq) {
		try {
			
			String sql = "select content from tblBookMessage where userseq=? and hostseq=? order by seq";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, userseq);
			pstat.setString(2, hostseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<HostDTO> list = new ArrayList<HostDTO>();
			
			while(rs.next()) {	
				HostDTO dto = new HostDTO();
				
				
				dto.setMsgcontent(rs.getString("content"));
				dto.setMsgcaller(rs.getString("caller"));
				
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
	 * 예약메시지 db에 저장하는 메소드
	 * @param userseq 유저번호
	 * @param hostseq 호스트번호
	 * @param msg 예약메시지내용
	 * @param caller 발신자구분
	 * @param bookseq 예약번호
	 * @return pstat.executeUpdate() 저장결과
	 */
	public int insertMsg(String userseq, String hostseq, String msg, String caller, String bookseq) {
		try {
			
			String sql = "insert into tblbookmessage values(bookmessage_seq.nextval,sysdate,?,?,?,?,?)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, msg);
			pstat.setString(2, caller);
			pstat.setString(3, bookseq);
			pstat.setString(4, userseq);
			pstat.setString(5, hostseq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	/**
	 * @author 정원재
	 * 숙소 정보를 가져오는 메소드
	 * @param accomseq 숙소 번호
	 * @return dto 숙소정보
	 */
	public HostDTO getAccomInfo(String accomseq) {
		try {
		
			String sql = "select * from tblaccom where hostseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, accomseq);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				HostDTO dto = new HostDTO();
				dto.setAccomcapacity(rs.getString("capacity"));
				dto.setAccomtype(rs.getString("accomtype"));
				
				return dto;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 숙소의 침대 수를 가져오는 메소드
	 * @param hostseq 호스트 번호
	 * @return rs.getString("cnt") 숙소 침대 수
	 */
	public String getBedcnt(String hostseq) {
		try {

			String sql = "select cnt from tblConvenience where hostseq = ? and name=?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, hostseq);
			pstat.setString(2, "침대");
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getString("cnt");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 숙소 욕조수를 가져오는 메소드
	 * @param hostseq 호스트 번호
	 * @return rs.getString("cnt") 숙소 욕조수
	 */
	public String getBathcnt(String hostseq) {
		try {
			
			String sql = "select cnt from tblConvenience where hostseq =? and name = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, hostseq);
			pstat.setString(2, "욕실");
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getString("cnt");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 숙소 사진목록을 가져오는 메소드
	 * @param hostseq 호스트 번호
	 * @return list 숙소 사진목록
	 */
	public ArrayList<HostDTO> getAccomPic(String hostseq) {
		try {
			System.out.println("daohostseq:"+hostseq);
			String sql = "select * from tblaccompic where hostseq = ? order by seq asc";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, hostseq);
			
			rs = pstat.executeQuery();
			ArrayList<HostDTO> list = new ArrayList<HostDTO>();
			
			while(rs.next()) {
				
				HostDTO dto = new HostDTO();
				
				dto.setAccompicseq(rs.getString("seq"));
				dto.setAccompic(rs.getString("pic"));
				
				list.add(dto);
			}
			System.out.println("listsize:"+list.size());
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 숙소 대표 사진 가져오는 메소드
	 * @param hostseq 호스트 번호
	 * @return dto 숙소 대표 사진
	 */
	public HostDTO getAccomLastPic(String hostseq) {
		try {
			
			String sql = "select pic from tblaccompic where seq in (select max(seq) as seq from tblaccompic a group by hostseq) and hostseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, hostseq);
			rs = pstat.executeQuery();
			
			
			if(rs.next()) {
				HostDTO dto = new HostDTO();
				dto.setAccompic(rs.getString("pic"));
			
				return dto;
			}
			
			
		} catch (Exception e) {
			System.out.println("HostDAO.getAccomLastPic():"+e);
		}
		return null;
	}

	/**
	 * @author 정원재
	 * 예약대기자 목록 수락시 예약상태를 수정하는 메소드
	 * @param hostseq 호스트 번호
	 * @param userseq 유저 번호
	 * @param checkin 예약시작날짜
	 * @param checkout 예약끝날짜
	 * @param callist 예약 대기자의 예약목록
	 * @return result 수정결과
	 */
	public int updateReserveAccept(String hostseq, String userseq, String checkin, String checkout, ArrayList<String> callist) {
		try {
			int result = 1;
			String sql = "update tblbookcalendar set bookstate = 1 where checkindate between to_date(?,'YYYY-MM-DD HH24:MI:SS') and to_date(?,'YYYY-MM-DD HH24:MI:SS') and hostseq =?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, checkin);
			pstat.setString(2, checkout);
			pstat.setString(3, hostseq);
			
			result = pstat.executeUpdate();
			System.out.println(result);
			
			for(int i=0;i<callist.size();i++) {
			sql = "update tblbook set state = '취소가능' where bookcalendarseq=? and userseq =?";
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, callist.get(0));
				pstat.setString(2, userseq);
				result = pstat.executeUpdate();
				System.out.println(result);
			}
			return result;
		} catch (Exception e) {
			System.out.println("HostDAO.updateReserveAccept():"+e);
		}
		return 0;
	}

	/**
	 * @author 정원재
	 * 예약대기자의 예약목록을 가져오는 메소드
	 * @param hostseq 호스트 번호
	 * @param checkin 예약시작날짜
	 * @param checkout 예약끝날짜
	 * @return list 예약대기자의 예약목록
	 */
	public ArrayList<String> getCalendarSeq(String hostseq, String checkin, String checkout) {
		try {
			
			String sql = "select seq from tblbookcalendar where checkindate between to_date(?,'YYYY-MM-DD HH24:MI:SS') and to_date(?,'YYYY-MM-DD HH24:MI:SS') and hostseq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, checkin);
			pstat.setString(2, checkout);
			pstat.setString(3, hostseq);
			rs = pstat.executeQuery();
			
			ArrayList<String> list = new ArrayList<String>();
			
			while(rs.next()) {
				list.add(rs.getString("seq"));
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("HostDAO.getCalendarSeq():"+e);
		}
		
		return null;
	}

}
