<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
 <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
 <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
 <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
 
 <style type="text/css">
 	a:link {color: #AAAAAA;text-decoration:none;} /* 未被访问的链接 蓝色 */
	a:visited {color: #AAAAAA;text-decoration:none;} /* 已被访问过的链接 蓝色 */
	a:hover {color: #DC3545;text-decoration:none;} /* 鼠标悬浮在上的链接 蓝色 */
	a:active {color: #DC3545;text-decoration:none;} /* 鼠标点中激活链接 蓝色 */
 	.wholeBox {width: 100%;height: 937px;position: relative;display: flex;}
 	.leftBox {height: 100%;flex:35;background-color: #FFFFFF;position: relative;display: flex;justify-content:center;}
 	.rightBox {height: 100%;flex:65;background-color: #3D86EF;position: relative;}
 	.r_topBox {width: 100%;height:68%;background-color: #D3D3D3;position: relative;}
 	.r_bottomBox {width: 100%;height:32%;background-color: #0C0C0C;position: relative;display: flex;justify-content:center;align-items:center;}
 	.swiperMask {width: 100%;height: 100%;background-color: #1D1D1D;position: absolute;z-index: 99;opacity: 0.3;}
 	.carousel-inner img {width: 100%;height: 100%;object-fit: cover;}
 	.carousel-inner {width: 100%;height: 100%;}
 	.control {z-index: 9999}
 	.officialName {margin-left: 8px;font-family: "华文新魏";font-weight: bold;font-size: 74px;top: 200px;position: absolute;letter-spacing: 20px;}
 	.officialName_02 {font-family: "幼圆";font-size: 24px;top: 350px;position: absolute;letter-spacing: 8px;}
 	.carousel-item {width: 100%;height: 100%;}
 	.bottomtext {font-size: 18px;position: absolute;bottom: 30px;color: #FFFFFF;}
 	.s-title {position: absolute;font-size: 40px;top: -100px;line-height: 60px;white-space: pre-line;text-align: center;}
 	.btn_group {bottom: 300px;position: absolute;width: 60%;height: 100px;display: flex;justify-content: space-around;align-items:center;}
 	.Modalclose {width: 50px;height: 50px;position: absolute;z-index: 9999}
 	.loginForm {width: 100%;height: 200px;}
 	.registerForm {width: 100%;height: 500px;}
 	.findback {position: absolute;bottom: 10px;left: 20px;}
 	.adminPage {position: absolute;bottom: 10px;right: 20px;}
 	.loginContain {width: 100%;height: 60px;display: flex;justify-content:center;align-items:center;}
 </style>
 
 <script type="text/javascript">
 	$(document).ready(function() {
 		$("#login").click(function() {
 			console.log("登录")
 		});
 		
 		$("#register").click(function() {
 			console.log("注册")
 		});
 		
 		$("#loginForm").submit(function() {
 			let b = $("#inputPassword").val();
 			let a = $("#inputUser").val();
 			if(a == "" || b == "") {
 				alert("请填写正确的账号和密码")
 				return false;
 			}else {
 				return true;
			}
	 	});
 		
 	})
 	
 </script>
</head>
<body>
	<!-- 登录模态框 -->
		<div class="modal fade" style="z-index: 99999" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalTitle" aria-hidden="true">
		  	<div class="modal-dialog modal-dialog-centered" role="document">
		    	<div class="modal-content">
		      	<div class="modal-header">
		        	<h5 class="modal-title" id="loginModalTitle">登录账户</h5>
		        	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          	<span aria-hidden="true">&times;</span>
		        	</button>
		      	</div>
		      	<div class="modal-body" style="height: 200px;">
		        	<form id="loginForm" action="" autocomplete="off" method="post" class="loginForm">
		        		<div class="form-group row">
						  <label for="inputEmail3" class="col-sm-2 col-form-label">用户：</label>
						  <div class="col-sm-10">
						    <input type="text" class="form-control" id="inputUser">
						  </div>
						</div>
						<div class="form-group row">
						  <label for="inputPassword3" class="col-sm-2 col-form-label">密码：</label>
						  <div class="col-sm-10">
						    <input type="password" class="form-control" id="inputPassword">
						  </div>
						</div>
						<div>
							<div class="loginContain">
								<button type="submit" style="padding: 6px 20px;" class="btn btn-outline-dark">登录</button>
							</div>
						  	<div>
						  		<a class="findback" href="https://www.baidu.com">找回密码</a>
						  		<a class="adminPage" href="https://www.baidu.com">管理员登录</a>
						  	</div>
						</div>
		        	</form>
		      	</div>
		      	<div class="modal-footer"></div>
		    	</div>
		  	</div>
		</div>
	<!-- 模态框 -->
	
	<!-- 注册模态框 -->
		<div class="modal fade" style="z-index: 99999" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="loginModalTitle" aria-hidden="true">
		  	<div class="modal-dialog modal-dialog-centered" role="document">
		    	<div class="modal-content">
		      	<div class="modal-header">
		        	<h5 class="modal-title" id="registerModalTitle">注册账户</h5>
		        	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          	<span aria-hidden="true">&times;</span>
		        	</button>
		      	</div>
		      	<div class="modal-body" style="height: 360px;">
		        	<form id="registerForm" action="" autocomplete="off" method="post" class="registerForm">
		        		<div class="form-group row">
						  <label for="inputEmail3" class="col-sm-2 col-form-label">用户：</label>
						  <div class="col-sm-10">
						    <input type="text" class="form-control" id="inputUser">
						  </div>
						</div>
						<div class="form-group row">
						  <label for="inputPassword3" class="col-sm-2 col-form-label">密码：</label>
						  <div class="col-sm-10">
						    <input type="password" class="form-control" id="inputPassword">
						  </div>
						</div>
						<div class="form-group row">
						  <label for="inputPassword3" style="width: 100px!important;white-space: nowrap;" class="col-sm-2 col-form-label">确认密码：</label>
						  <div class="col-sm-10">
						    <input type="password" class="form-control" id="inputRepassword">
						  </div>
						</div>
						<div class="form-group row">
							<label for="exampleFormControlSelect1" style="margin-left: 16px;">找回密码：</label>
						    <select class="form-control" style="width: 383px!important;margin-left: 2px;" id="ControlSelect">
						      	<option>高中暗恋对象的名字 ？</option>
						      	<option>父亲的电话号码 ？</option>
						      	<option>母亲的电话号码 ？</option>
						      	<option>就读小学的名称 ？</option>
						    </select>
						</div>
						<div class="form-group row">
						  <label for="inputEmail3" class="col-sm-2 col-form-label">答案：</label>
						  <div class="col-sm-10">
						    <input type="text" class="form-control" id="inputAnswer">
						  </div>
						</div>
						<div>
							<div class="loginContain">
								<button type="submit" style="padding: 6px 20px;" class="btn btn-outline-danger">注册</button>
							</div>
						</div>
		        	</form>
		      	</div>
		      	<div class="modal-footer"></div>
		    	</div>
		  	</div>
		</div>
	<!-- 模态框 -->
	<div class="wholeBox">
		<div class="leftBox">
			<p class="officialName">深度新闻网</p>
			<p class="officialName_02">有深度，有情怀，有热点</p>
			<div class="btn_group">
				<button type="button" id="login" data-toggle="modal" data-target="#loginModal" class="btn btn-outline-dark" style="padding: 10px 25px;">登录</button>
				<button type="button" id="register" data-toggle="modal" data-target="#registerModal" class="btn btn-outline-danger" style="padding: 10px 25px;">注册</button>
			</div>
		</div>
		<div class="rightBox">
			<div id="loginSwiper" class="carousel slide r_topBox" data-pause=false data-ride="carousel" data-interval="4000">
				 <div class="swiperMask"></div>
				 <ul class="carousel-indicators control">
				 	<li data-target="#loginSwiper" data-slide-to="0" class="active"></li>
				  	<li data-target="#loginSwiper" data-slide-to="1"></li>
				  	<li data-target="#loginSwiper" data-slide-to="2"></li>
				 </ul>			

				<div class="carousel-inner">
				  	<div class="carousel-item active">;
				    	<img src="static/picture/309736.jpg">
				    	<div class="carousel-caption d-none d-md-block" style="z-index: 999;">
				          	<p class="s-title">深圳最新规划透露：出门10分钟有轨道交通，新增住房170万套</p>
				          	<p class="s-content">Shenzhen's latest planning revealed: 10 minutes out of the door rail transit, 1.7 million new housing</p>
				        </div>
				  	</div>
				  	<div class="carousel-item">
				    	<img src="static/picture/2018593.jpg">
				    	<div class="carousel-caption d-none d-md-block" style="z-index: 999;">
				          	<p class="s-title">中国动漫文娱产业投资攀升，或将推动产业升级</p>
				          	<p class="s-content">China's animation and entertainment industry investment is rising, or will promote industrial upgrading</p>
				        </div>
				  	</div>
				  	<div class="carousel-item">
				    	<img src="static/picture/2009490.jpg">
				    	<div class="carousel-caption d-none d-md-block" style="z-index: 999;">
				          	<p class="s-title">迈凯伦亚洲官方体验中心，2024年将落户杭州</p>
				          	<p class="s-content">The official Asia experience center of McLaren will be settled in Hangzhou in 2024</p>
				        </div>
				  	</div>
				</div>
			</div>
			<div class="r_bottomBox">
				<p class="bottomtext">Copyright© 2020-2050 DeepIn News All Right Reserved | 中华人民共和国增值电信业务经营许可证： 粤SB-25041 粤ICP备14250SB号</p>
			</div>
		</div>
	</div>
</body>
</html>