<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %><html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>注册</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/headerAndFooter.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/common.css"/>
		<!--[if IE]>
			<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
		<![endif]-->
		<script>
            $(function () {

            })
            function tiaozhuan(scod) {
                location.href="${pageContext.request.contextPath}/IFrontColumn/LodingIndex?scod="+scod;
            }
		</script>
	</head>
	<body>
		<!--顶部-->
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 top">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<span id="welcome">您好，欢迎您进入中国木材大数据平台</span>
								<span id="loginOrRes"><a href="login.jsp">登陆</a> / <a href="register.jsp">注册</a></span>
							</div>
							<div class="col-md-6 padding-right">
								<ul id="topUL">
									<li><a href="">设为首页</a><span id="line">|</span></li>
									<li><a href="">收藏此页</a><span id="line">|</span></li>
									<li><a href="">联系我们</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<!--logo-->
		<div class="container logoDiv">
			<div class="row">
				<div class="col-sm-4 col-md-4 padding-left">
					<img src="images/index/logo_06.png" id="logo"/>
				</div>
				<div class="col-sm-7 col-md-7 col-md-offset-1 padding-right">
					<div class="col-md-7 search">
						<div class="input-group">
						    <span class="input-group-addon"><img src="images/index/search_12.png"/></span>
						    <input type="text" class="form-control" id="searchText" aria-describedby="inputGroupSuccess1Status">
						    <button class="btn btn-default list-inline border-radius" id="searchBtn" type="button">搜索</button>
						</div>
					</div>
					<div class="col-md-5 padding-right">
						<p class="text-right telText bold font-family">全国服务电话:</p>
						<p class="text-right tel bold font-family">400-1234-1234</p>
					</div>
				</div>
			</div>
		</div>
	
		<!--导航-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-12 padding-left padding-right">
					<nav class="navbar navbar-inverse navbar-static-top">
						<div class="container">
							<div id="navbar" class="collapse navbar-collapse">
					            <%--<ul class="nav navbar-nav font-family">
					            	<li class="active"><a href="index.jsp">首页</a></li>
						            <li><a href="newsInfo.jsp">新闻资讯</a></li>
						            <li><a href="marketTrend.jsp">行情趋势</a></li>
						            <li><a href="marketLive.jsp">市场实况</a></li>
						            <li><a href="supplyInfo.jsp">交易中心</a></li>
						            <li><a href="customReport.jsp">定制报告</a></li>
						            <li><a href="investInfo.jsp">投资咨询</a></li>
						            <li><a href="businessSystem.jsp">商务系统</a></li>
						            <li><a href="englishReport.jsp">English Report</a></li>
					            </ul>--%>
									<c:forEach items="${ColumnList}" var="col">
										<ul class="nav navbar-nav font-family">
											<li <c:if test="${col.s_ccode=='scsk'}">class="active"</c:if>><a href="#" onclick="tiaozhuan('${col.s_ccode}')">${col.s_cname}</a></li>
										</ul>
									</c:forEach>
					        </div>
						</div>
					</nav>
				</div>
			</div>
		</div>
		
		<!--填写注册信息-->
		<div class="container">
			<div class="row register-bz">
				<div class="col-md-8">
					注册步骤：
					<span id="buzhou" class="activebz bold">1、填写注册信息</span>
					<span id="buzhou">2、邮箱验证</span>
					<span id="buzhou">3、验证成功</span>
				</div>
				<div class="col-md-4 text-right padding-right">
					<span id="star" class="redAn">*</span>为必填项
				</div>
			</div>
			
			<div class="row margin-top-15">
				<div class="col-md-12 padding-left padding-right">
					<div class="register-title">
						<img src="images/login/reg_03.png"/><span class="font-family bold">设置您的账户信息</span>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">会员登录名：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi" class="redAn">请输入6-20位英文字母/数字/组合，不能修改。</span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">电子邮箱：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">输入密码：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">再次输入密码：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
					</div>
					
				</div>
			</div>
		
			<div class="row margin-top-15">
				<div class="col-md-12 padding-left padding-right">
					<div class="register-title">
						<img src="images/login/reg_03.png"/><span class="font-family bold">姓名和联系方式</span>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">姓名：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">您的职位：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">手机：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">固定电话：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">传真：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">QQ：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
					</div>
				</div>
			</div>
			
			<div class="row margin-top-15">
				<div class="col-md-12 padding-left padding-right">
					<div class="register-title">
						<img src="images/login/reg_03.png"/><span class="font-family bold">公司名称和主管业务</span>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">贵公司名称：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">公司所在地：</div>
						<div class="col-md-3 padding-left">
							<!--省份-->
							<select name="provice" id="selectProvice">
								<option value="">请选择省份</option>
								<option value="">河北省</option>
								<option value="">河南省</option>
								<option value="">山东省</option>
								<option value="">山西省</option>
								<option value="">陕西省</option>
							</select>
							<!--城市-->
							<select name="city" id="selectCity">
								<option value="">请选择城市</option>
								<option value="">石家庄</option>
								<option value="">保定</option>
								<option value="">张家口</option>
								<option value="">衡水</option>
								<option value="">邢台</option>
							</select>
						</div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">经营地址：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">主营产品：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">所属市场：</div>
						<div class="col-md-3 padding-left">
							<!--所属市场-->
							<select name="market" id="selectMarket">
								<option value="">请选择所属市场</option>
								<option value="">河北省</option>
								<option value="">河南省</option>
								<option value="">山东省</option>
								<option value="">山西省</option>
								<option value="">陕西省</option>
							</select>
						</div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">公司网址：</div>
						<div class="col-md-3 padding-left"><input type="text" id="username" value="" /></div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
					</div>
					<div class="row height30">
						<div class="col-md-1 padding-left text-right padding-right margin-left-35">验证码：</div>
						<div class="col-md-3 padding-left">
							<input type="text" id="yanzhengma" value="" />
							<img src="images/login/code_03.png" id="yanzhengma"/>
						</div>
						<div class="col-md-7 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
					</div>
				</div>
			</div>
		
			<div class="row margin-top-15">
				<div class="col-md-4 col-md-offset-2">
					<input type="submit" id="submit" class="font12" name="submit" value="同意以下服务协议，提交注册信息" />
				</div>
			</div>
			
			<div class="row margin-top-30">
				<div class="col-md-8 padding-left">
					<img src="images/login/reg_07.png" id="xieyiImg"/><span class="redAn font12">欢迎阅读中国木材大数据服务使用协议(下称“本协议”)。</span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-7 padding-left">
					<textarea name="xieyi" rows="6">
