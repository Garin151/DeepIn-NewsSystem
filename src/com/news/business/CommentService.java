package com.news.business;

import java.util.List;

import com.news.dao.CommentDao;
import com.news.po.Comment;

public class CommentService {
	private CommentDao commentDao = new CommentDao();
	
	//得到所有评论按时间降序
	public List<Comment> getAllCommentFX() {
		return commentDao.getAllComment();
	}
	
	//根据新闻id查评论
	public List<Comment> getFromidFX(int id) {
		return commentDao.getFromId(id);
	}
	
	
}
