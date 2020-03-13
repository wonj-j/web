package com.mypage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 
 * @author 정원재
 * 리뷰확인페이지의 리뷰목록을 가져오는 서블릿
 */
@WebServlet("/checkreview.do")
public class Checkreview extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session = req.getSession();
		ReviewDAO dao = new ReviewDAO();
		if(session.getAttribute("dto") == null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/main/index.jsp");
			dispatcher.forward(req, resp);
		}
		UserDTO user = (UserDTO)session.getAttribute("dto");
		
		
		ArrayList<ReviewDTO> accomlist = dao.getAccomReview(user);
		ArrayList<ReviewDTO> restolist = dao.getRestoReview(user);
		ArrayList<ReviewDTO> tourlist = dao.getTourReview(user);
		
		
		req.setAttribute("accomlist", accomlist);
		req.setAttribute("restolist", restolist);
		req.setAttribute("tourlist", tourlist);
		
		dao.close();
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/checkreview.jsp");
		dispatcher.forward(req, resp);
	}
}
