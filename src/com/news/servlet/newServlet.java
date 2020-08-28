package com.news.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.news.business.CommentService;
import com.news.business.NewsService;
import com.news.business.userService;
import com.news.po.Comment;
import com.news.po.News;
import com.news.po.User;

@WebServlet(name = "UploadServlet",value = "/uploadServlet")
@MultipartConfig

public class newServlet extends HttpServlet{
	
	private NewsService newsService = new NewsService();
	private userService userservice = new userService();
	private CommentService commentService = new CommentService();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String param = request.getParameter("param");
		
		
		if("list".equals(param)) {
			List<News> newsList = newsService.findAllFX();
			News recommend = newsService.findRecommendFX();
			request.setAttribute("newsList", newsList);
			request.setAttribute("recommend", recommend);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}else if("detail".equals(param)) {
			int itemId = Integer.parseInt(request.getParameter("id"));
			newsService.updateViewFX(itemId);
			News one = newsService.findFromidFX(itemId);
			List<Comment> commentlist = commentService.getFromidFX(itemId);
			request.setAttribute("newsID", itemId);
			request.setAttribute("newsDetail", one);
			request.setAttribute("commentlist", commentlist);
			request.getRequestDispatcher("detail.jsp").forward(request, response);
			
		}else if("add".equals(param)) {
			Part part = request.getPart("newsImg");
			int num_view = 0;
			String imgPath = request.getSession().getServletContext().getRealPath("/static/news_img");
			String uuid = UUID.randomUUID().toString().replaceAll("-", "") + ".jpg";
			part.write(imgPath + "\\" + uuid);
			String author = request.getParameter("username");
			String title = request.getParameter("inputTitle");
			String content = request.getParameter("inputText");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date nowDay = new Date();
			String creatTime = sdf.format(nowDay);
			newsService.addNewsFX(author, creatTime, title, content, uuid);
			response.sendRedirect("newServlet?param=list");
			
		}else if("profile".equals(param)){
			String user = request.getParameter("username");
			User item = userservice.getInfoFX(user);
			List<News> newsList = newsService.authorNewsFX(user);
			request.setAttribute("newsList", newsList);
			request.setAttribute("userInfo", item);
			request.getRequestDispatcher("profile.jsp").forward(request, response);
			
		}else if("search".equals(param)){
			String info = request.getParameter("info");
			List<News> newsList = newsService.searchNewsFX(info);
			request.setAttribute("newsList", newsList);
			request.getRequestDispatcher("search.jsp").forward(request, response);
			
		}else if ("delete".equals(param)) {
			String page = request.getParameter("page");
			int id = Integer.parseInt(request.getParameter("id"));
			newsService.deleteNewsFX(id);
			if("admin".equals(page)) {
				response.sendRedirect("../login?param=adminOK");
			}else if ("profile".equals(page)) {
				String name = request.getParameter("name");
				response.sendRedirect("newServlet?param=profile&username=" + name);
			}
			
		}
		
		
		
	}
	
	

}
