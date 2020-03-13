package com.matching;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.UserDAO;
import com.user.UserDTO;
/**
 * 
 * @author 이진수
 * 1:1 채팅 전 설문조사 결과를 저장하는 서블릿
 */
@WebServlet("/matching/savedata.do")
public class savedata extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		 String seq = req.getParameter("seq"); 
		 String actScore =req.getParameter("actScore");
		 String planScore = req.getParameter("planScore"); 
		 String eatScore = req.getParameter("eatScore");
		 
		 ChatDAO dao = new ChatDAO(); 
		 
		 
		 
		 int result = dao.checkSurvey(seq);
		 
		 
		 
		 
		 
		 
		 if(result==0) {
		 
		 dao.saveData(actScore,planScore,eatScore,seq);
		 }else {
			 dao.updateData(actScore,planScore,eatScore,seq);
		 }
		
		
		/*
		 * RequestDispatcher dispatcher =
		 * req.getRequestDispatcher("/WEB-INF/views/matching/savedata.jsp");
		 * dispatcher.forward(req, resp);
		 */
		
	}
}
