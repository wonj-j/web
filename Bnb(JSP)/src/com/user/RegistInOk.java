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
 * 회원가입 확인 서블릿
 *
 */
@WebServlet("/user/registinok.do")
public class RegistInOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//RegistInOk.java
		//회원가입 확인
		
		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
		System.out.println("pw : "+pw);
		String name=req.getParameter("name");
		String year=req.getParameter("year");
		String month=req.getParameter("month");
		String date=req.getParameter("date");
		String birth = String.format("%s-%s-%s",year,month,date);
		String gender=req.getParameter("gender");
		String email= req.getParameter("email");
		String tel=req.getParameter("tel");
		String hobby=req.getParameter("hobby");
		
		System.out.println("연 월 일" + year + month + date);
		 System.out.println("request getContentType : " + req.getContentType());
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(birth);
		System.out.println(gender);
		System.out.println("이메일 : " +email);
		System.out.println(tel);
		System.out.println("취미 : " + hobby);
	
		
		UserDAO dao = new UserDAO();
		UserDTO dto = new UserDTO();
		
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setBirth(birth);
		dto.setGender(gender);
		
		dto.setEmail(email);
		
		
		dto.setTel(tel);
		dto.setHobby(hobby);
		
		System.out.println("나와라" + dto.getTel());
		int result = dao.add(dto);
		
		System.out.println(result);
		
		PrintWriter writer = resp.getWriter();
		
		writer.print(result);
		writer.close();
		
		
		dao.close();
		
		
	}

}




















