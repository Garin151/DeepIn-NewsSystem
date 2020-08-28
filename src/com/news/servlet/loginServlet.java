package com.news.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.business.AdminService;
import com.news.business.NewsService;
import com.news.business.RegisterService;
import com.news.business.userService;
import com.news.po.News;
import com.news.po.User;
import com.news.po.Show;

public class loginServlet extends HttpServlet{
	
	private userService userservice = new userService();
	private RegisterService registerService = new RegisterService();
	private AdminService adminService = new AdminService();
	private NewsService newsService = new NewsService();

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
				boolean value = userservice.isBanFX(inputUser, inputPassword);
				if(value == true) {
					response.sendRedirect("ban.jsp");
				}else {
					request.getSession().setAttribute("user", inputUser);
					response.sendRedirect("nextPage/newServlet?param=list");
				}
			}else {
				String str = "’À∫≈√‹¬Î¥ÌŒÛ£°";
				request.setAttribute("message", str);
				request.getRequestDispatcher("error.jsp").forward(request, response);
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
				request.getSession().setAttribute("admin", inputUser);
				List<Show> showlist = userservice.getAllShowFX();
				List<News> newslist = newsService.findAllFX();
				request.setAttribute("showlist", showlist);
				request.setAttribute("newslist", newslist);
				request.getRequestDispatcher("/nextPage/admin.jsp").forward(request, response);
				
			}else {
				String str = "’À∫≈√‹¬Î¥ÌŒÛ£°";
				request.setAttribute("message", str);
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
			
		}else if ("control".equals(param)) {
			String name = request.getParameter("name");
			String data = request.getParameter("data");
			userservice.banorActUserFX(name, data);
			response.sendRedirect("login?param=adminOK");
			
		}else if ("adminOK".equals(param)) {
			List<Show> showlist = userservice.getAllShowFX();
			List<News> newslist = newsService.findAllFX();
			request.setAttribute("showlist", showlist);
			request.setAttribute("newslist", newslist);
			request.getRequestDispatcher("/nextPage/admin.jsp").forward(request, response);
		}
		
		
		
	}

}
