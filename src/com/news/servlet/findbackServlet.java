package com.news.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.dao.FindBackDao;
import com.news.po.User;

public class findbackServlet extends HttpServlet{
	private FindBackDao FindBackDao = new FindBackDao();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String findBack = request.getParameter("findBack");
		String inputAnswer = request.getParameter("inputAnswer");
		User one = FindBackDao.findBack(findBack, inputAnswer);
		String name = one.getUser();
		if(name == "") {
			response.sendRedirect("error.jsp");
		}else {
			request.setAttribute("user", one.getUser());
			request.setAttribute("password", one.getPassword());
			request.getRequestDispatcher("findBackOK.jsp").forward(request, response);
		}
	}

}
