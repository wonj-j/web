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
 * 예약메시지에 필요한 정보를 가져오는 서블릿
 */
@WebServlet("/websocket.do")
public class OpenSocket extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userseq = req.getParameter("userseq");
		String hostseq = req.getParameter("hostseq");
		String caller = req.getParameter("caller");
		String bookseq = req.getParameter("bookseq");
		
		HostDAO dao = new HostDAO();
		UserDTO hostinfo = dao.getHostinfo(hostseq);
		UserDTO guestinfo = dao.getUserinfo(userseq);
		
		req.setAttribute("hostseq", hostseq);
		req.setAttribute("bookseq", bookseq);
		req.setAttribute("hostinfo", hostinfo);
		req.setAttribute("guestinfo", guestinfo);
		req.setAttribute("caller", caller);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/bookmsg.jsp");
		dispatcher.forward(req, resp);
	}

}
