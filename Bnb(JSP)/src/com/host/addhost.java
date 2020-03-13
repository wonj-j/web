package com.host;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/host/addhost.do")
public class addhost extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/host/addhost.jsp");
		dispatcher.forward(req, resp);

	}
}
