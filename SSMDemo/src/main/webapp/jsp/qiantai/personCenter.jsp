<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %><html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>个人中心</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/headerAndFooter.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/reset.css"/>
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
					           <%-- <ul class="nav navbar-nav font-family">
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
		
		<!--面包屑-->
		<div class="container">
			<div class="row">
				<div class="col-md-12 padding-left">
					<span id="addressSpan">您所在的位置是：<a href="index.jsp">首页</a>&nbsp;>&nbsp;<a href="personCenter.jsp">个人中心</a></span>
				</div>
			</div>
		</div>
		
		<!--主题内容-->
		<div class="container">
			<div class="row">
				<div class="col-md-12 padding-left padding-right margin-top-25 personCenterConDiv">
					<div class="col-md-2 col-md-offset-1 margin-top-20 padding-left">
						<div class="personCenterConLeft">
							<ul>
								<li onclick="setTab(this,1,3)" class="li_one_1 activeLi">
									<div class="contentLi-left_1 activeLi1">
										<span id="leftTitle" class="font-family">
											基本信息
										</span>
									</div>
								</li>
								<li onclick="setTab(this,2,3)" class="li_one_2">
									<div class="contentLi-left_2">
										<span id="leftTitle" class="font-family">
											订单信息
										</span>
									</div>
								</li>
								<li onclick="setTab(this,3,3)" class="li_one_3">
									<div class="contentLi-left_3">
										<span id="leftTitle" class="font-family">
											供求信息
										</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-8 border1 margin-top-20 padding-bottom-20">
						<div class="col-md-12 padding-left padding-right" id="con_one_1">
							<h2 id="baseInfo" class="font-family">基本信息</h3>
							
							<div class="row margin-top-15">
								<div class="col-md-12 padding-right">
									<div class="register-title">
										<img src="images/login/reg_03.png"/><span class="font-family bold">设置您的账户信息</span>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">会员登录名：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi" class="redAn">请输入6-20位英文字母/数字/组合，不能修改。</span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">电子邮箱：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">输入密码：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">再次输入密码：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
									</div>
									
								</div>
							</div>
						
							<div class="row margin-top-15">
								<div class="col-md-12 padding-right">
									<div class="register-title">
										<img src="images/login/reg_03.png"/><span class="font-family bold">姓名和联系方式</span>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">姓名：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">您的职位：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">手机：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">固定电话：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">传真：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">QQ：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
									</div>
								</div>
							</div>
							
							<div class="row margin-top-15">
								<div class="col-md-12 padding-right">
									<div class="register-title">
										<img src="images/login/reg_03.png"/><span class="font-family bold">公司名称和主管业务</span>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">贵公司名称：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">公司所在地：</div>
										<div class="col-md-5 padding-left">
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
										<div class="col-md-4 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">经营地址：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">主营产品：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">所属市场：</div>
										<div class="col-md-4 padding-left">
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
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">公司网址：</div>
										<div class="col-md-4 padding-left"><input type="text" id="username" value="" /></div>
										<div class="col-md-5 padding-left"><span id="starNull" class="redAn"></span><span id="tishi"></span></div>
									</div>
									<div class="row height30">
										<div class="col-md-2 padding-left text-right padding-right margin-left-35">验证码：</div>
										<div class="col-md-5 padding-left">
											<input type="text" id="yanzhengma" value="" />
											<img src="images/login/code_03.png" id="yanzhengma"/>
										</div>
										<div class="col-md-4 padding-left"><span id="starNull" class="redAn">*</span><span id="tishi"></span></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 padding-left padding-right display-none" id="con_one_2">
							<h2 id="baseInfo" class="font-family">订单信息</h3>
							<div class="col-md-12 padding-left padding-right margin-top-15">
								<table class="table table-bordered padding-left orderTable">
									<tr>
										<th>订单信息</th>
										<th>金额</th>
										<th>状态</th>
										<th>时间</th>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td><span class="redAn bold">1500元 </span>(电子版+纸质版)</td>
										<td>未付款<a href=""><span class="redAn margin-left-15 bold">去支付</span></a></td>
										<td>08-18</td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td><span class="redAn bold">1500元 </span>(电子版+纸质版)</td>
										<td><a href=""><span class="redAn margin-left-15 bold">已支付</span></a></td>
										<td>08-18</td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td><span class="redAn bold">1500元 </span>(电子版+纸质版)</td>
										<td>未付款<a href=""><span class="redAn margin-left-15 bold">去支付</span></a></td>
										<td>08-18</td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td><span class="redAn bold">1500元 </span>(电子版)</td>
										<td><a href=""><span class="redAn margin-left-15 bold">已支付</span></a></td>
										<td>08-18</td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td><span class="redAn bold">1500元 </span>(电子版+纸质版)</td>
										<td><a href=""><span class="redAn margin-left-15 bold">已支付</span></a></td>
										<td>08-18</td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td><span class="redAn bold">1500元 </span>(电子版+纸质版)</td>
										<td>未付款<a href=""><span class="redAn margin-left-15 bold">去支付</span></a></td>
										<td>08-18</td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td><span class="redAn bold">1500元 </span>(电子版+纸质版)</td>
										<td><a href=""><span class="redAn margin-left-15 bold">已支付</span></a></td>
										<td>08-18</td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td><span class="redAn bold">1500元 </span>(电子版+纸质版)</td>
										<td>未付款<a href=""><span class="redAn margin-left-15 bold">去支付</span></a></td>
										<td>08-18</td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td><span class="redAn bold">1500元 </span>(电子版+纸质版)</td>
										<td><a href=""><span class="redAn margin-left-15 bold">已支付</span></a></td>
										<td>08-18</td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td><span class="redAn bold">1500元 </span>(电子版+纸质版)</td>
										<td><a href=""><span class="redAn margin-left-15 bold">已支付</span></a></td>
										<td>08-18</td>
									</tr>
								</table>
							</div>
						</div>
						<div class="col-md-12 padding-left padding-right display-none" id="con_one_3">
							<h2 id="baseInfo" class="font-family">供求信息</h3>
							<div class="col-md-12 padding-left padding-right margin-top-15">
								<table class="table table-bordered padding-left orderTable">
									<tr>
										<th>报告名称</th>
										<th>时间</th>
										<th>类型</th>
										<th>状态</th>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_03.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_06.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_08.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_03.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_06.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_08.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_03.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_06.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_08.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_03.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_06.png"/></td>
									</tr>
									<tr>
										<td id="orderTitle">2016-2021年中国木材旋切刀行业发展分析及投资...</td>
										<td>2016-08-18</td>
										<td>供应信息</td>
										<td id="check"><img src="images/personCenter/shenhe_08.png"/></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
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
	<script type="text/javascript">
		function setTab(obj,num,totalNum){
			for(var i = 0; i < totalNum ; i++){
				$("#con_one_"+(i+1)).css("display","none");
				$("#con_one_"+num).css("display","block");
				$(".li_one_"+(i+1)).removeClass("activeLi");
				$(obj).addClass("activeLi");
				$(".contentLi-left_"+(i+1)).removeClass("activeLi"+(i+1));
				$(".contentLi-left_"+num).addClass("activeLi"+num);
			}
		}
	</script>
</html>
