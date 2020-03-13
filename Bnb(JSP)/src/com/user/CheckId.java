package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author 안유니
 * 아이디 중복검사를 담당하는 서블릿
 * 
 */
@WebServlet("/user/checkid.do")
public class CheckId extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		
		
		UserDAO dao = new UserDAO();
		int result = dao.checkid(id);
		
		PrintWriter writer = resp.getWriter();
		writer.print(result);
		writer.close();
		
	}

}
