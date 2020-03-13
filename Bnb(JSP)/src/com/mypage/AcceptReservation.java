package com.mypage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * @author 정원재
 * 숙소 예약자 대기목록에 대한 수락여부 하는 서블릿
 */
@WebServlet("/acceptreservation.do")
public class AcceptReservation extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String hostseq = req.getParameter("hostseq");
		String userseq = req.getParameter("userseq");
		String checkin = req.getParameter("checkin");
		String checkout = req.getParameter("checkout");
		
		//System.out.println(hostseq+","+userseq+","+checkin+","+checkout);
		HostDAO dao = new HostDAO();
		
		ArrayList<String> callist = dao.getCalendarSeq(hostseq,checkin,checkout);
		
		int result = dao.updateReserveAccept(hostseq,userseq,checkin,checkout,callist);
		
		if(result != 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		
	}

}
