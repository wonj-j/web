package com.matching;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * @author 이진수
 * 현재 채팅 사용중인 유저 목록 조회를 위한 서블릿
 */
@WebServlet("/matching/chatuser.do")
public class chatUser extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setCharacterEncoding("UTF-8");
		
		ChatDAO dao = new ChatDAO();
		
		
		String checkLocal = req.getParameter("checkLocal");
		
		
		ArrayList<ChatDTO> list =dao.userList(checkLocal);
		
		
		PrintWriter writer = resp.getWriter();
		
		writer.print("<list>");
		
		
	
		for(ChatDTO dto : list) {
	
		
		writer.print("<item>");
		writer.printf("<name>%s</name>",dto.getUserName());
		writer.print("</item>");
//		System.out.println(dto);
		
		}
	
		writer.print("</list>");
		
		
		
		
		
		/*
		 * RequestDispatcher dispatcher =
		 * req.getRequestDispatcher("/WEB-INF/views/matching/localChatting.jsp");
		 * dispatcher.forward(req, resp);
		 */
		writer.close();
		dao.close();
	}
}
