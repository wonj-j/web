package com.reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.main.DBUtil;

public class BookDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public BookDAO() {
		this.conn = DBUtil.open();
	}
	
	public void close(){
		try {
			this.conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
}
