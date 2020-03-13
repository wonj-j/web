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
 * 리뷰정보를 수정하는 서블릿
 */
@WebServlet("/updatereview.do")
public class Updatereview extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String rseq = req.getParameter("rseq");
		String rscore = req.getParameter("reviewscore");
		String rcontent = req.getParameter("reviewcontent");
		
		System.out.println(rscore);
		ReviewDAO dao = new ReviewDAO();
		
		int result = dao.updateReview(rseq,rscore,rcontent);
		if(result != 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		
	}
}
