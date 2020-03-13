package com.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author 정원재
 * 유저정보를 가져오는 서블릿
 */
@WebServlet("/myinfo.do")
public class Myinfo extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		HttpSession session = req.getSession();
		
		UserDAO dao = new UserDAO();
		UserDTO dto = dao.getUser();
//		if(session.getAttribute("seq") == null) {
//			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/main/index.jsp");
//			dispatcher.forward(req, resp);
//		}
//		UserDTO dto = dao.getUser((String)session.getAttribute("seq"));
		System.out.println(dto.getPw());
		session.setAttribute("dto", dto);
		
		dao.close();
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/myinfo.jsp");
		dispatcher.forward(req, resp);
	}
}

