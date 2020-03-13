package com.accomodate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import com.main.DBUtil;

/**
 * 
 * @author 이상희
 *
 */
public class LocationDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public LocationDAO() {
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
	 * @param map 체크인,체크아웃 날짜와 숙소인원 호스트 번호
	 * @param address 사용자가 입력한 위치에 대한 정보
	 * @return 사용자가 입력한 정보에 맞는 숙소 정보 반환
	 * 
	 * 사용자가 숙소를 검색시 입력한 위치,날짜,인원등을 이용해
	 * 기존에 저장되어 있던 숙소의 위치와 숙소 예약가능 날짜,예약 가능한 인원을
	 * 비교하여 숙소들의 정보를 가져오는 메서드
	 */
	public ArrayList<LocationDTO> getLocation(HashMap<String, String> map,String[] address) {
		try {
			
			 
			Calendar in=Calendar.getInstance();
            Calendar out=Calendar.getInstance();
            in.set(Integer.parseInt(map.get("checkin").substring(0,4)), Integer.parseInt(map.get("checkin").substring(5, 7)), Integer.parseInt(map.get("checkin").substring(8)));
            out.set(Integer.parseInt(map.get("checkout").substring(0,4)), Integer.parseInt(map.get("checkout").substring(5, 7)), Integer.parseInt(map.get("checkout").substring(8)));
           
            long diffSec = (out.getTimeInMillis() - in.getTimeInMillis()) / 1000;       //초
            long diffDay = diffSec/(60 * 60 * 24);                                                     //날
            //System.out.println("두 날자의 일 차이수 = " + diffDay);  
			
             
			String sql=String.format("select hostseq,count(*) as cnt from tblBookcalendar where bookstate='0' and (checkindate>='%s' and checkindate <'%s') group by hostseq", map.get("checkin"), map.get("checkout"));
			
			 
			
            
            	stat=conn.createStatement();
				rs=stat.executeQuery(sql);
				
				
				
				ArrayList<String> hostSeq = new ArrayList<String>();
			
					while(rs.next()) { 
						
						//System.out.println(rs.getString("cnt"));
						if(diffDay == Long.parseLong(rs.getString("cnt")) ) { 
							hostSeq.add(rs.getString("hostseq")); 
							//System.out.println(rs.getString("hostseq"));
						}
					}
				
					
				
				ArrayList<LocationDTO> localist=null;
				String str="";
				int cnt=0;
				
				if(hostSeq!=null) {
					for(String item: hostSeq ) {
						cnt++;
						str += item;
						if( !(cnt ==hostSeq.size())) {
							str += ",";
						}
						
					}
					
				if(address.length>=3) {
				sql = String.format("select * from vwSearchBook where hseq in (%s) and capacity>=%s"
									+" and city='%s' and address like '%s%%'"
									,str
									,map.get("pcnt")
									,address[1]
									,address[2].substring(0,address[2].indexOf('동')-1));
				
				}else if(1<address.length && address.length<3){
					
					sql = String.format("select * from vwSearchBook where hseq in (%s) and capacity>=%s"
							+" and city='%s'"
							,str
							,map.get("pcnt")
							,address[1]) ;
				}else if(address.length==1){
					sql = String.format("select * from vwSearchBook where hseq in (%s) and capacity>=%s and area='%s'"
							,str
							,map.get("pcnt")
							,address[0]) ;
				}
				
				//System.out.println("size="+address.length);
				//System.out.println("dd="+address[0]);
				stat=conn.createStatement();
				rs=stat.executeQuery(sql);
				
				
				localist=new ArrayList<LocationDTO>();
				
				while(rs.next()) {
					
					LocationDTO dto=new LocationDTO();
					dto.setAccomname(rs.getString("accomname"));
					//dto.setAccompic(rs.getString("accompic"));
					dto.setAccomtype(rs.getString("accomtype"));
					dto.setFee(rs.getString("fee"));
					dto.setAccomseq(rs.getString("accomseq"));
					
					dto.setHseq(rs.getString("hseq"));
					dto.setLat(rs.getString("lat"));
					dto.setLng(rs.getString("lng"));

					
					localist.add(dto);
					
				}
				
				return localist;
			}
				
				
				
		} catch (Exception e) {
			System.out.println(e);
		}

		
		return null;

	}
}	

