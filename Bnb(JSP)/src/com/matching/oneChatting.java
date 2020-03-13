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
 * 1:1 매칭을 위한 서블릿
 */
@WebServlet("/matching/oneChatting.do")
public class oneChatting extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		if(session.getAttribute("seq")!=null) {
			String seq = (String)session.getAttribute("seq");
			req.setAttribute("seq", seq);
	
		}else
			req.setAttribute("seq", "");
		
		
		System.out.println(session.getAttribute("seq"));
			
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/matching/oneChatting.jsp");
		dispatcher.forward(req, resp);
	}
}
