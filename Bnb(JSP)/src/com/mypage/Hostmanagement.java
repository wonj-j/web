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
 * 호스트메뉴 페이지의 정보들을 불러오는 서블릿
 */
@WebServlet("/hostmanagement.do")
public class Hostmanagement extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//메뉴에서 호스트페이지로 갈시 2가지 경우
		HttpSession session = req.getSession();
		
		int roop = 0;//숙박리스트 루프변수
		
		UserDAO dao = new UserDAO();
		HostDAO hostdao = new HostDAO();
//		session.setAttribute("seq", "3");
		if(session.getAttribute("dto") == null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/main/index.jsp");
			dispatcher.forward(req, resp);
		}
		UserDTO dto = (UserDTO)session.getAttribute("dto");
		
//		String seq = (String)session.getAttribute("seq");
		
//		int checkHost = dao.checkHost(seq);
		int checkHost = dao.checkHost(dto.getSeq());
		
		if(checkHost == 0) {
			//1. 해당유저가 호스트로 등록한적이없는경우	
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/firstaddhost.jsp");
			dispatcher.forward(req, resp);
		} else {
			//2. 해당유저가 호스트로 등록한 경우
			
//			String hostseq = hostdao.getHostSeq(seq);
			String hostseq = hostdao.getHostSeq(dto.getSeq());
			HostDTO hostaccomdto = hostdao.getHostmenu(hostseq);//호스트의 숙소정보 가져오기
			HostDTO hostpic = hostdao.getAccomLastPic(hostseq);
			ArrayList<HostDTO> hostaccomruledto = hostdao.getAccomrule(hostseq);//숙소 규칙정보 가져오기(규칙 여러개를 가져옴) 
			ArrayList<HostDTO> hostbookdto = hostdao.getAccommenu(hostseq);//호스트의 예약대기자정보 가져오기
			ArrayList<HostDTO> hostmsgdto = hostdao.getBookmsg(hostseq);
			
			req.setAttribute("hostaccomdto", hostaccomdto);
			req.setAttribute("hostpic", hostpic);
			req.setAttribute("hostaccomruledto", hostaccomruledto);
			req.setAttribute("hostbookdto", hostbookdto);
			req.setAttribute("hostmsgdto", hostmsgdto);
			req.setAttribute("roop", roop); //루프변수
			
			dao.close();
			hostdao.close();
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/hostmanagement.jsp");
			dispatcher.forward(req, resp);
		}
	}

}

