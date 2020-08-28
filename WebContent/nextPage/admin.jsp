<%@page import="java.util.List"%>
<%@page import="com.news.po.News"%>
<%@page import="com.news.po.Show"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员页面</title>
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
 	.allUser {padding-top:50px;padding-bottom:40px;display:inline-block;width: 550px;height: 830px;background-color: #D7D7D7;position: relative;top: 20px;left: 300px;border-radius:12px;overflow-x: hidden;overflow-y: auto;}
 	.allUser::-webkit-scrollbar {width : 10px;height: 1px;}
	.allUser::-webkit-scrollbar-thumb {border-radius: 10px;box-shadow:inset 0 0 5px rgba(0, 0, 0, 0.2);background: #535353;}
	.allUser::-webkit-scrollbar-track {box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);border-radius: 10px;background: #ededed;}
 	.allNews {padding-top:50px;padding-bottom:40px;display:inline-block;width: 550px;height: 830px;background-color: #D7D7D7;position: relative;top: 20px;left: 500px;border-radius:12px;overflow-x: hidden;overflow-y: auto;}
 	.allNews::-webkit-scrollbar {width : 10px;height: 1px;}
	.allNews::-webkit-scrollbar-thumb {border-radius: 10px;box-shadow:inset 0 0 5px rgba(0, 0, 0, 0.2);background: #535353;}
	.allNews::-webkit-scrollbar-track {box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);border-radius: 10px;background: #ededed;}
 	.oneBar {width: 95%;height: 60px;margin-top: 10px;border-radius:10px;}
 	.xbbb {width: 446px;height: 60px;display: flex;position: relative;justify-content:center;align-items:center;}
 	.xbb {width: 366px;height: 60px;display: flex;position: relative;justify-content:center;align-items:center;}
 	.adTitle {font-size: 30px;position: absolute;top: 0px;}
 	.namm {font-size: 20px;font-weight: bold;position: absolute;left: 20px;}
 	.status {font-size: 18px;letter-spacing: 4px;position: absolute;right: 20px;color: #6F6F6F;}
 	.guanliUser {position: absolute;top: 5px;font-size: 24px;font-weight: bold;letter-spacing: 6px;margin-left: 180px;}
 	.btnpp {position: absolute;bottom: 24px;right: 906px;}
 	
 </style>
 <script type="text/javascript">
 
	function toDetailPage(idd) {
 		window.location.href = "nextPage/newServlet?param=detail&id=" + idd
	}
	
	function toBan(username,status) {
		if(status == "已禁用") {
			alert("账号："+username+" 已经被禁止了")
		}else {
			let r=confirm("确定要禁止  "+username+"  这个账号吗？");
			if(r==true) {
				window.location.href = "login?param=control&name=" + username +"&data=ban"
			}
			else{
				return 0;
			}
		}
	}
	
	function toActive(username,status) {
		if(status == "正常") {
			alert("账号："+username+" 已经是激活状态")
		}else {
			let r=confirm("确定要开放  "+username+"  这个账号吗？");
			if(r==true) {
				window.location.href = "login?param=control&name=" + username +"&data=active"
			}
			else{
				return 0;
			}
		}
		
	}
	
	function logOut() {
		window.location.href = "login.jsp"
	}
	
	function deleteNews(idd,title) {
		let r=confirm("确定要删除  "+title+"  这条新闻吗？");
		if(r==true) {
			window.location.href = "nextPage/newServlet?param=delete&page=admin&id=" + idd
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
		String user = (String)session.getAttribute("admin");
		if(user == "") {
			response.sendRedirect("../login.jsp");
			return;
		}
		
		//获取展示信息
		List<Show> showlist = (List<Show>)request.getAttribute("showlist");
		List<News> newslist = (List<News>)request.getAttribute("newslist");
	
	%>
	<div class="navBar">
		<i class="iconfont iconmine_circle_fill icon_01" onclick="toLogin()"></i>
		<i class="iconfont iconapp_fill icon_02" onclick="toLogin()"></i>
		<i class="iconfont iconplus_circl_fill icon_03" onclick="toLogin()"></i>
		<p class="indexTitle">深度新闻网</p>
	</div>
	<div style="width: 100%;height: 60px;"></div>
	<div class="allUser" align="center">
		<p class="guanliUser">用户管理列表</p>
		<%
			for(Show show:showlist) {
		%>
		<div class="oneBar">
			<div class="input-group mb-3" style="border-radius:12px;display: flex;position: relative;">
			  	<div class="list-group-item xbb">
			  		<p class="namm"><%=show.getName() %></p>
			  		<p class="status"><%=show.getStatus() %></p>
			  	</div>
			  	<div class="input-group-append">
			    	<button class="btn btn-danger" type="button" onclick="toBan('<%=show.getName() %>','<%=show.getStatus() %>')">
			    		BanID
			    	</button>
			    	<button class="btn btn-success" type="button" onclick="toActive('<%=show.getName() %>','<%=show.getStatus() %>')">
			    		ActID
			    	</button>
			  	</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
	<div class="allNews" align="center">
		<p class="guanliUser">新闻管理列表</p>
		<%
			for(News news:newslist) {
		%>
		<div class="oneBar">
			<div class="input-group mb-3">
			  	<div class="list-group-item xbbb" onclick="toDetailPage('<%=news.getId() %>')">
			  		<p class="namm"><%=news.getTitle() %></p>
			  	</div>
			  	<div class="input-group-append">
			    	<button class="btn btn-warning" type="button" onclick="deleteNews('<%=news.getId() %>','<%=news.getTitle() %>')">
			    		删除
			    	</button>
			  	</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
	<button class="btn btn-danger btnpp" onclick="logOut()">退出管理系统</button>

</body>
</html>