package com.food;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * 조회수 증가를 위한 ajax
 * @author 이지성
 *
 */
@WebServlet("/food/viewcount.do")
public class ViewCount extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String seq = req.getParameter("seq");
		
		FoodDAO dao = new FoodDAO();
		
		dao.viewCount(seq);


	}
}

