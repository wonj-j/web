package com.tour;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/tour/comment.do")
/**
 * 
 * 댓글을 쓰는 데이터, 쓰고 난 후의 데이터를 관리하는 서블릿
 * @author 태성찬
 *
 */
public class TourComment extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HashMap<String, String> map = new HashMap<String, String>();
		TourCommentDTO dto = new TourCommentDTO();
		TourDAO dao = new TourDAO();
		
		String myimg = req.getParameter("myimg");
		String id = req.getParameter("id");
		String point = req.getParameter("point");
		String comment = req.getParameter("comment");
		String seq = req.getParameter("seq"); //보고 있는 글 번호
		int totalCount = 0;			//총 게시물 수
		int begin = 0;				//where절 시작 위치
		int end = 0;		
		int pageSize = 5;	
		int totalPage = 0;			//총 페이지 수
		int nowPage = 0;
		int n = 0;					//페이지 바
		int loop = 0;				//페이지 바
		int blockSize = 10;			//페이지 바
		
		String page = req.getParameter("page");
		if(page == null || page == "") nowPage = 1;
		else nowPage = Integer.parseInt(page);
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		

		map.put("begin", begin + "");
		map.put("end", end + "");
		
		totalCount = dao.getTotalCount(seq);
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		//페이지바 제작
				String pagebar = "";

				//14페이지
				//list.do?page=5
				//1 2 3 4 5 6 7 8 9 10

				//list.do?page=5
				//1 2 3 4 5 6 7 8 9 10
				
				//list.do?page=11
				//11 12 13 14 

				loop = 1; //루프 변수(while)
				n = ((nowPage - 1) / blockSize) * blockSize + 1; //출력되는 페이지 번호 사용
				
				pagebar += "<tr>\r\n" + 
						"				<td colspan=\"5\">\r\n" + 
						"					<ul class=\"pagination\">";
//				pagebar += "<tr>";
//				pagebar += "<td colspan='5'>";
				
//				for(int i=1; i<totalPage; i++) {
//					if(i == nowPage) {
//						pagebar += String.format(" <a href='#!'><b>%d</b></a> ", i);
//					} else {
//						pagebar += String.format(" <a href='/web/board/list.do?page=%d'>%d</a> ", i, i);
//						
//					}
//				}

				//이전 10페이지
				if(n == 1) {
					pagebar += String.format("<li class='disabled'><a href='#!' aria-label='Previous' id='previous' class='atag'> <span aria-hidden='true'>&laquo;</span></a></li>");
				} else {
					pagebar += String.format("<li><a href='#!' aria-label='Previous' id='previous' class='atag'> <span aria-hidden='true'>&laquo;</span></a></li>",n-1);
				}
				
				
				
				while (!(loop > blockSize || n > totalPage)) {
					if(n == nowPage) {
						pagebar += String.format(" <li class='active'><a href='#!' id='now' class='atag'>%d</a></li> ", n);
					} else {
						pagebar += String.format(" <li><a href='#!' id='now' class='atag'>%d</a></li> ", n);
						
					}
					
					loop++;
					n++;
				} //while

				//다음 10페이지
				if(n > totalPage) {
					pagebar += String.format(" <li class='disabled'><a href='#!' aria-label='Next' id='next' class='atag'><span aria-hidden='true'>&raquo;</span></a></li> ");
				} else {
					pagebar += String.format(" <li><a href='#!' aria-label='Next' id='next' class='atag'><span aria-hidden='true'>&raquo;</span></a></li> ", n);
				}
				
				pagebar += "	</ul>\r\n" + 
						"				</td>\r\n" + 
						"			</tr>";
		
		
		
		//---------------------------------------------------------------------------
		System.out.println(point);
		String point2 = point.substring(0,3);
		System.out.println(point2);
		int thread = dao.maxthread(seq);
		thread = thread+ 1000;

		dto.setThread(""+thread);
		dto.setMyimg(myimg);
		dto.setId(id);
		dto.setPoint(point2);
		dto.setComment(comment);
		
		dao.comment(dto,seq);
		
		
		dto = dao.comment2(seq, id);
		ArrayList<TourCommentDTO> list = dao.commentlist(seq, map);
		

				
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/xml");
		
		PrintWriter writer = resp.getWriter();
		
		writer.print("<?xml version='1.0' encoding='UTF-8'?>");
			writer.print("<list>");
			for(TourCommentDTO dto2 : list) {
				
				writer.print("<item>");
				writer.printf("<img>%s</img>", dto2.getMyimg());
				writer.printf("<id>%s</id>", dto2.getId());
				writer.printf("<comment>%s</comment>", dto2.getComment());
				writer.printf("<point>%s</point>", dto2.getPoint());
				writer.printf("<dates>%s</dates>", dto2.getDates().substring(0, 10));
				writer.printf("<depth>%s</depth>", dto2.getDepth());
				writer.print("</item>");
			}
			writer.printf("<totalcount>%s</totalcount>", "Comment"+" ("+totalCount+")");
			writer.printf("<pagebar><![CDATA[%s]]></pagebar>", pagebar);
			writer.print("</list>");
	
		writer.close();

	}
}
