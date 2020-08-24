<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>找回密码</title>
 <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
 <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
 <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <style type="text/css">
 	.bbody {width: 100%;height: 937px;position: relative;background-color: #D7D7D7;display: flex;justify-content:center;align-items:center;}
 	.findBox {width: 500px;height: 600px;background-color: #FFFFFF;border-radius:12px;position: relative;}
 	.youfind {font-size: 30px;font-weight: bold;margin-top: 20px;}
 	.fghhi {width: 80%;height: 80%;}
 
 
 </style>

 <script type="text/javascript">
 	
 </script>

</head>
<body>
	<div class="bbody">
		<div class="findBox" align="center">
			<p class="youfind">填写你的验证问题</p>
			<form action="findback" method="post" autocomplete="off" class="fghhi">
				<div class="form-group row">
					<label for="exampleFormControlSelect1" style="margin-left: 175px;">验证问题：</label>
				    <select style="width: 400px;margin-left: 15px;" onchange="ChangeSelect()" class="form-control" style="width: 383px!important;margin-left: 2px;" name="findBack" id="ControlSelect">
				      	<option value="高中暗恋对象的名字">高中暗恋对象的名字 ？</option>
				      	<option value="父亲的电话号码">父亲的电话号码 ？</option>
				      	<option value="母亲的电话号码">母亲的电话号码 ？</option>
				      	<option value="就读小学的名称">就读小学的名称 ？</option>
				    </select>
				</div>
				<div class="form-group">
				    <label for="exampleInputPassword1">答案：</label>
				    <input type="text" class="form-control" name="inputAnswer" id="inputAnswer">
				 </div>
				<div>
					<div class="loginContain">
						<button type="submit" style="padding: 6px 20px;margin-top: 200px;" class="btn btn-outline-dark">确定</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>