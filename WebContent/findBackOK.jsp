<%@page import="com.news.po.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
 <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
 <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <style type="text/css">
	.wholeBody {width: 100%;height: 907px;display: flex;background-color: #F2F2F2;justify-content:center;align-items:center;}
	.bbbox {position: relative;width: 600px;height: 600px;background-color: #FFFFFF;border-radius: 12px;display: flex;justify-content:center;align-items:center;}
	.errorTip {position: absolute;top: 70px;font-size: 32px;font-weight: bold;color: #FF2727;letter-spacing: 8px;}
	.tipss {position: absolute;top: 200px;font-size: 26px;font-weight: bold;letter-spacing: 8px;}
	.btnnn {position: absolute;bottom: 80px;}
	
 </style>
 
 <script type="text/javascript">
 	
 	function backLogin() {
 		window.location.href = "login.jsp"
	}
 	
 </script>
 
<title>找回密码成功</title>
</head>
<body>
	<div class="wholeBody">
		<div class="bbbox">
			<p class="errorTip">找回密码成功</p>
			<p class="tipss"><%=request.getAttribute("user") %></p>
			<p class="tipss" style="top: 270px!important;"><%=request.getAttribute("password") %></p>
			<button class="btn btn-success btnnn" onclick="backLogin()">返回登录</button>
		</div>
	</div>
</body>
</html>