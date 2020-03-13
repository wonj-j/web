package com.mypage;

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
 * @author 정원재
 * 예약 메시지 내용을 가져오는 서블릿
 */
@WebServlet("/managemsg.do")
public class Managemsg extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userseq = req.getParameter("userseq");
		String hostseq = req.getParameter("hostseq");
		String bookseq = req.getParameter("bookseq");
		String userid = req.getParameter("userid");
		String hostid = req.getParameter("hostid");
		String caller = req.getParameter("caller");
		String msg = req.getParameter("msg");
		
		HostDAO dao = new HostDAO();
		
		
		int result = dao.insertMsg(userseq,hostseq,msg,caller,bookseq);
		
		if(result >= 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		ArrayList<HostDTO> list = dao.getMsglist(hostseq,userseq);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		PrintWriter writer = resp.getWriter();
		
		JSONArray array = new JSONArray();
		for(HostDTO dto : list) {
			//레코드 1개 -> DTO 1개 -> JSONObject 1개
			JSONObject obj = new JSONObject();
			
			if(dto.getMsgcaller().equals("g")) {
				obj.put("id", userid);
				obj.put("msg", dto.getMsgcontent());
			} else if(dto.getMsgcaller().equals("h")) {
				obj.put("id", hostid);
				obj.put("msg", dto.getMsgcontent());
			}	
			array.add(obj);
		}
		
		//System.out.println(array.toString());
		//System.out.println(array.toJSONString());
		
		writer.print(array.toString());
//		
		writer.close();
	}
}
