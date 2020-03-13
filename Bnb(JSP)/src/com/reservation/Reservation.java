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

import com.accomodate.AccomDAO;
import com.accomodate.AccomDTO;

@WebServlet("/reservation/reservation.do")
public class Reservation extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		HttpSession session=req.getSession();
		
		String userseq=(String)session.getAttribute("seq");
		
		//System.out.println(seq);
		
		String cnt="";//인원수
		String checkin="";
		String checkout="";
		String fee="";//1박 금액
		String sum="";//합계
		String accomname="";
		String accompic="";//숙소 사진
		String hseq="";
		String days="";
		
		
			cnt=req.getParameter("cnt");
			checkin=req.getParameter("checkin");
			checkout=req.getParameter("checkout");
			fee=req.getParameter("fee");
			sum=req.getParameter("sum");
			accomname=req.getParameter("accomname");
			accompic=req.getParameter("accompic");
			hseq=req.getParameter("hseq");
			days=req.getParameter("day");
			
			//System.out.println(days);
			
			
			
			AccomDAO dao=new AccomDAO();
			
			
			AccomDTO accomdto=dao.getaccom(hseq);
			
			
			req.setAttribute("checkin",checkin);
			req.setAttribute("checkout",checkout);
			req.setAttribute("hseq",hseq);
			req.setAttribute("userseq",userseq);
			
			
			req.setAttribute("cnt",cnt);
			
			req.setAttribute("fee",fee);
			req.setAttribute("sum",sum);
			req.setAttribute("accomname",accomname);
			req.setAttribute("accompic",accompic);
			
			req.setAttribute("accomdto",accomdto);
			req.setAttribute("days",days);
			
			
			//-------------------------------------------------------
			
			
			
			
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/reservation/reservation.jsp");
		dispatcher.forward(req, resp);
	}
}
