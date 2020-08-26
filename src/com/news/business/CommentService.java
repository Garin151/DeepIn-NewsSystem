package com.news.business;

import java.util.List;

import com.news.dao.CommentDao;
import com.news.po.Comment;

public class CommentService {
	private CommentDao commentDao = new CommentDao();
	
	//�õ��������۰�ʱ�併��
	public List<Comment> getAllCommentFX() {
		return commentDao.getAllComment();
	}
	
	//��������id������
	public List<Comment> getFromidFX(int id) {
		return commentDao.getFromId(id);
	}
	
	
}