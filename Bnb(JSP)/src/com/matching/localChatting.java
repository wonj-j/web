package com.matching;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * 
 * @author 이진수
 * 지역 채팅 메인 화면 서블릿
 */
@WebServlet("/matching/localChatting.do")
public class localChatting extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
		HttpSession session = req.getSession();
		
		if(session.getAttribute("seq")!=null) {
			String seq = (String)session.getAttribute("seq");
			req.setAttribute("seq", seq);
	
		}else {
			req.setAttribute("seq", "");
		}
		
		

	

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/matching/localChatting.jsp");
		dispatcher.forward(req, resp);
	}
}