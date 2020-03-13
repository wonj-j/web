package com.mypage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 
 * @author 정원재
 * 마일리지페이지의 여러 정보들을 가져오는 서블릿
 */
@WebServlet("/mileage.do")
public class Mileage extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		HttpSession session = req.getSession();
		
		if(session.getAttribute("dto") == null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/main/index.jsp");
			dispatcher.forward(req, resp);
		}
		MileageDAO dao = new MileageDAO();
		ArrayList<MileageDTO> mileagelist = dao.getMileageList((UserDTO)session.getAttribute("dto")); //마일리지 리스트(차감,적립)
		int mpoints = dao.getSumMilepoint((UserDTO)session.getAttribute("dto"));//총 적립된 마일리지 수
		
		ArrayList<MileageDTO> couponlist = dao.getCouponList((UserDTO)session.getAttribute("dto"));
		int couponsum = dao.getSumCouponcnt((UserDTO)session.getAttribute("dto"));
		
//		System.out.println("mileage.java 27:"+mileagelist.get(0).getMilestate());
//		System.out.println(mileagelist.get(0).getMiledate());
		//마일리지정보를 jsp로 넘기는 부분
		req.setAttribute("mpoints", mpoints);
		req.setAttribute("mileagelist", mileagelist);
		
//		System.out.println(couponsum);
//		System.out.println(couponlist.get(0).getCoupdate());
		//쿠폰정보를 jsp로 넘기는 부분
		req.setAttribute("couponsum", couponsum);
		req.setAttribute("couponlist", couponlist);
		
		dao.close();
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/mileage.jsp");
		dispatcher.forward(req, resp);
	}

}

