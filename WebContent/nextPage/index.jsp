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
 	.numView {position: absolute;bottom: 1px;right: 35px;font-size: 20px;line-height:20px;color: #AAAAAA;}
 	.recomment {position: absolute;top: 70px;font-size: 50px;font-weight: bold;color: #E14040;}
 </style>
 
 <script type="text/javascript">
 	
 </script>
 
</head>
<body>
	<%
		//判断用户是否登录
		Object obj = session.getAttribute("userInfo");
		if(obj == null) {
			response.sendRedirect("../login.jsp");
			return;
		}
	
	%>

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
	<div class="bodyBox">
		<div class="body_left">
			<div class="TitleBox">
				<p class="Title">腾讯收购百漫文化，探索动漫IP建构及产业结构转型</p>
			</div>
			<div class="authorBox">
				<p>作者：张佳林&nbsp&nbsp2020-08-22</p>
			</div>
			<div class="balckline">
				<div style="width: 90%;height: 100%;background-color: #000000;"></div>
			</div>
			<img class="imgTitle" src="../static/picture/2026785.jpg">
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
		<div class="body_right">
			<p class="recomment">NEWS - RECOMMEND</p>
			<%
				for(int i = 0;i < 5;i++) {
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