package com.food;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 메일 컨트롤러
 * @author Ray
 *
 */
@WebServlet("/postman.do")
public class PostMan extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		req.setCharacterEncoding("utf-8");
		
		  //String from = "tjdcksdl78@gmail.com";    // 메일 보내는 사람
		  //String to = "sososwek@naver.com";   // 메일 보낼사람
		  //String cc = "";     // 참조
		  //String subject = "잘가는지 테스트 중~~~~~~~~~~";// 제목
		  //String content = "안녕하세요. 반갑습니다.\n G-Mail을 이용한 메일 발송 예제입니다.\n 감사합니다.";// 내용
		  //String name= "이진수";
		
	
		
		  String from = "admin";    // 메일 보내는 사람
		  String to = req.getParameter("receivemail");   // 메일 받는사람
		  String cc = "";     //참조
		  String subject = req.getParameter("subject");// 제목
		  String content = req.getParameter("content");// 내용
		  String name= req.getParameter("name");
		  
		  System.out.println(to);
		  System.out.println(subject);
		  System.out.println(content);
		  
		  resp.setCharacterEncoding("UTF-8");
		  PrintWriter writer = resp.getWriter();
		  
		  
		  if(from.trim().equals("")) {
			  
		   System.out.println("보내는 사람을 입력하지 않았습니다.");
		  }
		  else if(to.trim().equals("")) {
			  writer.print("받는 사람을 입력하지 않았습니다.");
		   System.out.println("받는 사람을 입력하지 않았습니다.");
		  } else if(name.equals("")) {
			  writer.print("이름을 입력하지 않았습니다.");
		  } else if(subject.equals("")) {
			  writer.print("글 제목을 입력하지 않았습니다.");
		  } else if(content.equals("")) {
			  writer.print("글 내용을 입력하지 않았습니다.");
		  }
		  else {
		   try {
		    MailTest mt = new MailTest();
		    
		    // 메일보내기
		    mt.sendEmail(from, to, cc, subject, content, name);
		    writer.print("메일 전송에 성공하였습니다.");
		    System.out.println("메일 전송에 성공하였습니다.");
		   }
		   catch(MessagingException me) {
			   writer.print("메일 전송에 실패하였습니다.");
		    System.out.println("메일 전송에 실패하였습니다.");
		    System.out.println("실패 이유 : " + me.getMessage());
		   }
		   catch(Exception e) {
			   writer.print("메일 전송에 실패하였습니다.");
		    System.out.println("메일 전송에 실패하였습니다.");
		    System.out.println("실패 이유 : " + e.getMessage());
		   }
		  }

		
	}
}



