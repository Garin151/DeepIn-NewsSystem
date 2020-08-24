package com.news.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.business.AdminService;
import com.news.business.RegisterService;
import com.news.business.userService;
import com.news.po.User;

public class loginServlet extends HttpServlet{
	
	private userService userservice = new userService();
	private RegisterService registerService = new RegisterService();
	private AdminService adminService = new AdminService();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String param = request.getParameter("param");
		
		if("login".equals(param)) {
			String inputUser = request.getParameter("inputUser");
			String inputPassword = request.getParameter("inputPassword");
			User user = new User(inputUser, inputPassword);
			boolean data = userservice.legal(user);
			if(data == true) {
				request.getSession().setAttribute("userInfo", user);
				response.sendRedirect("nextPage/index.jsp");
			}else {
				response.sendRedirect("error.jsp");
			}
			
		}else if("register".equals(param)){
			String inputUser = request.getParameter("inputUser");
			String inputPassword = request.getParameter("inputPassword");
			String findBack = request.getParameter("findBack");
			String inputAnswer = request.getParameter("inputAnswer");
			registerService.registerUser(inputUser, inputPassword, findBack, inputAnswer);
			response.sendRedirect("registerOK.jsp");
		}else if("admin".equals(param)){
			String inputUser = request.getParameter("inputUser");
			String inputPassword = request.getParameter("inputPassword");
			User admin = new User(inputUser, inputPassword);
			boolean data = adminService.isAdmin(inputUser, inputPassword);
			if(data == true) {
				request.getSession().setAttribute("admin", admin);
				response.sendRedirect("nextPage/admin.jsp");
			}else {
				response.sendRedirect("error.jsp");
			}
		}
		
	}

}
