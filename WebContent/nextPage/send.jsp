<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布新闻</title>
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
 	.sendWholeBox {width: 100%;min-height: 877px;height: auto;display: flex;justify-content:center;align-items:center;position: relative;}
 	.sendBox {width: 55%;height: 1355px;top: 70px;display: flex;flex-direction:column;align-items:center;position: relative;overflow-x: hidden;overflow-y: scroll;}
 	.sBtn_01 {position: absolute;bottom: 80px;right: 280px;}
 	.sBtn_02 {position: absolute;bottom: 80px;right: 170px;}
 	.oneForm {width:100%;height: 1355px;background-color: #F2F2F2;display: flex;flex-direction:column;justify-content:center;align-items:center;position: relative;}
 	.titleBar {width: 80%;height: 60px;background-color: #FFFFFF;position: relative;top: -500px;display: flex;align-items:center;}
 	.nTitle {letter-spacing:4px;font-size: 24px;font-weight: bold;width: 20%;height: 60px;line-height: 60px;display: inline-block;background-color: #000000;color: #FFFFFF;position: absolute;top: 0px;text-align: center;}
 	.inpp {padding: 10px 10px;letter-spacing:4px;font-size: 24px;width: 80%;height: 60px;display: inline-block;position: absolute;top: 0px;right: 0px;}
 	.imgBtn {position: absolute;top: 200px;}
 	.contentGG {position:absolute;top:380px;color: #FFFFFF;text-align: center;line-height: 60px;letter-spacing:4px;font-size: 24px;font-weight: bold;width: 150px;height: 60px;background-color: #000000;}
 	.textaa {width: 80%;height: 600px;background-color: #FFFFFF;position: absolute;top:500px;}
 	
 	
 </style>
 
<script type="text/javascript">
	function toSendPage() {
		window.location.href = "send.jsp";
	};
			
	function toIndexPage() {
		window.location.href = "newServlet?param=list";
	}
	
	function toSend() {
		let f = document.sendForm.action;
		let a = "&inputTitle=" + $("#inputTitle").val();
		let b = "&inputText=" + $("#inputText").val();
		document.sendForm.action = f + a + b;
		document.sendForm.submit();
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
	
	%>

	<div class="navBar">
		<i class="iconfont iconmine_circle_fill icon_01" onclick="toProfilePage('<%=user %>')"></i>
		<i class="iconfont iconapp_fill icon_02" onclick="toIndexPage()"></i>
		<i class="iconfont iconplus_circl_fill icon_03" onclick="toSendPage()"></i>
		<p class="indexTitle">深度新闻网</p>
	</div>
	<div class="sendWholeBox" align="center">
		<div class="sendBox">
			<form id="sendForm" name="sendForm" action="newServlet?param=add&username=<%=user %>" class="oneForm" enctype="multipart/form-data" autocomplete="off" method="post">
				<div class="titleBar">
					<p class="nTitle">新闻标题</p>
					<input type="text" class="inpp" id="inputTitle" name="inputTitle"/>
				</div>
				<div class="titleBar" style="top:-420px!important;">
					<p class="nTitle">新闻封面</p>
					<input class="inpp" type="file" name="newsImg"/>
				</div>
				<p class="contentGG">新闻正文</p>
				<textarea class="textaa" id="inputText" name="inputText"></textarea>
			</form>
			<button class="btn btn-outline-dark sBtn_01" onclick="toSend()">发布</button>
			<button class="btn btn-outline-danger sBtn_02" onclick="javascript:history.back(-1);">取消</button>
		</div>
	</div>
</body>
</html>