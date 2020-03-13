package com.accomodate;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/accomodate/lentinfo.do")
public class LentInfo extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//데이터 가져오기
		//DB작업 > DAO 위임 > select where
		//결과 반환(DTO) + JSP 호출 + 전달
		
	
	
		String hseq="";
		String checkin="";
		String checkout="";
		String child="";
		String adult="";
		
		
		hseq=req.getParameter("hseq");
		child=req.getParameter("child");
		adult=req.getParameter("adult");
		checkin=req.getParameter("checkin");
		checkout=req.getParameter("checkout");
		
		
		//System.out.println(accomseq);
		
		
		AccomDAO accomdao=new AccomDAO();
		
		
		ConvenienceDAO condao=new ConvenienceDAO();//편의시설
		
		AccomDTO accomresult=accomdao.getaccom(hseq);//DB
		
		
		String accominfo=accomresult.getAccominfo();
		accominfo=accominfo.replace("\r\n","<br>");
		
		accomresult.setAccominfo(accominfo);
	
		//편의시설
		ArrayList<ConvenienceDTO> clist=condao.getcon(hseq);
		
		//숙소 사진
		ArrayList<String> piclist=accomdao.getpic(hseq);
		
		
		
		req.setAttribute("accomresult",accomresult);
		req.setAttribute("clist",clist);
		req.setAttribute("checkin",checkin);
		req.setAttribute("checkout",checkout);
		req.setAttribute("child",child);
		req.setAttribute("adult",adult);
		req.setAttribute("hseq",hseq);
		req.setAttribute("pic1",piclist.get(0));
		req.setAttribute("pic2",piclist.get(1));
		req.setAttribute("pic3",piclist.get(2));
		req.setAttribute("pic4",piclist.get(3));
		req.setAttribute("pic5",piclist.get(4));
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/accomodate/lentinfo.jsp");
		dispatcher.forward(req, resp);
	}
}

