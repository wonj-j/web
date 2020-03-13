package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 
 * @author 안유니
 * 로그인 확인 및 세션참조 서블릿
 *
 */
@WebServlet("/user/loginok.do")
public class LoginOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			//LoginOk.java
		
			String id = req.getParameter("id");
			String pw = req.getParameter("pw");

			System.out.println(id);
			System.out.println(pw);


			UserDAO dao = new UserDAO();
			UserDTO dto = new UserDTO();
			dto.setId(id);
			dto.setPw(pw);
			
			HttpSession session = req.getSession(); //서블릿에서 세션 참조
			String result = dao.login(dto);
	
			session.setAttribute("temp", 0);
			
			if (result==null || result.equals("")) {
				
			} else {
				//로그인 성공
				session.setAttribute("seq", result);
				session.setAttribute("id", id);
				session.removeAttribute("temp");
			}
			
			resp.setContentType("plain/text"); //브라우저에게 돌려받을 데이터가 순수 Text이다.
			
			PrintWriter writer = resp.getWriter();
			System.out.println("result = " + result);
				
			writer.print(result);
			
			dao.close();

			writer.close();
			
			
//			System.out.println(id);
//			System.out.println(pw);
			
			
			
			
	}

}
