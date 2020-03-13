package com.tour;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/tour/category.do")
/**
 * 
 * 여행지, 맛집의 seq번호를 주고 받는 서블릿
 * @author 태성찬
 *
 */
public class TourCategory extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		  TourDTO dto = new TourDTO();
		  String bigarea = req.getParameter("bigarea");
		  String smallarea = req.getParameter("smallarea");
		  String bigtext = req.getParameter("bigtext");
		  String smalltext = req.getParameter("smalltext");
		  
		  req.setAttribute("bigarea", bigarea);
		  req.setAttribute("smallarea", smallarea);
		  req.setAttribute("bigtext", bigtext);
		  req.setAttribute("smalltext", smalltext);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/tour/category.jsp");
		dispatcher.forward(req, resp);

	}
}

