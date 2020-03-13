package com.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * 
 * @author 정원재
 * 수정할 유저 정보를 가져오는 서블릿
 */
@WebServlet("/checkinfo.do")
public class Checkinfo extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		System.out.println("들어오기성공:20라인");
		int size = 1024*1024*100;
		String path = req.getRealPath("/img");
		String pic = "";
		MultipartRequest multi = new MultipartRequest(	
					req,
					path,
					size,
					"UTF-8",
					new DefaultFileRenamePolicy());
		UserDTO dto = new UserDTO();
		
		dto.setSeq(multi.getParameter("seq"));
		dto.setPw(multi.getParameter("pw"));
		
		String tel1 = multi.getParameter("tel1");
		String tel2 = multi.getParameter("tel2");
		String tel3 = multi.getParameter("tel3");
		
		String imgpath = "";
		
		dto.setTel(tel1+"-"+tel2+"-"+tel3);
		dto.setEmail(multi.getParameter("inputemail"));
		dto.setHobby(multi.getParameter("hobby"));
		
		if(multi.getFilesystemName("pic") == null) {
			pic = multi.getParameter("picname");
		} else {
			pic = multi.getFilesystemName("pic");
			imgpath = "/bnb/img/";
		}
		
		dto.setPic(imgpath+pic);
		

		req.setAttribute("dto", dto);
		
		
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/checkinfo.jsp");
		dispatcher.forward(req, resp);
	}
}
