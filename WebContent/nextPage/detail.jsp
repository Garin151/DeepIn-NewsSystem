<%@page import="java.util.List"%>
<%@page import="com.news.po.News"%>
<%@page import="com.news.po.Comment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻详情</title>
 <link rel="stylesheet" type="text/css" href="../iconfont/iconfont.css">
 <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
 <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
 <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <style type="text/css">
 	.navBar {width: 100%;position: fixed;z-index:9999;height: 60px;background-color: #0D0D0D;display: flex;justify-content:center;align-items:center;}
	.icon_01 {font-size: 40px;color: #FFFFFF;position: absolute;left: 40px;transition: all 0.2s;}
	.icon_01:HOVER {transform: scale(1.2);color: #A70000;text-shadow: 0px 0px 20px #FFFFFF;}
	.icon_02 {font-size: 40px;color: #FFFFFF;position: absolute;left: 140px;transition: all 0.2s;}
	.icon_02:HOVER {transform: scale(1.2);color: #A70000;text-shadow: 0px 0px 20px #FFFFFF;}
	.icon_03 {font-size: 40px;color: #FFFFFF;position: absolute;left: 240px;transition: all 0.2s;}
	.icon_03:HOVER {transform: scale(1.2);color: #A70000;text-shadow: 0px 0px 20px #FFFFFF;}
	.indexTitle {font-size: 30px;letter-spacing: 12px;font-family: "华文新魏";color: #FFFFFF;position: absolute;right: 40px;}
 	.serchBar {width: 300px;height: 40px;position: absolute;left: 340px;}
 	.containDetail {min-height: 877px;height: auto;display: flex;justify-content:center;align-items:center;position: relative;}
 	.detailBox::-webkit-scrollbar {width : 10px;height: 1px;}
 	.detailBox::-webkit-scrollbar-thumb {border-radius: 10px;box-shadow:inset 0 0 5px rgba(0, 0, 0, 0.2);background: #535353;}
	.detailBox::-webkit-scrollbar-track {box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);border-radius: 10px;background: #ededed;}
 	.imgTitle {width: 90%;height: 400px;object-fit: cover;position: absolute;top: 240px;}
 	.TitleBox {width: 90%;height: 120px;position: relative;top: 40px;display: flex;justify-content:center;align-items:center;}
 	.Title {font-size: 60px;font-weight: bold;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical}
 	.balckline {width: 100%;height: 10px;display: flex;top: 200px;position: absolute;justify-content:center;align-items:center;}
 	.authorBox {width: 250px;height: 50px;position: absolute;top: 170px;right: 10px;}
 	.content {width:90%;font-size: 22px;white-space: pre-wrap;display: block;position: absolute;top: 670px;}
 	.detailBox {width:1200px;min-height: 877px;height: auto;left:200px;background-color: #FFFFFF;display: flex;align-items:center;flex-direction:column;position: absolute;overflow-x: hidden; overflow-y: auto;}
 	.commentBox {width: 450px;height: 840px;background-color: #000000;position: absolute;right: 34px;top: 20px;border-radius: 12px;display: flex;justify-content:center;align-items:center;}
 	.comList {position: absolute;top: 10px;font-size: 22px;font-weight: bold;left: 180px;color: #FFFFFF;}
 	.containComment {width: 95%;height: 82%;background-color: #FFFFFF;border-radius: 12px;position: absolute;top: 50px;overflow-x: hidden; overflow-y: auto;}
 	.containComment::-webkit-scrollbar {width : 10px;height: 1px;}
 	.containComment::-webkit-scrollbar-thumb {border-radius: 10px;box-shadow:inset 0 0 5px rgba(0, 0, 0, 0.2);background: #535353;}
	.containComment::-webkit-scrollbar-track {box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);border-radius: 10px;background: #ededed;}
 	.sendComment {width: 95%;height: 60px;position: absolute;bottom: 20px;border-radius: 12px;}
 	.oneComment {overflow: hidden;position: relative;width: 95%;height: 80px;background-color: #F2F2F2;border-radius: 12px;margin-bottom: 10px;display: flex;justify-content:center;align-items:center;}
 	.nickName {font-size: 16px;font-weight: bold;position: absolute;top: 2px;left: 10px;}
 	.comment {font-size: 16px;position: absolute;top: 2px;left: 10px;letter-spacing: 3px;white-space:pre-line;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical} 
 	
 </style>
 
 <script type="text/javascript">
 
 	function toSendPage() {
		window.location.href = "send.jsp"
	}
	
	function toIndexPage() {
		window.location.href = "newServlet?param=list"
	}
	
	function sendComment() {
		let str = $("#comment").val();
		if(str == "") {
			alert("评论不能为空哦")
		}else {
			document.getElementById("commentForm").submit();
		}
	}
	
	function toProfilePage(data) {
		window.location.href = "newServlet?param=profile&username=" + data
	}
	
	function toSearch() {
		let str = $("#searchNews").val();
		if(str == "") {
			alert("搜索不能为空！")
		}else {
			window.location.href = "newServlet?param=search&info=" + str
		}
	}
	
 </script>


</head>
<body>
	<%
		//判断用户是否登录
		String user = (String)session.getAttribute("user");
		if(user == null) {
			response.sendRedirect("../login.jsp");
			return;
		}
		//获得新闻展示的信息和评论
		int newsID = (int)request.getAttribute("newsID");
		News news = (News)request.getAttribute("newsDetail");
		List<Comment> commentlist = (List<Comment>)request.getAttribute("commentlist");
		
		
	
	%>
	
	<div class="navBar">
		<i class="iconfont iconmine_circle_fill icon_01" onclick="toProfilePage('<%=user %>')"></i>
		<i class="iconfont iconapp_fill icon_02" onclick="toIndexPage()"></i>
		<i class="iconfont iconplus_circl_fill icon_03" onclick="toSendPage()"></i>
		<div class="serchBar">
			<div class="input-group mb-3">
			  	<input type="text" id="searchNews" class="form-control" placeholder="搜索热点新闻" aria-describedby="basic-addon2">
			  	<div class="input-group-append">
			    	<button class="btn btn-outline-secondary" type="button" onclick="toSearch()">
			    		<i class="iconfont iconsearch" style="font-size: 16px;color: #FFFFFF;"></i>
			    	</button>
			  	</div>
			</div>
		</div>
		<p class="indexTitle">深度新闻网</p>
	</div>
	<div style="width: 100%;height: 60px;"></div>
	<div class="containDetail">
		<div class="detailBox">
			<div class="TitleBox">
				<p class="Title"><%=news.getTitle() %></p>
			</div>
			<div class="authorBox">
				<p>作者：<%=news.getAuthor() %>&nbsp&nbsp<%=news.getCreatTime() %></p>
			</div>
			<div class="balckline">
				<div style="width: 90%;height: 100%;background-color: #000000;"></div>
			</div>
			<img class="imgTitle" src="../static/news_img/<%=news.getImage()  %>">
			<div class="balckline" style="top: 670px!important;">
				<div style="width: 90%;height: 100%;background-color: #000000;"></div>
			</div>
			<p class="content">
				<%=news.getContent() %>
			</p>
		</div>
		<div class="commentBox">
			<p class="comList">评论列表</p>
			<div class="containComment" align="center">
				<div style="height: 10px;"></div>
				<%
					for(Comment com:commentlist) {
				%>
					<div class="oneComment">
						<p class="nickName"><%=com.getUser() %></p>
						<p class="comment">
							<%=com.getComment() %>
						</p>
					</div>
				<%
					}
				%>
			</div>
			<div class="sendComment">
				<form action="commentServlet?param=add&newsID=<%=newsID %>&username=<%=user %>" method="post" autocomplete="off" id="commentForm">
					<div class="input-group mb-3">
			  			<input type="text" id="comment" name="comment" class="form-control" style="height: 50px;" placeholder="发表看法……" aria-describedby="basic-addon2">
			  		<div class="input-group-append">
			    		<button class="btn btn-danger" type="button" onclick="sendComment()">评论</button>
			  		</div>
				</form>
			</div>
			</div>
		</div>
	</div>

</body>
</html>