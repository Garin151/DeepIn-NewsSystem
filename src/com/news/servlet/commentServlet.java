package com.news.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.news.business.CommentService;

public class commentServlet extends HttpServlet{
	private CommentService commentService = new CommentService();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String param = request.getParameter("param");
		if("add".equals(param)) {
			String user = request.getParameter("username");
			String idd = request.getParameter("newsID");
			int newsID = Integer.parseInt(request.getParameter("newsID"));
			String comment = request.getParameter("comment");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date nowDay = new Date();
			String creatTime = sdf.format(nowDay);
			commentService.addComFX(newsID, user, comment, creatTime);
			response.sendRedirect("newServlet?param=detail&id="+ idd);
			
		}else if("delete".equals(param)){
			
		}
	}

}
