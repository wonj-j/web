package com.tour;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/tour/tourmain.do")
/**
 * 
 * 관광지 메뉴 시작하는 화면
 * @author 태성찬
 *
 */
public class TourMain extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		if(session.getAttribute("seq")!=null) {
			String seq = (String)session.getAttribute("seq");
			req.setAttribute("seq", seq);
	
		}else {
			req.setAttribute("seq", "");
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/tour/tourmain.jsp");
		dispatcher.forward(req, resp);
		
		

	}
}

