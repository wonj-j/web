package com.food;

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
 * 음식점 선택 서블릿
 * @author 이지성
 *
 */
@WebServlet("/food/foodselect.do")
public class FoodSelect extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String seq = req.getParameter("seq");
		
		MenuDAO dao = new MenuDAO();
		
		
		ArrayList<MenuDTO> list = new ArrayList<MenuDTO>();
		list = dao.list(seq);
		
		
		
		AreaDTO area = dao.area(seq);
		

		
		
	
		req.setAttribute("list", list);
		req.setAttribute("seq", seq);
		req.setAttribute("area", area);
		
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/food/foodselect.jsp");
		dispatcher.forward(req, resp);

	}
}
