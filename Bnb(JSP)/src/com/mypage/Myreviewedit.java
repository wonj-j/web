package com.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author 정원재
 * 리뷰 정보를 수정할 때 필요한 정보를 가져오는 서블릿
 */
@WebServlet("/myreviewedit.do")
public class Myreviewedit extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String rseq = req.getParameter("rseq"); // 리뷰 글번호
		String rcateseq = req.getParameter("rcateseq"); //리뷰 카테고리글번호
		String category = null;
		
//		System.out.println(rseq);
//		System.out.println(rcateseq);
		
		ReviewDAO dao = new ReviewDAO();
		ReviewDTO dto = new ReviewDTO();
		
		int checkcategory = dao.checkCategory(rcateseq);
//		System.out.println("checkcategory:"+checkcategory);
		
		if(checkcategory == 1) {
			dto = dao.getAccomReview(rseq);
			category = "숙소";
		} else if(checkcategory == 2) {
			dto = dao.getTourReview(rseq);
			category = "여행";
		} else if(checkcategory == 3) {
			dto = dao.getRestoReview(rseq);
			category = "맛집";
		} else {
			System.out.println("리뷰를 찾을 수 없습니다.");
		}
		
		req.setAttribute("dto", dto);
		req.setAttribute("category", category);
		
		dao.close();
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/myreviewedit.jsp");
		dispatcher.forward(req, resp);
	}
}
