package com.reservation;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.accomodate.AccomDAO;
import com.accomodate.AccomDTO;


@WebServlet("/reservation/reservation1.do")
public class Reservation1 extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=req.getSession();
		
		String userseq=(String)session.getAttribute("seq");
				
		
		
		
		String from="";
		String to="";
		String cnt="";
		String checkin="";
		String checkout="";
		String fee="";//1박 금액
		String sum="";//합계
		String hseq="";
		String day="";
		//String pic="";
		
		
		
			from=req.getParameter("from");
			to=req.getParameter("to");
			cnt=req.getParameter("btn1");
			checkin=req.getParameter("checkin");
			checkout=req.getParameter("checkout");
			fee=req.getParameter("fee");
			hseq=req.getParameter("hseq");
			//pic=req.getParameter("pic");
			day=req.getParameter("day");
			
			//System.out.println(day);
			
			ReserveDAO rdao=new ReserveDAO();
			ReserveDTO rdto=new ReserveDTO();
			
			int result=rdao.resercheck(userseq,hseq);
			System.out.println(result);
			
			
			//System.out.println(hseq);
			AccomDAO dao=new AccomDAO();
			
			AccomDTO accomdto=new AccomDTO();
			
			
			//ArrayList<AccomDTO> rulelist=dao.getrule(hseq);
			String rule=dao.getrule(hseq);
			accomdto=dao.getaccom(hseq);
			
			String pic=dao.getpics(hseq);
			
			
			
			
			req.setAttribute("from",from);
			req.setAttribute("to",to);
			req.setAttribute("cnt",cnt);
			req.setAttribute("checkin",checkin);
			req.setAttribute("checkout",checkout);
			req.setAttribute("fee",fee);
			req.setAttribute("hseq",hseq);
			req.setAttribute("day",day);
			req.setAttribute("rule",rule);
			req.setAttribute("pic",pic);
			req.setAttribute("accomdto",accomdto);
			
			
		
		if(session.getAttribute("id")==null || result>0) {
			resp.sendRedirect("/bnb/main.do");
		}else {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/reservation/reservation1.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
