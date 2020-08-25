package com.news.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.business.NewsService;
import com.news.po.News;

public class newServlet extends HttpServlet{
	
	private NewsService newsService = new NewsService();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String param = request.getParameter("param");
		
		
		if("list".equals(param)) {
			List<News> newsList = newsService.findAllFX();
			List<News> recommend = newsService.findRecommendFX();
			request.setAttribute("newsList", newsList);
			request.setAttribute("recommend", recommend);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		
		
	}
	
	

}
