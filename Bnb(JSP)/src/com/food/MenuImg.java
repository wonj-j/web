package com.food;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;



/**
 * 
 * 메뉴판 이미지 가져오는 ajax 
 * @author 이지성
 *
 */
@WebServlet("/food/menuimg.do")
public class MenuImg extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String seq = req.getParameter("seq");
		
		System.out.println(seq);
		
		FoodDAO dao = new FoodDAO();
		ArrayList<String> img = dao.menuImg(seq);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		PrintWriter writer = resp.getWriter();
		JSONArray array = new JSONArray();
		
		for(String name : img) {
			
			
			JSONObject obj = new JSONObject();
			obj.put("menuImg", name);			
			array.add(obj);
			
		}
		

		writer.print(array.toString());
		
		writer.close();
		


	}
}
