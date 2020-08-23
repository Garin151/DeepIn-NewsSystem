<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布新闻</title>
 <link rel="stylesheet" type="text/css" href="iconfont/iconfont.css">
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
 	.sendBox {width: 55%;min-height: 855px;height:auto;background-color: #F2F2F2;top: 70px;display: flex;flex-direction:column;align-items:center;position: relative;overflow-x: hidden;overflow-y: scroll;}
 	.sendTitle {width: 700px;height: 60px;position: absolute;top: 60px;}
 	.addImg {width: 700px;height: 300px;background-color: #FFFFFF;position: relative;top: 214px;display: flex;justify-content:center;align-items:center;}
 	.textIputarea {width: 700px;min-height: 500px;height: auto;position: absolute;top: 600px;margin-bottom: 100px;}
 	.sBtn_01 {position: absolute;bottom: -300px;right: 280px;}
 	.sBtn_02 {position: absolute;bottom: -300px;right: 170px;}
 	
 </style>
 
 <script type="text/javascript">
 	
 </script>

</head>
<body>
	<div class="navBar">
		<i class="iconfont iconmine_circle_fill icon_01"></i>
		<i class="iconfont iconapp_fill icon_02"></i>
		<i class="iconfont iconplus_circl_fill icon_03"></i>
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
	<div class="sendWholeBox" align="center">
		<div class="sendBox">
			<div class="sendTitle">
				<div class="input-group mb-3">
				    <div class="input-group-prepend">
				      	<span class="input-group-text" style="height: 60px;font-size:24px;font-weight: bold;">新闻标题：</span>
				    </div>
				    <input type="text" class="form-control" style="height: 60px;font-size:24px;">
				</div>
			</div>
			<button class="btn btn-outline-dark" style="position: absolute;top: 150px;">+新闻封面</button>
			<div class="addImg">
				<img src="" style="width: 100%;height: 100%;object-fit: cover;position: absolute;">
			</div>
			<div class="input-group mb-3">
			    <div class="input-group-prepend" style="position: absolute;top: 240px;left: 173px;">
			      	<span class="input-group-text" style="height: 60px;font-size:24px;font-weight: bold;">新闻正文：</span>
			    </div>
			</div>
			<textarea class="textIputarea" style="font-size: 20px;padding: 10px 10px;"></textarea>
			<button class="btn btn-outline-dark sBtn_01">发布</button>
			<button class="btn btn-outline-danger sBtn_02">取消</button>
		</div>
	</div>
</body>
</html>