<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %><html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>注册须知</title>
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
								<span id="loginOrRes"><a href="login.jsp">登陆</a> / <a href="registerNotice.jsp">注册</a></span>
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
		
		<!--注册须知-->
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 border1 margin-top-15 regNoticeDiv">
					<div class="col-md-12 text-center">
						<h2 class="redAn bold font-family">中国木材大数据<span id="notice">注册须知</span></h2>
					</div>
					<div class="col-md-12 margin-top-20">
						<p class="text-center">为了使你的注册顺利<span class="redAn">通过审核</span>并取得更好的<span class="redAn">商业效果</span>，敬请阅读以下注册须知：</p>
					</div>
					<div class="col-md-12 margin-top-15">
						<p>1.请认真详细地填写注册信息,严肃的商业信息有助于你获得别人的信任，结交潜在商业伙伴，获取商业机会。同时你的注册信息将将在你的公司商铺页面同步展示，完善严谨的资料将提升你公司的企业形象。</p>
						<p class="margin-top-15">2.为了保证商业交流渠道的畅通，营造有效的商务平台，中国木材大数据将<span class="redAn">定期抽查会员的联系方式的准确性</span>（如对你造成困扰，敬请谅解，我们志在保护你和大家的利益），对于资料不实的会员我们将保留取消其会员资格权利。</p>
						<p class="margin-top-15">3.为了保证网站的严肃性，<span class="redAn">明显敷衍的注册资料将无法通过后置的抽查审核</span>，敬请审慎对待，你的注册资料如被拒审，网站将在你登录后提示拒审原因，请修改并完善资料重新提交审核，两周内不重新提交审核的用户网站将保留删除该资料的权利。</p>
						<p class="margin-top-15">4.中国木材大数据平台的会员优惠将通过EMAIL和联系电话同时确认，如有资料不实，我们将取消其优惠权利。</p>
						<p class="margin-top-15 text-indent">中国木材大数据（www.wood-data.com）是由国数源（北京）科技有限公司主办，旨在创立中国木材行业商务资讯最权威最丰富的行业性网站，搭建中国木材及木制品国际贸易与风险管控信息平台，为广大用户提供专业及时的行业资讯和商业信息，为林业行业政策制定、产业发展、商品交易、价格指数、企业决策和金融信贷等方面提供数据、分析报告及咨询服务。</p>
					</div>
					<div class="col-md-12 margin-top-30 text-center">
						<a href="register.jsp"><button class="btn btn-default goRegisterBth font-family">继续注册</button></a>
						<a href="index.jsp"><button class="btn btn-default backBtn font-family">返回</button></a>
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
</html>
