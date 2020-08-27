<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员页面</title>
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
 	.allUser {padding-top:50px;padding-bottom:40px;display:inline-block;width: 550px;height: 830px;background-color: #D7D7D7;position: relative;top: 20px;left: 300px;border-radius:12px;overflow-x: hidden;overflow-y: auto;}
 	.allUser::-webkit-scrollbar {width : 10px;height: 1px;}
	.allUser::-webkit-scrollbar-thumb {border-radius: 10px;box-shadow:inset 0 0 5px rgba(0, 0, 0, 0.2);background: #535353;}
	.allUser::-webkit-scrollbar-track {box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);border-radius: 10px;background: #ededed;}
 	.allNews {padding-top:50px;padding-bottom:40px;display:inline-block;width: 550px;height: 830px;background-color: #D7D7D7;position: relative;top: 20px;left: 500px;border-radius:12px;overflow-x: hidden;overflow-y: auto;}
 	.allNews::-webkit-scrollbar {width : 10px;height: 1px;}
	.allNews::-webkit-scrollbar-thumb {border-radius: 10px;box-shadow:inset 0 0 5px rgba(0, 0, 0, 0.2);background: #535353;}
	.allNews::-webkit-scrollbar-track {box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);border-radius: 10px;background: #ededed;}
 	.oneBar {width: 95%;height: 60px;margin-top: 10px;border-radius:10px;}
 	.xbb {width: 446px;height: 60px;}
 	.adTitle {font-size: 30px;position: absolute;top: 0px;}
 	
 	
 </style>
 <script type="text/javascript">
 	function toSendPage() {
		window.location.href = "send.jsp"
	}
	
	function toIndexPage() {
		window.location.href = "newServlet?param=list"
	}
	
	function toLogin() {
		window.location.href = "../login.jsp"
	}
	
 </script>

</head>


<body>
	<%
		//判断用户是否登录
		Object obj = session.getAttribute("admin");
		if(obj == null) {
			response.sendRedirect("../login.jsp");
			return;
		}
	
	%>
	<div class="navBar">
		<i class="iconfont iconmine_circle_fill icon_01" onclick="toLogin()"></i>
		<i class="iconfont iconapp_fill icon_02" onclick="toLogin()"></i>
		<i class="iconfont iconplus_circl_fill icon_03" onclick="toLogin()"></i>
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
	<div class="allUser" align="center">
		<%
			for(int i = 0;i < 50;i++) {
		%>
		<div class="oneBar">
			<div class="input-group mb-3" style="border-radius:12px;">
			  	<div class="list-group-item xbb">
			  		哈哈哈
			  	</div>
			  	<div class="input-group-append">
			    	<button class="btn btn-danger" type="button">
			    		BanID
			    	</button>
			  	</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
	<div class="allNews" align="center">
		<%
			for(int i = 0;i < 50;i++) {
		%>
		<div class="oneBar">
			<div class="input-group mb-3">
			  	<div class="list-group-item xbb">
			  		哈哈哈
			  	</div>
			  	<div class="input-group-append">
			    	<button class="btn btn-warning" type="button">
			    		删除
			    	</button>
			  	</div>
			</div>
		</div>
		<%
			}
		%>
	</div>

</body>
</html>