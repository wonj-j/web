package com.matching;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * @author 이진수
 * 채팅 전송 후 데이터베이스에 저장 하는 서블릿
 */
@WebServlet("/matching/chatSend.do")
public class chatSend extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		ChatDAO dao = new ChatDAO();
		
		
		String content = req.getParameter("content");
		String chatName = req.getParameter("name");
		String checkLocal = req.getParameter("checkLocal");
		String imgSrc = req.getParameter("imgSrc");
		int a =  dao.sendData(content,chatName,checkLocal,imgSrc);
		
		PrintWriter writer = resp.getWriter();
		
		writer.print(a);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/matching/localChatting.jsp");
		dispatcher.forward(req, resp);
		
		writer.close();
		dao.close();
		
		
	}
}