<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索页面</title>
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
 	.searchComtain {width: 100%;min-height: 877px;height: auto;}
 	.BBox {width: 70%;padding-top: 40px;min-height: 837px;height:auto;background-color: #F2F2F2;position: relative;top: 40px;display: flex;flex-wrap:wrap;justify-content:space-around;align-items:flex-start;}
 	.newItem {margin: 40px 20px;transition: all 0.2s;width: 310px;height: 360px;box-shadow: 6px 6px 10px #AAAAAA;background-color: #9B9B9B;border-radius: 8px;margin-top: 40px;}
 	.newItem:HOVER {transform: scale(1.05);color: #FF3535;box-shadow: 10px 10px 20px #AAAAAA;}
 	.itemTop {width: 100%;height: 60%;background-color: #9B9B9B;border-radius: 8px 8px 0px 0px;}
 	.itemBottom {width: 100%;height: 40%;border-top: #000000 solid 4px;background-color: #F1F1F1;border-radius: 0px 0px 8px 8px;position: relative;}
 	.itemImg {width: 100%;height: 100%;object-fit: cover;border-radius: 8px 8px 0px 0px;}
 	.itemTitle {margin-right: 5px;widht:100%;position: absolute;top: 20px;left: 10px;font-size: 20px;font-weight: bold;overflow : hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical}
 	.iconView {position: absolute;bottom: 10px;right: 60px;font-size: 20px;color: #AAAAAA;}
 	.numView {position: absolute;bottom: 1px;right: 35px;font-size: 20px;line-height:20px;color: #AAAAAA;}
 	.hjk {font-size: 26px;position: absolute;top: 20px;font-weight: bold;}
 	
 	
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
	<div style="width: 100%;height: 60px;"></div>
	<div class="searchComtain" align="center">
		<div class="BBox">
			<p class="hjk">搜索结果</p>
			<%
				for(int i = 0;i < 9;i++) {
			%>
				<div class="newItem">
					<div class="itemTop">
						<img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598106779628&di=be1d5ff13a18da5770318272601b8737&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201611%2F12%2F20161112002524_dAyWP.jpeg" class="itemImg">
					</div>
					<div class="itemBottom">
						<p class="itemTitle">中国动漫文娱产业升级，资本投资热度上涨</p>
						<i class="iconfont iconxingzhuang iconView"></i>
						<p class="numView">12</p>
					</div>
				</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>