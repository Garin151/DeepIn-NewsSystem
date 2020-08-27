<%@page import="java.util.List"%>
<%@page import="com.news.po.News"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>深度新闻网首页</title>
 <link rel="stylesheet" type="text/css" href="../iconfont/iconfont.css">
 <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
 <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
 <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

 <style type="text/css">
 	a:link {color: #AAAAAA;text-decoration:none;} /* 未被访问的链接 蓝色 */
	a:visited {color: #AAAAAA;text-decoration:none;} /* 已被访问过的链接 蓝色 */
	a:hover {color: #DC3545;text-decoration:none;} /* 鼠标悬浮在上的链接 蓝色 */
	a:active {color: #DC3545;text-decoration:none;} /* 鼠标点中激活链接 蓝色 */
	.navBar {width: 100%;position: fixed;z-index:9999;height: 60px;background-color: #0D0D0D;display: flex;justify-content:center;align-items:center;}
	.icon_01 {font-size: 40px;color: #FFFFFF;position: absolute;left: 40px;transition: all 0.2s;}
	.icon_01:HOVER {transform: scale(1.2);color: #A70000;text-shadow: 0px 0px 20px #FFFFFF;}
	.icon_02 {font-size: 40px;color: #FFFFFF;position: absolute;left: 140px;transition: all 0.2s;}
	.icon_02:HOVER {transform: scale(1.2);color: #A70000;text-shadow: 0px 0px 20px #FFFFFF;}
	.icon_03 {font-size: 40px;color: #FFFFFF;position: absolute;left: 240px;transition: all 0.2s;}
	.icon_03:HOVER {transform: scale(1.2);color: #A70000;text-shadow: 0px 0px 20px #FFFFFF;}
	.indexTitle {font-size: 30px;letter-spacing: 12px;font-family: "华文新魏";color: #FFFFFF;position: absolute;right: 40px;}
 	.serchBar {width: 300px;height: 40px;position: absolute;left: 340px;}
 	.bodyBox {width: 100%;height: 877px;display: flex;}
 	.body_left {height: 100%;flex: 60;background-color: #FFFFFF;display: flex;align-items:center;flex-direction:column;position: relative;overflow-x: hidden; overflow-y: auto;}
 	.body_left::-webkit-scrollbar {width : 10px;height: 1px;}
	.body_left::-webkit-scrollbar-thumb {border-radius: 10px;box-shadow:inset 0 0 5px rgba(0, 0, 0, 0.2);background: #535353;}
	.body_left::-webkit-scrollbar-track {box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);border-radius: 10px;background: #ededed;}
 	.body_right {padding-top: 60px;height: 100%;flex: 40;background-color: #F2F2F2;display: flex;flex-wrap:wrap;justify-content:space-around;align-items:flex-start;overflow-x: hidden; overflow-y: auto;}
 	.body_right::-webkit-scrollbar {width : 10px;height: 1px;}
	.body_right::-webkit-scrollbar-thumb {border-radius: 10px;box-shadow:inset 0 0 5px rgba(0, 0, 0, 0.2);background: #535353;}
	.body_right::-webkit-scrollbar-track {box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);border-radius: 10px;background: #ededed;}
 	.imgTitle {width: 90%;height: 400px;object-fit: cover;position: absolute;top: 240px;}
 	.TitleBox {width: 90%;height: 120px;position: relative;top: 40px;display: flex;justify-content:center;align-items:center;}
 	.Title {font-size: 60px;font-weight: bold;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical}
 	.balckline {width: 100%;height: 10px;display: flex;top: 200px;position: absolute;justify-content:center;align-items:center;}
 	.authorBox {width: 250px;height: 50px;position: absolute;top: 170px;right: 10px;}
 	.content {width:90%;font-size: 22px;white-space: pre-wrap;display: block;position: absolute;top: 670px;}
 	.newItem {z-index:9999;transition: all 0.2s;width: 310px;height: 360px;box-shadow: 6px 6px 10px #AAAAAA;background-color: #9B9B9B;border-radius: 8px;margin-top: 40px;}
 	.newItem:HOVER {transform: scale(1.05);color: #FF3535;box-shadow: 10px 10px 20px #AAAAAA;}
 	.itemTop {width: 100%;height: 60%;background-color: #9B9B9B;border-radius: 8px 8px 0px 0px;}
 	.itemBottom {width: 100%;height: 40%;border-top: #000000 solid 4px;background-color: #F1F1F1;border-radius: 0px 0px 8px 8px;position: relative;}
 	.itemImg {width: 100%;height: 100%;object-fit: cover;border-radius: 8px 8px 0px 0px;}
 	.itemTitle {margin-right: 5px;widht:100%;position: absolute;top: 20px;left: 10px;font-size: 20px;font-weight: bold;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical}
 	.iconView {position: absolute;bottom: 10px;right: 60px;font-size: 20px;color: #AAAAAA;}
 	.numView {position: absolute;bottom: 1px;right: 25px;font-size: 20px;line-height:20px;color: #AAAAAA;}
 	.recomment {position: absolute;top: 70px;font-size: 50px;font-weight: bold;color: #E14040;}
 </style>
 
 <script type="text/javascript">
 
 	function toSendPage() {
 		window.location.href = "send.jsp"
	}
 	
 	function toIndexPage() {
 		window.location.href = "newServlet?param=list"
	}
 	
 	function toDetailPage(idd) {
 		window.location.href = "newServlet?param=detail&id=" + idd
	}
 	
 	function toProfilePage(data) {
 		window.location.href = "newServlet?param=profile&username=" + data
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
		//获得新闻展示列表
		List<News> newslist = (List<News>)request.getAttribute("newsList");
		News recommend = (News)request.getAttribute("recommend");
	
	%>

	<div class="navBar">
		<i class="iconfont iconmine_circle_fill icon_01" onclick="toProfilePage('<%=user %>')"></i>
		<i class="iconfont iconapp_fill icon_02" onclick="toIndexPage()"></i>
		<i class="iconfont iconplus_circl_fill icon_03" onclick="toSendPage()"></i>
		<div class="serchBar">
			<div class="input-group mb-3">
			  	<input type="text" class="form-control" placeholder="搜索热点新闻" aria-describedby="basic-addon2">
			  	<div class="input-group-append">
			    	<button class="btn btn-outline-secondary" type="button">
			    		<i class="iconfont iconsearch" style="font-size: 16px;color: #FFFFFF;"></i>
			    	</button>
			  	</div>
			</div>
		</div>
		<p class="indexTitle">深度新闻网</p>
	</div>
	<div style="width: 100%;height: 60px;"></div>
	<div class="bodyBox">
		<div class="body_left">
			<div class="TitleBox">
				<p class="Title"><%=recommend.getTitle() %></p>
			</div>
			<div class="authorBox">
				<p>作者：<%=recommend.getAuthor() %>&nbsp&nbsp<%=recommend.getCreatTime() %></p>
			</div>
			<div class="balckline">
				<div style="width: 90%;height: 100%;background-color: #000000;"></div>
			</div>
			<img class="imgTitle" src="../static/picture/2026785.jpg">
			<div class="balckline" style="top: 670px!important;">
				<div style="width: 90%;height: 100%;background-color: #000000;"></div>
			</div>
			<p class="content">
				<%=recommend.getContent() %>
			</p>
		</div>
		<div class="body_right">
			<p class="recomment">NEWS - RECOMMEND</p>
			<%
				for(News news:newslist) {
			%>
				<div class="newItem" onclick="toDetailPage(<%=news.getId() %>)">
					<div class="itemTop">
						<img src="../static/news_img/<%=news.getImage() %>" class="itemImg">
					</div>
					<div class="itemBottom">
						<p class="itemTitle"><%=news.getTitle() %></p>
						<i class="iconfont iconxingzhuang iconView"></i>
						<p class="numView"><%=news.getNum_view() %></p>
					</div>
				</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>