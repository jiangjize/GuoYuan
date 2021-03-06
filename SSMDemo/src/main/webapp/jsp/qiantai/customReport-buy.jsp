<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %><html>
	<head>
		<title>定制报告-立即购买</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/headerAndFooter.css"/>
		<link rel="stylesheet" type="text/css" href="css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="css/customReport.css"/>
		<link rel="stylesheet" href="css/select2.min.css" />
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
								<span id="loginOrRes"><a href="">登陆</a> / <a href="">注册</a></span>
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
					            	<li><a href="index.jsp">首页</a></li>
						            <li><a href="newsInfo.jsp">新闻资讯</a></li>
						            <li><a href="marketTrend.jsp">行情趋势</a></li>
						            <li><a href="marketLive.jsp">市场实况</a></li>
						            <li><a href="supplyInfo.jsp">交易中心</a></li>
						            <li class="active"><a href="customReport.jsp">定制报告</a></li>
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
		
		<!--当前位置-->
		<!--面包屑-->
		<div class="container">
			<div class="row">
				<div class="col-md-12 padding-left">
					<span id="address">您所在的位置是：<a href="index.jsp">首页</a>&nbsp;&gt;&nbsp;<a href="marketTrend.jsp">行情趋势</a>&nbsp;&gt;&nbsp;<a href="#">原木报告</a></span>
				</div>
			</div>
		</div>
	
		<!--定制报告-->
		<div class="container margin-top-30">
			<div class="row text-center">
				<div class="col-sm-9 col-md-9 padding-left content-left">
					<h4 class="analysis">报告订购</h4>
					<hr id="hr" />
					<div class="row">
						<div class="col-sm-12">
							<form action="#">
								<p class="red">● 请如实填写您的联系信息，我们将在一个工作日内与您联系。（带*号的项目必须填写）。</p>
								<p>产品名称：2016-2021年中国原木材产业运行态势及投资战略研究报告</p>
								<p>交付方式：EMAIL电子版或EMS特快专递</p>
								<p>产品价格：纸质版： RMB 7800元 电子版： RMB 7500元 两个版本：RMB 8000元</p>
								<p><span class="red">*</span>公司名称：<input type="text" /></p>
								<p><span class="red">*</span><span class="letsp">性</span>别：<input type="radio" checked="checked"/>男<input type="radio" style="margin-left: 20px;"/>女</p>
								<p><span class="red">*</span><span class="letsp">姓</span>名：<input type="text" /><span class="pl-20"><span class="red">*</span>手机号码：<input type="text" /></span></p>
								<p>公司地址：<input type="text" /></p>
								<p>联系电话：<input type="text" />
									<span class="pl-20"><span class="letsp">职</span>务：
										<select class="js-example-basic-multiple" style="width:200px;">
										  <option value="company">请选择职务</option>
										  <option value="">boss</option>
										  <option value="">会计</option>
										</select>
									</span>
								</p>
								<p><span class="letsp">传</span>真：<input type="text" /><span class="pl-20"><span class="letsp">邮</span> 箱：<input type="text" /></span></p>
								<p>公司地址：<input type="text" /></p>
								<p><span class="red">*</span>填写您要进行市场调查的目的和相关要求？</p>
								<p><span class="red">*</span>相关要求：<textarea></textarea></p>
								<p><button type="button">提交</button></p>
							</form>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-md-3 padding-right">
					<div class="buying border1">
						<p class="pt-title">购买流程</p>	
						<div class="buy-a">
							<p >1、<span class="red">双方洽谈，明确需求</span></p>
							<p>电话、邮件或网络确定购买细节</p>
						</div>
						<div class="buy-a">
							<p >2、<span class="red">提交订单或征订表</span></p>
							<p>征订表详细填写后传真给我们或者网上订购，在线填写后提交订单</p>
						</div>
						<div class="buy-a">
							<p >3、<span class="red">支付款项</span></p>
							<p> 通过银行汇款支付购买报告款项</p>
						</div>
					</div>
					<div class="buy-pt border1">
						<p class="pt-title">服务咨询平台</p>	
						<ul>
							<li class="icon-1">客服：400-1234-1324</li>
							<li class="icon-2">传真：400-1234-1324</li>
							<li class="icon-3">联系人：张小姐</li>
							<li class="icon-4">邮箱：zikoo@zikoo.com</li>
							<li class="icon-5">地址：北京市朝阳区朝阳路5号</li>
							<li class="icon-6">邮编：100000</li>
						</ul>
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
				<img src="images/index/rcode_03.png" id="rcode"/>
			</div>
		</div>
	</body>
	<script src="js/jquery-2.1.4.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript" src="js/select2.min.js" ></script>
	<script type="text/javascript">
		$(document).ready(function() {
		    $(".js-example-basic-multiple").select2();
		});
	</script>
</html>


