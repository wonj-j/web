package com.reservation;

import java.sql.CallableStatement;
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
public class ReserveDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	private CallableStatement cstat;

	 public ReserveDAO() { 
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
 * @param map 체크인,체크아웃 날짜,호스트 번호
 * @return
 * 사용자가 선택한 날짜가 예약이 가능한지 숙소의 예약 가능 날짜와 비교한다.
 * 
 */
	public ArrayList<String> check(HashMap<String,String> map) {
		try {
			String sql=String.format("select seq from tblBookCalendar where "
					+ "(checkindate>='%s' and checkindate <'%s') and hostseq=%s"
							,map.get("checkin")
							,map.get("checkout")
							,map.get("hseq"));
			
			pstat=conn.prepareStatement(sql);
			rs=pstat.executeQuery();
			
			ArrayList<String> nums=new ArrayList<String>();
			
			while(rs.next()){
				/* ReserveDTO dto=new ReserveDTO(); */
				nums.add(rs.getString("seq"));
			}
			return nums;
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}


	/**
	 * 
	 * @param calenseq 숙소 예약 가능 날짜의 번호들
	 * @param map 유저번호,예약일수
	 * @return 
	 * 
	 *호스트에게 사용자가 보내는 메시지와 예약승인요청을 저장하는 메서드
	 * 
	 */
	public int book(ArrayList<String> calenseq, HashMap<String, String> map) {
		try {
			
			
			
			/* int count=calenseq.size(); */
	        int n=Integer.parseInt(calenseq.get(0));
	        int count=0;
	        for(String num:calenseq) {
			String	sql1="insert into tblBook (seq,userseq,state,bookcalendarseq,bookcnt)"
						+ "	values(book_seq.nextval,?,'승인 대기',?,?)";
		
				pstat=conn.prepareStatement(sql1);
				pstat.setString(1,map.get("userseq"));
				pstat.setString(2,num);
				pstat.setString(3,map.get("days"));
				
				count+=pstat.executeUpdate();
			}
			

	        if(count>0) {
	         String sql = "{ call book_proc(?,?,?,?) }";

	         cstat = conn.prepareCall(sql);


	         cstat.setString(1,map.get("userseq"));
	         cstat.setString(2,map.get("talktohost"));
	         cstat.setString(3,n+"");
	         cstat.setString(4,map.get("hseq"));
	         
	      
	           return cstat.executeUpdate();
				
	        }
	         cstat.close();
	        
	        
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	/**
	 * 
	 * @param userseq 로그인한 유저 번호
	 * @param hseq 호스트 번호
	 * @return 
	 * 유저가 해당 숙소를 예약하였는지 체크하는 메서드
	 */
	public int resercheck(String userseq, String hseq) {
		try {
			/*String sql=String.format("select count(*) as cnt from vwAccomlist " + 
					"where userseq=%s and checkindate in (select checkindate from tblbookcalendar where hostseq=%s)"
					,userseq
					,hseq);*/
			
			String sql=String.format("select count(*) as cnt from vwAccomlist " + 
					"where userseq=%s and hostseq=%s and checkindate "
					+ "in (select checkindate from tblbookcalendar where bookstate='0')"
					,userseq
					,hseq);
			
			pstat=conn.prepareStatement(sql);
			rs=pstat.executeQuery();
			
			
			
			int result=0;
			if(rs.next()) {
				
				result=Integer.parseInt(rs.getString("cnt"));
			
			}
			//System.out.println(rs.getString("cnt"));
			//System.out.println("u="+userseq);
			//System.out.println("h="+hseq);
			
			return result;
			
		} catch (Exception e) {
			System.out.println(e);
		
		}
		
		return 0;
	}


}
