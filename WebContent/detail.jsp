<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻详情</title>
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
 	.commentBox {width: 450px;height: 840px;background-color: #D7D7D7;position: absolute;right: 34px;top: 20px;border-radius: 12px;display: flex;justify-content:center;align-items:center;}
 	.comList {position: absolute;top: 10px;font-size: 22px;font-weight: bold;left: 180px;}
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
	<div class="containDetail">
		<div class="detailBox">
			<div class="TitleBox">
				<p class="Title">腾讯收购百漫文化，探索动漫IP建构及产业结构转型</p>
			</div>
			<div class="authorBox">
				<p>作者：张佳林&nbsp&nbsp2020-08-22</p>
			</div>
			<div class="balckline">
				<div style="width: 90%;height: 100%;background-color: #000000;"></div>
			</div>
			<img class="imgTitle" src="static/picture/2026785.jpg">
			<div class="balckline" style="top: 670px!important;">
				<div style="width: 90%;height: 100%;background-color: #000000;"></div>
			</div>
			<p class="content">
		腾讯近日将完成对百漫文化的多数股权收购，双方将推动进一步的深度合作。2019年5月，百漫获得来自腾讯的数千万元A轮投资；此次增投完成后，腾讯将会拥有百漫文化的多数股权，百漫旗下的IP孵化和运营公司将与腾讯新文创生态进一步融合，继续探索动漫IP的构建及增值。

　　2016年开始，中国泛娱乐产业蓬勃发展，中国动漫产业融资额增长迅猛，大量资本涌入动漫产业，促进了行业迅猛发展。

　　从细分领域来看，2019年，动漫行业融资事件多集中于动画，漫画相对较少。融资内容方面，动画内容创作和动漫IP孵化所占比例较高，分别为27.5%和17.2%。此外，动漫衍生产品也占有17.2%的较高比例。
艾媒咨询分析师认为，《白蛇·缘起》《哪吒之魔童降世》等国产动画口碑和票房的成功，为动画电影市场注入强心针，而观众对优质动画电影的追捧也让资本方更加关注动画内容生产。于此同时，动漫衍生产品的融资事件的高比例说明动漫市场产业链下游不断完善，产业盈利模式更为多元化。

　　腾讯动漫是中国头部互联网动漫平台，成立于2012年。iiMedia Research(艾媒咨询) 数据显示，2017年腾讯共投资了9家动漫企业，其中糖人动漫获得两次投资，2018年投资次数减少至5次，其中哔哩哔哩获投3.2亿美元。
			</p>
		</div>
		<div class="commentBox">
			<p class="comList">评论列表</p>
			<div class="containComment" align="center">
				<div style="height: 10px;"></div>
				<%
					for(int i = 0;i < 20;i++) {
				%>
					<div class="oneComment">
						<p class="nickName">吃瓜群众01</p>
						<p class="comment">
						哈哈哈哈哈哈
						嘻嘻嘻，啊哈哈哈
						</p>
					</div>
				<%
					}
				%>
			</div>
			<div class="sendComment">
				<div class="input-group mb-3">
			  	<input type="text" class="form-control" style="height: 50px;" placeholder="发表看法……" aria-describedby="basic-addon2">
			  	<div class="input-group-append">
			    	<button class="btn btn-dark" type="button">评论</button>
			  	</div>
			</div>
			</div>
		</div>
	</div>

</body>
</html>