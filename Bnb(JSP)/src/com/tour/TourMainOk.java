package com.tour;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/tour/mainok.do")
/**
 * 
 * 지역들의 seq번호를 주고 받는 서블릿
 * @author 태성찬
 *
 */
public class TourMainOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		TourDAO dao = new TourDAO();
		TourDTO dto = new TourDTO();
		String bigArea = req.getParameter("bigarea");
		String smallArea = req.getParameter("smallarea");
		dto.setBigArea(bigArea);
		dto.setSmallArea(smallArea);
		
		int result = dao.area(dto);
		req.setAttribute("bigarea", bigArea);
		req.setAttribute("smallarea", smallArea);
		req.setAttribute("result", result);
//		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/tour/tourmainok.jsp");
//		dispatcher.forward(req, resp);
		PrintWriter writer = resp.getWriter();
		writer.print(result);
		writer.close();
				

	}
}

