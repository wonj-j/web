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
 * 숙소정보수정 할 때 필요한 정보들을 가져오는 서블릿
 */
@WebServlet("/mylodgingedit.do")
public class MylodgingEdit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String hostseq = req.getParameter("hostseq");
		HostDAO dao = new HostDAO();
		HostDTO dto = dao.getAccomInfo(hostseq);
		ArrayList<HostDTO> piclist = dao.getAccomPic(hostseq);
		String bedcnt = dao.getBedcnt(hostseq);
		String bathroomcnt = dao.getBathcnt(hostseq);
		int piccount = piclist.size();
		
//		System.out.println("hostseq:"+hostseq);
//		System.out.println("piclistsize:"+piclist.size());
//		for(int i=0;i<piclist.size();i++) {
//			System.out.println(piclist.get(i));
//		}
		
		req.setAttribute("accomdto", dto);//숙소 최대 수용인원, 숙소 유형, 숙소 사진
		req.setAttribute("bedcnt", bedcnt);//침대수
		req.setAttribute("bathroomcnt", bathroomcnt);//욕실수
		req.setAttribute("hostseq", hostseq);
		req.setAttribute("piclist", piclist);
		req.setAttribute("piccount", piccount);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/mylodgingEdit.jsp");
		dispatcher.forward(req, resp);
	}
}
