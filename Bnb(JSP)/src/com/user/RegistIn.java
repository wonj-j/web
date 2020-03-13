package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author 안유니
 * 회원가입 이용약관 동의 서블릿
 *
 */
@WebServlet("/user/registin.do")
public class RegistIn extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/registin.jsp");
		dispatcher.forward(req, resp);

	}

}
