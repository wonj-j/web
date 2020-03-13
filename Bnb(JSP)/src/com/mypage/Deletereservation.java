package com.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author 정원재
 * 예약을 취소하는 서블릿
 */
@WebServlet("/deletereservation.do")
public class Deletereservation extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String reserveSeq =  req.getParameter("seq");
		
		AccomDAO dao = new AccomDAO();
		int result = dao.deleteAccom(reserveSeq);
		
		if(result != 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		dao.close();
	}
	
}
