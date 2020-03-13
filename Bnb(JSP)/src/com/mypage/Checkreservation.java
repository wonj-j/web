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
 * 예약확인페이지의 예약목록을 가져오는 서블릿
 */
@WebServlet("/checkreservation.do")
public class Checkreservation extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		int bookcnt = 0;//예약건수
		int reservecnt = 0;//숙박한 일수 
		int roop = 0;//숙박리스트 루프변수

		if(session.getAttribute("dto")!= null) {
			UserDTO user = (UserDTO)session.getAttribute("dto");
			
			AccomDAO dao = new AccomDAO();
			ArrayList<AccomDTO> accom = new ArrayList<AccomDTO>();
			accom = dao.getAccomList(user); // 예약한숙소리스트가져오기
			reservecnt = dao.getReservecnt(user);//총숙박일수가져오기
			
			//예약 정보 jsp에 넘겨주기
			req.setAttribute("accom", accom);
			req.setAttribute("reservecnt", reservecnt);
			req.setAttribute("bookcnt", bookcnt);
			req.setAttribute("roop", roop);
			
			dao.close();
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/checkreservation.jsp");
			dispatcher.forward(req, resp);
			
		} else if (session.getAttribute("dto") == null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/index.jsp");
			dispatcher.forward(req, resp);
		}		
	}

}

