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
 * 모달로 로그인을 띄었을때 닫기버튼 클릭시 동작하는 서블릿
 *
 */
@WebServlet("/user/loginclose.do")
public class LoginClose extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		session.removeAttribute("temp");
		session.removeAttribute("seq");
		session.removeAttribute("id");
		
		

		
	}

}