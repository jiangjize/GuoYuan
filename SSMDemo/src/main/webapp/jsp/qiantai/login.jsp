<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
	<head>
		<title>登录</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/headerAndFooter.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/common.css"/>
		<!--[if IE]>
			<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="container-fluid">
			<div class="row login-logo-div">
				<div class="col-dm-12">
					<img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/logo_06.png"/>
					<a href="${pageContext.request.contextPath}/IFrontColumn/LodingIndex"><button type="button" class="btn btn-default">返回首页</button></a>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row login-center-div">
				<div class="col-md-12 padding-right">
					<img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/bg1_02.png"/>
					<div class="col-md-4 col-sm-8 border1 col-md-offset-4 loginDiv">
						<form action="/IFrontUser/Login" method="post">
						<div class="col-md-11 width100">
							<hr class="margin-top-55" />
							<span id="userLoginTxt" class="font-family">用户登录</span>
							<div class="input-group usernameDiv">
							    <span class="backgroundColor input-group-addon border1" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
							    <input type="text" name="s_uacc" id="username" required class="form-control font-family" placeholder="请输入账号" aria-describedby="basic-addon1">
							</div>
							<div class="input-group userpwdDiv">
							    <span class="backgroundColor input-group-addon border1" id="basic-addon1"><span class="glyphicon glyphicon-lock"></span></span>
							    <input type="password" name="s_upwd" id="userpwd" required class="form-control font-family" placeholder="请输入密码" aria-describedby="basic-addon1">
							</div>
							<div class="col-md-6 padding-left text-left margin-top-20"><a href="${pageContext.request.contextPath}/jsp/qiantai/forgot-pass.jsp" class="font12">忘记密码?</a></div>
							<div class="col-md-6 padding-right text-right margin-top-20"><a href="#" class="font12">注册</a></div>
							<div class="col-md-12 padding-left padding-right">
								<button type="submit" class="btn btn-default margin-top-20" id="loginBtn">立即登录</button>
							</div>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	
		<div class="container linkDiv">
			<div class="row">
				<div class="col-md-12">
					<ul class="margin-top-20 font12">
						<li><a href="">关于我们</a><span id="line">|</span></li>
						<li><a href="">业务体系</a><span id="line">|</span></li>
						<li><a href="">企业动态</a><span id="line">|</span></li>
						<li><a href="">联系我们</a><span id="line">|</span></li>
						<li><a href="">法律声明</a><span id="line">|</span></li>
						<li><a href="">服务协议</a><span id="line">|</span></li>
						<li><a href="">Investor Relations</a><span id="line">|</span></li>
						<li><a href="">用户体验中心</a><span id="line">|</span></li>
						<li><a href="">关于会员</a><span id="line">|</span></li>
						<li><a href="">我要提意见</a></li>
					</ul>
				</div>
			</div>
			<div class="row margin-top-20">
				<div class="col-md-6 text-left font12">
					CopyRight © 2000-2015 BitAuto,All Rights Reserved.  版权所有  北京国数源科技有限公司
				</div>
				<div class="col-md-6 text-right font12">
					咨询热线：4000-168-168 (每天9:00—17:30，法定节日休息）
				</div>
			</div>
		</div>
	
	</body>
	<script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery-2.1.4.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/jsp/qiantai/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
</html>