1. 接受条款。 
通过首页进入中国木材大数据网站即表示您同意自己已经与中国木材大数据网订立本协议，且您将受本协议的条款和条件 (“条款”) 约束。中国木材大数据网可随时自行全权决定更改“条款”。如“条款”有任何变更，中国木材大数据网将其网站上刊载公告，通知予您。如您不同意相关变更，必须停止使用“服务”。经修订的“条款”一经在中国木材大数据网站的公布后，立即自动生效。您登录或继续使用“服务”将表示您接受经修订的“条款”。除另行明确声明外，任何使“服务”范围扩大或功能增强的新内容均受本协议约束。除非经中国木材大数据网的授权高层管理人员签订书面协议，本协议不得另行作出修订。中国木材大数据（www.wood-data.com）的所有权和运
					</textarea>
				</div>
			</div>
		</div>
		
		<!--邮箱验证-->
		<div class="container emailYanzheng display-none">
			<div class="row register-bz">
				<div class="col-md-8">
					注册步骤：
					<span id="buzhou">1、填写注册信息</span>
					<span id="buzhou" class="activebz bold">2、邮箱验证</span>
					<span id="buzhou">3、验证成功</span>
				</div>
				<div class="col-md-4 text-right padding-right">
					<span id="star" class="redAn">*</span>为必填项
				</div>
			</div>
			
			<div class="row margin-top-30">
				<div class="col-md-12 padding-left padding-right text-center">
					<img src="images/login/reg2_03.png" id="xinfeng"/>
					<span class="font-family tishiTxt">我们已经将激活信发到您的邮箱，请注意查收！</span>
				</div>
			</div>
			
			<div class="row margin-top-20">
				<div class="col-md-4 margin-left-35 border1 jihuo">
					<img src="images/login/reg2_07.png" id="jihuoImg"/>
					<span id="jihuotitle" class="bold">如果您已经收到了激活信：</span>
					<p id="jihuoTishi">
						打开您注册验证的邮箱<span id="regEmail">1134637355@qq.com</span>，点击本网站发送给您的邮件（由于网络等原因，您可能不能马上收到邮件，请稍等片刻后再查收），按提示激活您的账户激活后才能享受中国木材网的服务。
					</p>
				</div>
				<div class="col-md-4 border1 margin-left-15 nojihuo">
					<img src="images/login/reg2_10.png" id="jihuoImg"/>
					<span id="nojihuotitle" class="bold">如果长时间没有收到激活信：</span>
					<p id="jihuoTishi">
						如果您确认您的邮箱<span id="regEmail">1134637355@qq.com</span>，没有收到激活信，或者您可以重新更改您的邮箱地址，再重新发送激活信。
						
					</p>
					<input type="email" id="emailInput" value="" /><br />
					<input type="submit" id="sendJihuo" name="sendJihuo" value="把激活信发送到此邮箱" />
				</div>
				<div class="col-md-3 margin-left-15 float-right lineFangshi">
					<p>如遇注册问题请联系：</p>
					<p>电话：010-123456789</p>
					<p>邮箱：1528933715@163.com</p>
					<p>客服QQ：<a href=""><img src="images/login/reg2_15.png" /></a></p>
				</div>
			</div>
		</div>
		
		<!--注册成功-->
		<div class="container emailYanzheng  display-none">
			<div class="row register-bz">
				<div class="col-md-8">
					注册步骤：
					<span id="buzhou">1、填写注册信息</span>
					<span id="buzhou">2、邮箱验证</span>
					<span id="buzhou" class="activebz bold">3、验证成功</span>
				</div>
				<div class="col-md-4 text-right padding-right">
					<span id="star" class="redAn">*</span>为必填项
				</div>
			</div>
			
			<div class="row margin-top-30">
				<div class="col-md-12 padding-left padding-right text-center">
					<img src="images/login/succ_03.png" id="successReg"/>
					<span class="font-family tishiTxt">恭喜您，注册成功</span>
				</div>
			</div>
		</div>
		
		
		<!--友情链接-->
		<div class="container">
			<div class="row">
				<div class="col-md-12 padding-left padding-right">
					<div class="content-friend-link">
						<span id="linkTxt">
							友情链接：
						</span>
						<ul>
							<a href=""><li>木材大数据平台</li></a>
							<a href=""><li>木材大数据平台</li></a>
							<a href=""><li>木材大数据平台</li></a>
							<a href=""><li>木材大数据平台</li></a>
							<a href=""><li>木材大数据平台</li></a>
							<a href=""><li>木材大数据平台</li></a>
							<a href=""><li>木材大数据平台</li></a>
							<a href=""><li>木材大数据平台</li></a>
							<a href=""><li>木材大数据平台</li></a>
							<a href=""><li>木材大数据平台</li></a>
						</ul>
					</div>
				</div>
			</div>
		</div>
	
		<!--底部-->
		<div class="container-fluid">
			<div class="row footer">
				<div class="col-md-12 ">
					<ul>
						<li><a href="">关于我们</a><span id="shu">|</span></li>
						<li><a href="">业务体系</a><span id="shu">|</span></li>
						<li><a href="">企业动态</a><span id="shu">|</span></li>
						<li><a href="">联系我们</a><span id="shu">|</span></li>
						<li><a href="">法律声明</a><span id="shu">|</span></li>
						<li><a href="">服务协议</a><span id="shu">|</span></li>
						<li><a href="">Investor Relations</a><span id="shu">|</span></li>
						<li><a href="">用户体验中心</a><span id="shu">|</span></li>
						<li><a href="">关于会员</a><span id="shu">|</span></li>
						<li><a href="">我要提意见</a></li>
					</ul>
				</div>
				<div class="row address">
					CopyRight © 2000-2015 BitAuto,All Rights Reserved.  版权所有  北京国数源科技有限公司
				</div>
				<div class="row telphone">
					咨询热线：4000-168-168 (每天9:00—17:30，法定节日休息）
				</div>
				<img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/rcode_03.png" id="rcode"/>
			</div>
		</div>
	</body>
	<script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery-2.1.4.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/jsp/qiantai/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
</html>
