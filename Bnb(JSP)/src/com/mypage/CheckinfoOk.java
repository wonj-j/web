package com.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author 정원재
 * 유저정보를 수정하는 서블릿
 */
@WebServlet("/checkinfoOk.do")
public class CheckinfoOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		String seq = req.getParameter("seq");
		String pw = req.getParameter("pw");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		String hobby = req.getParameter("hobby");
		String pic = req.getParameter("pic");

		
		System.out.println(seq + pw + tel + email + hobby + pic);
		
		UserDTO dto = new UserDTO();
		UserDAO dao = new UserDAO();
		
		
		dto.setSeq(seq);
		dto.setPw(pw);
		dto.setTel(tel);
		dto.setEmail(email);
		dto.setHobby(hobby);
		dto.setPic(pic);
		
		int result = dao.updateInfo(dto);
		
		if(result != 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
	}

}

