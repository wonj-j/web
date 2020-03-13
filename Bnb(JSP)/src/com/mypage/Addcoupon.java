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
 * 쿠폰갯수를 늘리는 서블릿
 */
@WebServlet("/addcoupon.do")
public class Addcoupon extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userseq = req.getParameter("userseq");
		
		AccomDAO dao = new AccomDAO();
		int ckcoupon = dao.getCheckCoupon(userseq);
		int result = 0;
		
		if(ckcoupon != -1) {
			if(ckcoupon == 0) {
				result = dao.insertCoupon();
			} else {
				result = dao.updateCoupon(userseq);
			}
		}
	}
}
