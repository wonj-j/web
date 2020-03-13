package com.matching;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author 이진수
 * 사진 변경을 위한 서블릿
 *
 */
@WebServlet("/matching/changeimg.do")
public class changImg extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String imgSrc = req.getParameter("imgSrc");
		String useName = req.getParameter("useName");
		
		System.out.println(useName);
		ChatDAO dao = new ChatDAO();
		ChatDTO dto = new ChatDTO();
		
		dao.change(useName,imgSrc);
		
	}
}