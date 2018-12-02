<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">

    <link rel="stylesheet" href="static/css/login.css">
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
	<title>后台登陆</title>
</head>
<script type="text/javascript">
$().ready(function() {
	$("#thisregist").click(function(){
		//跳转注册界面
		 
	});
});
</script>

<body>
	<div id="login_top">
		<div id="welcome">
			欢迎使用教学质量与教学改革工程管理系统
		</div>
		<div id="back">
			<a href="#">返回首页</a>&nbsp;&nbsp; | &nbsp;&nbsp;
			<a href="#">帮助</a>
		</div>
	</div>
	<div id="login_center">
		<div id="login_area">
			<div id="login_form">
				<form action="index.html" method="post">
					<div id="login_tip">
						用户登录&nbsp;&nbsp;UserLogin
					</div>
					<div><input type="text" class="username" name="userName"></div>
					<div><input type="text" class="pwd" name="password"></div>
					<div id="btn_area">
						<input type="submit" name="submit" id="sub_btn" value="登&nbsp;&nbsp;录">&nbsp;&nbsp;
						<input type="text" class="verify">
						<img src="images/login/verify.png" alt="" width="80" height="40">
						<button id="thisregist">管理员注册</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="login_bottom">
		版权所有
	</div>
</body>
</html>