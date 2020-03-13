package com.mypage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;

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
 * 숙소정보를 수정하는 서블릿
 *
 */
@WebServlet("/AccomEdit.do")
public class AccomEdit extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int size = 1024 * 1024 * 100;
		String path = req.getRealPath("/img");
		MultipartRequest multi = new MultipartRequest(req, path, size, "UTF-8", new DefaultFileRenamePolicy());
		AccomDAO dao = new AccomDAO();

		String capa = multi.getParameter("peoplenum");
		String bed = multi.getParameter("bednum");
		String bath = multi.getParameter("bathroomnum");
		String accomtype = multi.getParameter("lodgingrdo");
		String hostseq = multi.getParameter("hostseq");
		int piccount = Integer.parseInt(multi.getParameter("piccount"));
		String[] picname = new String[piccount];
		String[] picseq = new String[piccount];
		

//			if(multi.getFilesystemName("filename") == null) {
//				pic = multi.getParameter("picname");
//			} else {
//				pic = multi.getFilesystemName("filename");
//			}
//			pic = "/bnb/img/"+pic;
		
		
		
		
			
		for(int i=0;i<picname.length;i++) {
			picname[i] = multi.getFilesystemName("filename"+(i+1));
			picseq[i] = multi.getParameter("picseq"+(i+1));
		}
		
			
		
//		System.out.println(capa + "," + bed + "," + bath + "," + accomtype + "," + hostseq + "\n");
		for(int i=0;i<picname.length;i++) {
			System.out.println(picname[i]);
		}
		
			int result = dao.updateAccom(capa,accomtype,hostseq);
			 result = dao.updateConvenience(bed,bath,hostseq);
			result = dao.updateAcoomPic(picseq,picname);
			if(result != 0) {
				System.out.println("성공");
			} else {
				System.out.println("실패");
			}
			dao.close();
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/mypage/editclose.jsp");
			dispatcher.forward(req, resp);
	}

}
