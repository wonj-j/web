package com.reservation;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/reservation/reservationok.do")
public class ReservationOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");


		HttpSession session=req.getSession();
		
		String userseq=(String)session.getAttribute("seq");
		//System.out.println(userseq);
		
		String checkin="";
		String checkout="";
		String sum="";//합계
		String hseq="";
		String talktohost="";
		String days="";
			
			checkin=req.getParameter("checkin");
			checkout=req.getParameter("checkout");
		
			sum=req.getParameter("sum");
			hseq=req.getParameter("hseq");
			days=req.getParameter("days");
			talktohost=req.getParameter("talktohost");
		
	
			
		HashMap<String,String> map=new HashMap<String,String>();
			
		
		 map.put("checkin",checkin);
		 map.put("checkout",checkout);
		 map.put("hseq",hseq); 
		 map.put("userseq",userseq);
		 map.put("days",days);
		 map.put("talktohost",talktohost);
		 
		 
		
		
		 ReserveDAO rdao=new ReserveDAO();
		 
		 ArrayList<String> calenseq=rdao.check(map);
		
		 
	
			int result1 = 0;

			
			  if(calenseq.size()>0) { 
				  
				  result1=rdao.book(calenseq,map);
			
				  if(result1!=0) { 
					  req.setAttribute("result",result1);
				  }
			
			 }
		
		
		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/reservation/reservationok.jsp");
		dispatcher.forward(req, resp);
	}
}
