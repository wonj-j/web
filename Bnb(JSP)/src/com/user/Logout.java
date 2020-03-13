package com.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * 
 * @author 안유니
 * 로그아웃 서블릿
 *
 */
@WebServlet("/user/logout.do")
public class Logout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = req.getParameter("url");
		System.out.println(url);
		
		//1. 인증 해제
		//2. 시작 페이지로 이동
		
		HttpSession session = req.getSession();
		//session.removeAttributes("id");
		session.invalidate(); //완전 초기화
		
		resp.sendRedirect(url);

	}

}
