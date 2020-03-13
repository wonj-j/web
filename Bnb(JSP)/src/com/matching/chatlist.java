package com.matching;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * 
 * @author 이진수
 *채팅 목록을 가져오기 위한 서블릿
 */
@WebServlet("/matching/chatlist.do")

public class chatlist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	//채팅방 만들기	
		HttpSession session = req.getSession();
		
		
		
		
		
		ChatDAO dao = new ChatDAO();
		
		String checkLocal = req.getParameter("checkLocal");
		
		
		ArrayList<ChatDTO> list = dao.chatlist(checkLocal);
		
		req.setAttribute("list", list);
		resp.setCharacterEncoding("UTF-8");
		
//		ArrayList<ChatDTO> ulist = dao.userlist();
		
		//javascript > string
		
		//jsp or servlet > json return
		PrintWriter writer = resp.getWriter();
		
	
		
		writer.printf("<?xml version='1.0' encoding='UTF-8'?>");
		writer.printf("<list>");
		for(ChatDTO dto : list) {
	
	
		writer.print("<item>");
		writer.printf("<name>%s</name>",dto.getUserName());
		writer.printf("<content>%s</content>",dto.getContent());
		writer.printf("<chattime>%s</chattime>",dto.getChatTime());
		writer.printf("<ox>%s</ox>", dto.getOx());
		writer.printf("<imgs>%s</imgs>",dto.getImg());
		writer.print("</item>");
		}
		
//		for(ChatDTO dto : ulist) {
//			writer.print("<item>");
//			writer.printf("<userName>%s</userName>",dto.getUserName());
//			writer.print("</item>");
//		}
//		
		writer.printf("</list>");
		
		
		writer.close();
		dao.close();
	}
}