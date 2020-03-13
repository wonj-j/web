package com.accomodate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.main.DBUtil;

/**
 * 
 * @author 이상희
 *
 */
public class ConvenienceDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ConvenienceDAO() {
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
	 * @return 숙소 편의시설 반환
	 * 숙소소개 페이지에 출력될 숙소의 편의시설(침대,욕실 등)
	 * 을 가져오는 함수
	 */
	public ArrayList<ConvenienceDTO> getcon(String hseq) {
		try {
				String sql=String.format("select * from tblConvenience where hostseq=%s"
										,hseq);
			
			stat=conn.createStatement();
			rs=stat.executeQuery(sql);
			
			
			ArrayList<ConvenienceDTO> clist=new ArrayList<ConvenienceDTO>();
			
			
			while(rs.next()) {
				ConvenienceDTO dto=new ConvenienceDTO();
				dto.setSeq(rs.getString("seq"));
				dto.setName(rs.getString("name"));
				dto.setState(rs.getString("state"));
				dto.setCnt(Integer.parseInt(rs.getString("cnt")));
				dto.setHostseq(rs.getString("hostseq"));

				clist.add(dto);
			}
			return clist;
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}
	
}
