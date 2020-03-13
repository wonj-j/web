package com.matching;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.user.UserDAO;
import com.user.UserDTO;
/**
 * 
 * @author 이진수
 * 채팅 사용 유저의 정보를 가져오는 서블릿
 */
@WebServlet("/matching/profile.do")
public class profile extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		HttpSession session = req.getSession();
		
		String seq = req.getParameter("seq"); 
		
		UserDAO dao = new UserDAO();
		
		ArrayList<UserDTO> list = dao.profile(seq);
		
		System.out.println(list.get(0).getName());
		System.out.println(list.get(0).getHobby());
		System.out.println(list.get(0).getPic());
		
		
		
		resp.setCharacterEncoding("UTF-8");
		
		JSONObject obj = new JSONObject();
		
		obj.put("name", list.get(0).getName());
		obj.put("hobby", list.get(0).getHobby());
		obj.put("pic", list.get(0).getPic());
		
		
		
		PrintWriter writer = resp.getWriter();
		
		writer.print(obj.toString());
		writer.close();
		dao.close();
	}
}