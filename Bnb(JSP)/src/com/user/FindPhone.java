package com.user;

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
 * @author 안유니
 * 회원정보에 등록된 전화번호로 아이디를 찾는 서블릿
 *
 */
@WebServlet("/user/findphone.do")
public class FindPhone extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		
		UserDAO dao = new UserDAO();
		UserDTO dto = new UserDTO();
		dto.setName(name);
		dto.setTel(tel);
		
		String result = dao.checkphone(name, tel);
		
		
		System.out.println(result);
		req.setAttribute("result", result);
		
		PrintWriter writer = resp.getWriter();
		
		writer.print(result);
		
		
	}

}





















