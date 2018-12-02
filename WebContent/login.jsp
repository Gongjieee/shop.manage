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
$(document).ready(function() {
	function login(){//登录
		var username = $("#login-username").val(),
			password = $("#login-password").val(),
			validatecode = null,
			flag = false;
		//判断用户名密码是否为空
		if(username == ""){
			$.pt({
	    		target: $("#login-username"),
	    		position: 'r',
	    		align: 't',
	    		width: 'auto',
	    		height: 'auto',
	    		content:"用户名不能为空"
	    	});
			flag = true;
		}
		if(password == ""){
			$.pt({
	    		target: $("#login-password"),
	    		position: 'r',
	    		align: 't',
	    		width: 'auto',
	    		height: 'auto',
	    		content:"密码不能为空"
	    	});
			flag = true;
		}
		//用户名只能是15位以下的字母或数字
		var regExp = new RegExp("^[a-zA-Z0-9_]{1,15}$");
		if(!regExp.test(username)){
			$.pt({
	    		target: $("#login-username"),
	    		position: 'r',
	    		align: 't',
	    		width: 'auto',
	    		height: 'auto',
	    		content:"用户名必须为15位以下的字母或数字"
	    	});
			flag = true;
		}
		
		if(flag){
			return false;
		}else{//登录
			//调用后台登录验证的方法
			alert('登录成功');
			return false;
		}
	}

	//注册
	function register(){
		var username = $("#register-username").val(),
			password = $("#register-password").val(),
			repassword = $("#register-repassword").val(),
			code = $("#register-code").val(),
			flag = false,
			validatecode = null;
		//判断用户名密码是否为空
		if(username == ""){
			$.pt({
	    		target: $("#register-username"),
	    		position: 'r',
	    		align: 't',
	    		width: 'auto',
	    		height: 'auto',
	    		content:"用户名不能为空"
	    	});
			flag = true;
		}
		if(password == ""){
			$.pt({
	    		target: $("#register-password"),
	    		position: 'r',
	    		align: 't',
	    		width: 'auto',
	    		height: 'auto',
	    		content:"密码不能为空"
	    	});
			flag = true;
		}else{
			if(password != repassword){
				$.pt({
	        		target: $("#register-repassword"),
	        		position: 'r',
	        		align: 't',
	        		width: 'auto',
	        		height: 'auto',
	        		content:"两次输入的密码不一致"
	        	});
				flag = true;
			}
		}
		//用户名只能是15位以下的字母或数字
		var regExp = new RegExp("^[a-zA-Z0-9_]{1,15}$");
		if(!regExp.test(username)){
			$.pt({
	    		target: $("#register-username"),
	    		position: 'r',
	    		align: 't',
	    		width: 'auto',
	    		height: 'auto',
	    		content:"用户名必须为15位以下的字母或数字"
	    	});
			flag = true;
		}
		//检查用户名是否已经存在
		//调后台代码检查用户名是否已经被注册
		
		//检查注册码是否正确
		//调后台方法检查注册码，这里写死为11111111
		if(code != '11111111'){
			$.pt({
		        target: $("#register-code"),
		        position: 'r',
		        align: 't',
		        width: 'auto',
		        height: 'auto',
		        content:"注册码不正确"
		       });
			flag = true;
		}
		
		if(flag){
			return false;
		}else{//注册
			spop({			
				template: '<h4 class="spop-title">注册成功</h4>即将于3秒后返回登录',
				position: 'top-center',
				style: 'success',
				autoclose: 3000,
				onOpen : function(){
					var second = 2;
					var showPop = setInterval(function(){
						if(second == 0){
							clearInterval(showPop);
						}
						$('.spop-body').html('<h4 class="spop-title">注册成功</h4>即将于'+second+'秒后返回登录');
						second--;
					},1000);
				},
				onClose : function(){
					goto_login();
				}
			});
			return false;
		}
	}

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
				<form action="index.jsp" method="post">
					<div id="login_tip">
						用户登录&nbsp;&nbsp;UserLogin
					</div>
					<div><input type="text" id="login-username" class="username" name="userName"></div>
					<div><input type="text" id="login-password" class="pwd" name="password"></div>
					<div id="btn_area" style="margin-right: 28px;">
						<input type="submit" onclick="login" name="submit" id="sub_btn" value="登&nbsp;&nbsp;录">&nbsp;&nbsp;
						<input type="submit" style="float:right;" onclick="login" name="submit" id="sub_btn" value="注&nbsp;&nbsp;册">&nbsp;&nbsp;
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