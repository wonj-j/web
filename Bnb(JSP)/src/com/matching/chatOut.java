package com.matching;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * @author 이진수
 * 채팅을 나간 유저를 검색하는 메서드
 */
@WebServlet("/matching/chatout.do")
public class chatOut extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String name = req.getParameter("name");
		System.out.println(name);
		ChatDAO dao = new ChatDAO();
		
		int a= dao.updateUser(name);
		
		System.out.println(a);
		
	}
}
