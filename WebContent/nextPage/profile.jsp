<%@page import="java.util.List"%>
<%@page import="com.news.po.News"%>
<%@page import="com.news.po.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人主页</title>
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
 	.bodyBox {width: 100%;height: 877px;display: flex;}
 	.body_left {height: 100%;flex: 40;background-color: #FFFFFF;display: flex;justify-content:center;align-items:center;position: relative;}
 	.body_right {height: 100%;flex: 60;background-color: #F2F2F2;display: flex;flex-wrap:wrap;justify-content:space-around;align-items:flex-start;overflow-x: hidden; overflow-y: auto;}
 	.info {width: 400px;height: 500px;background-color: #F2F2F2;position: absolute;top: 50px;border-radius: 20px;}
 	.newItem {transition: all 0.2s;width: 310px;height: 360px;box-shadow: 6px 6px 10px #AAAAAA;background-color: #9B9B9B;border-radius: 8px;margin-top: 40px;}
 	.newItem:HOVER {transform: scale(1.05);color: #FF3535;box-shadow: 10px 10px 20px #AAAAAA;}
 	.itemTop {width: 100%;height: 60%;background-color: #9B9B9B;border-radius: 8px 8px 0px 0px;}
 	.itemBottom {width: 100%;height: 40%;border-top: #000000 solid 4px;background-color: #F1F1F1;border-radius: 0px 0px 8px 8px;position: relative;}
 	.itemImg {width: 100%;height: 100%;object-fit: cover;border-radius: 8px 8px 0px 0px;}
 	.itemTitle {margin-right: 5px;widht:100%;position: absolute;top: 20px;left: 10px;font-size: 20px;font-weight: bold;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical}
 	.iconView {position: absolute;bottom: 10px;right: 70px;font-size: 20px;color: #AAAAAA;}
 	.numView {position: absolute;bottom: 1px;right: 35px;font-size: 20px;line-height:20px;color: #AAAAAA;}
 	.delete {position: absolute;letter-spacing: 4px;font-weight: bold;bottom: 2px;left: 10px;font-size: 20px;line-height:20px;color: #D9001B;}
 	.iconn {width:90px;text-align:center;height: 40px;white-space: nowrap;font-size: 14px;margin-top: 20px;margin-left: 150px;}
 	.xxbtn {width:90px;text-align:center;height: 40px;white-space: nowrap;font-size: 14px;margin-top: 50px;margin-left: 150px;}
 	
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
	
	function logOut() {
		window.location.href = "../login.jsp"
	}
	
	function toSearch() {
		let str = $("#searchNews").val();
		if(str == "") {
			alert("搜索不能为空！")
		}else {
			window.location.href = "newServlet?param=search&info=" + str
		}
	}
	
	function deleteNews(idd,title,username) {
		let r=confirm("确定要删除  "+title+"  这条新闻吗？");
		if(r==true) {
			window.location.href = "newServlet?param=delete&page=profile&id=" + idd + "&name=" + username
		}
		else{
			return 0;
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
		
		User info = (User)request.getAttribute("userInfo");
		List<News> newslist = (List<News>)request.getAttribute("newsList");

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
	<div class="bodyBox">
		<div class="body_left">
			<div class="info">
				<ul class="list-group">
				  	<li class="list-group-item active">个人主页</li>
				  	<li class="list-group-item">用户：<%=info.getUser() %></li>
				  	<li class="list-group-item">性别：<%=info.getSex() %></li>
				  	<li class="list-group-item">生日：<%=info.getBirthday() %></li>
				  	<li class="list-group-item">城市：<%=info.getCity() %></li>
				</ul>
				<button class="btn btn-success xxbtn">修改资料</button>
				<button class="btn btn-danger iconn" onclick="logOut()">退出登录</button>
			</div>
		</div>
		<div class="body_right">
			<%
				for(News oneNews:newslist) {
			%>
				<div class="newItem" onclick="toDetailPage('<%=oneNews.getId() %>')">
					<div class="itemTop">
						<img src="../static/news_img/<%=oneNews.getImage() %>" class="itemImg">
					</div>
					<div class="itemBottom">
						<p class="itemTitle"><%=oneNews.getTitle() %></p>
						<i class="iconfont iconxingzhuang iconView"></i>
						<p class="numView"><%=oneNews.getNum_view() %></p>
						<p class="delete" onclick="deleteNews('<%=oneNews.getId() %>','<%=oneNews.getTitle() %>','<%=user %>');event.cancelBubble=true;">删除</p>
					</div>
				</div>
			<%
				}
			%>
		</div>
	</div>

</body>
</html>