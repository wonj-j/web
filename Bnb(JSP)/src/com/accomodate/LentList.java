package com.accomodate;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Spliterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.tools.DocumentationTool.Location;

@WebServlet("/accomodate/lentlist.do")
public class LentList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		String destination="";
		String checkin="";
		String checkout="";
		String child="";
		String adult="";
		int cnt=0;//인원수
		
		
		
		child=req.getParameter("child");
		adult=req.getParameter("adult");
	
		destination=req.getParameter("destination");
		checkin=req.getParameter("checkin");
		checkout=req.getParameter("checkout");
		
	
		
		
		
		//System.out.println(destination);
		AccomDAO accomdao=new AccomDAO();
		
		LocationDAO locationdao=new LocationDAO();
		LocationDTO dto = new LocationDTO(); 
		ArrayList<LocationDTO> localist = null;
		
		
		ArrayList<AccomDTO> piclist=new ArrayList<AccomDTO>();
	 
		if(destination!=null && checkin!=null && checkout!=null) {
			
		
			HashMap<String,String> map=new HashMap<String,String>();
			
			
				String s=" ";
				String[] address=destination.split(s);
			
			cnt=Integer.parseInt(child)+Integer.parseInt(adult);
				
			map.put("checkin", checkin);
			map.put("checkout",checkout);
			map.put("pcnt",cnt+"");
			
			
		
			//System.out.println(1);
		   localist=locationdao.getLocation(map,address); 
		   //System.out.println(2);
		   
		//   ArrayList<String> hlist=new ArrayList<String>;
		  
		  // for(LocationDTO dto1:localist) {
			  
			  // hlist.add(dto1.getHseq());   
			  
		 //  }
		 
		//piclist=accomdao.getpics(hlist);
		   
		   
		
		}
		
		 
		   	if(localist!=null) {
			   req.setAttribute("child",child);
				req.setAttribute("adult",adult);
				req.setAttribute("checkin",checkin);
				req.setAttribute("checkout",checkout);
				req.setAttribute("localist",localist);		
				req.setAttribute("piclist",piclist);
		   }
		 
		
		req.setAttribute("destination",destination);
		
		 
		 
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/accomodate/lentlist.jsp");
		dispatcher.forward(req, resp);
	}
}

