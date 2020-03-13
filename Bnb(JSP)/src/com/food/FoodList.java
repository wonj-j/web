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
 * 음식점 목록 서블릿
 * @author 이지성
 *
 */
@WebServlet("/food/foodlist.do")
public class FoodList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//페이징 관련 변수
		int totalCount =0;	//총 게시물 수
		int pageSize =9;	//한 페이지당 보일 게시물 수
		int begin=0;		//where 절 시작 위치
		int end=0;			//where 절 끝 위치

		String area = req.getParameter("area");
		String area2 = req.getParameter("area2");
		String category = req.getParameter("category");
		String search = req.getParameter("search");
		
		
		
		
		
		if(req.getParameter("begin") !=null && !req.getParameter("begin").equals("")) {
			begin = Integer.parseInt(req.getParameter("begin"));
		} 
		

		end = begin+pageSize;
		begin = begin+1;
		
		
		
		
		
		
		if(search==null) search= "views";
		
		

		
		FoodDAO dao = new FoodDAO();
		FoodDTO dto = new FoodDTO();
		
		
		
		dto.setArea(area);
		dto.setArea2(area2);
		dto.setCategory(category);
		

		
		ArrayList<FoodDTO> list = dao.list(dto, search, begin, end);
		ArrayList<AreaDTO> areaList = dao.areaList(area, category); 
		
		
		
		req.setAttribute("list", list);
		req.setAttribute("search", search);
		req.setAttribute("area", area);
		req.setAttribute("area2", area2);
		req.setAttribute("category", category);
		req.setAttribute("areaList", areaList);
		
		dao.close();
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/food/foodlist.jsp");
		dispatcher.forward(req, resp);

	}
}
