package com.food;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 
 * 음식점 목록 페이징을 위한 ajax
 * @author 이지성
 *
 */
@WebServlet("/more.do")
public class More extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String area = req.getParameter("area");
		String area2 = req.getParameter("area2");
		String category = req.getParameter("category");
		String search = req.getParameter("search");
		
		//페이징 관련 변수
		int totalCount =0;	//총 게시물 수
		int pageSize =9;	//한 페이지당 보일 게시물 수
		int begin=0;		//where 절 시작 위치
		int end=0;			//where 절 끝 위치

		
		
		if(req.getParameter("begin") !=null && !req.getParameter("begin").equals("")) {
			begin = Integer.parseInt(req.getParameter("begin"));
		} 
		
	

		end = begin+pageSize;
		begin = begin+1;
		
		System.out.println(begin);
		System.out.println(end);
		
		if(search==null) search= "views";
		

		
		FoodDAO dao = new FoodDAO();
		FoodDTO dto = new FoodDTO();
		
		
		
		dto.setArea(area);
		dto.setArea2(area2);
		dto.setCategory(category);
		
		ArrayList<FoodDTO> list = dao.list(dto, search, begin, end);

		
		//네트워크 통신 > 전송 데이터 > 무조건 문자열(자료형 존재X)
		//1. Text
		// - hong,홍길동,제목입니다.
		//2. XML
		// <post>
		//		<id>hong</id>
		//		<name>홍길동</name>
		//		<subject>제목입니다.</subject>
		// </post>
		//3. JSON
		// {
		//		"id":"hong",
		//		"name": "홍길동",
		//		"subject":"제목입니다."
		// }
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/xml");
		
		PrintWriter writer = resp.getWriter();
		writer.print("<?xml version='1.0' encoding='UTF-8'?>");
		writer.print("<list>");
			for(FoodDTO item : list) {
			writer.print("<item>");
				writer.printf("<img>%s</img>", item.getImg());
				writer.printf("<point>%s</point>", item.getPoint());
				writer.printf("<views>%s</views>", item.getViews());
				writer.printf("<subject>%s</subject>", item.getSubject());
				writer.printf("<review>%s</review>", item.getReview());
				writer.printf("<content>%s</content>", item.getContent());
				writer.printf("<date>%s</date>", item.getDate());
				writer.printf("<seq>%s</seq>", item.getSeq());
			writer.print("</item>");
			}
		writer.print("</list>");

		

		

	}
}
