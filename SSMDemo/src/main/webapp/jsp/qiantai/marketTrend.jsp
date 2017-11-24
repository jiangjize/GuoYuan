<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
	<head>
		<title>行情趋势</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/slider-banner.css"/>
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
					        <%--    <ul class="nav navbar-nav font-family">
					            	<li><a href="index.jsp">首页</a></li>
						            <li><a href="newsInfo.jsp">新闻资讯</a></li>
						            <li class="active"><a href="marketTrend.jsp">行情趋势</a></li>
						            <li><a href="marketLive.jsp">市场实况</a></li>
						            <li><a href="supplyInfo.jsp">交易中心</a></li>
						            <li><a href="customReport.jsp">定制报告</a></li>
						            <li><a href="investInfo.jsp">投资咨询</a></li>
						            <li><a href="businessSystem.jsp">商务系统</a></li>
						            <li><a href="englishReport.jsp">English Report</a></li>
					            </ul>--%>
								<c:forEach items="${ColumnList}" var="col">
									<ul class="nav navbar-nav font-family">
										<li <c:if test="${col.s_ccode=='hqqs'}">class="active"</c:if>><a href="#" onclick="tiaozhuan('${col.s_ccode}')">${col.s_cname}</a></li>
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
					<span id="addressSpan">您所在的位置是：<a href="index.jsp">首页</a>&nbsp;>&nbsp;<a href="marketTrend.jsp">行情趋势</a></span>
				</div>
			</div>
		</div>
		
		<!--最新趋势-->
		<div class="container margin-top-30">
			<div class="row">
				<div class="col-sm-8 col-md-8 padding-left">
					<div class="content-market">
						<div class="content-news-title">
							<div class="col-sm-4 col-md-4 padding-left">
								<img src="images/index/nav1_07.png" id="titleBg"/>
								<span id="title" class="font-family">
									最新趋势
								</span>
							</div>
							<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
								<a href="wholeTrend.jsp"><span id="more">
									更多>>
								</span></a>
							</div>
						</div>
						<div class="content-news-con">
							<div class="content-market-con-down">
								<div class="col-sm-12 col-md-12">
									<ul class="padding-left">
										<li><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
										<li><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
										<li><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
										<li><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
										<li><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
										<li><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-md-4 padding-right padding-left">
					<div class="banner-market">
						<div class="yx-rotaion">
							<ul class="rotaion_list">
								<li><a href=""><img src="images/other/4.png" alt="美国俄州遭遇龙卷风 已致91人死" style="width: 385px; height: 220px;"></a></li>
								<li><a href=""><img src="images/other/5.png" alt="美国俄州遭遇龙卷风 已致91人死" style="width: 385px; height: 220px;"></a></li>
								<li><a href=""><img src="images/other/6.png" alt="美国俄州遭遇龙卷风 已致91人死" style="width: 385px; height: 220px;"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!--原木、锯材-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-12 padding-left padding-right">
					<!--原木-->
					<div class="col-sm-12 col-md-6 padding-left padding-right">
						<div class="content-state height-280">
							<div class="content-news-title">
								<div class="col-sm-4 col-md-4 padding-left">
									<img src="images/index/nav1_07.png" id="titleBg"/>
									<span id="title" class="font-family">
										原木
									</span>
								</div>
								<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
									<a href="wholeTrend.jsp"><span id="more">
										更多>>
									</span></a>
								</div>
							</div>
							
							<div class="content-state-con">
								<div class="slideTxtBox">
									<div class="hd">
									</div>
									<div class="bd">
										<div class="row">
											<div class="col-sm-12 col-md-12">
												<div class="content-market-con-up">
													<div class="col-sm-3 col-md-3">
														<img src="images/other/pic_07.png" id="smallImg"/>
													</div>
													<div class="col-sm-9 col-md-9 marketCon padding-right">
														<h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
														<p id="content-market-con-p">
															在发展中国家和地区，太阳能LED照明正越来越多地取代蜡烛、柴火、煤油灯等使用燃料的传
														</p>
														
														<p id="checkAll-market"><a href="newsDetails.jsp">[&nbsp;查看全文&nbsp;]</a></p>
													</div>
												</div>
												
												<div class="content-state-con-down">
													<div class="col-sm-12 col-md-12">
														<ul class="padding-top">
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!--锯材-->
					<div class="col-sm-12 col-md-6 padding-right">
						<div class="content-state height-280">
							<div class="content-news-title">
								<div class="col-sm-4 col-md-4 padding-left">
									<img src="images/index/nav1_07.png" id="titleBg"/>
									<span id="title" class="font-family">
										锯材
									</span>
								</div>
								<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
									<a href="wholeTrend.jsp"><span id="more">
										更多>>
									</span></a>
								</div>
							</div>
							
							<div class="content-state-con">
								<div class="slideTxtBox">
									<div class="hd">
									</div>
									<div class="bd">
										<div class="row">
											<div class="col-sm-12 col-md-12">
												<div class="content-market-con-up">
													<div class="col-sm-3 col-md-3">
														<img src="images/other/pic_07.png" id="smallImg"/>
													</div>
													<div class="col-sm-9 col-md-9 marketCon padding-right">
														<h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
														<p id="content-market-con-p">
															在发展中国家和地区，太阳能LED照明正越来越多地取代蜡烛、柴火、煤油灯等使用燃料的传
														</p>
														
														<p id="checkAll-market"><a href="newsDetails.jsp">[&nbsp;查看全文&nbsp;]</a></p>
													</div>
												</div>
												
												<div class="content-state-con-down">
													<div class="col-sm-12 col-md-12">
														<ul class="padding-top">
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				
					<!--人造板-->
					<div class="col-sm-12 col-md-6 padding-left padding-right">
						<div class="content-state height-280">
							<div class="content-news-title">
								<div class="col-sm-4 col-md-4 padding-left">
									<img src="images/index/nav1_07.png" id="titleBg"/>
									<span id="title" class="font-family">
										人造板
									</span>
								</div>
								<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
									<a href="wholeTrend.jsp"><span id="more">
										更多>>
									</span></a>
								</div>
							</div>
							
							<div class="content-state-con">
								<div class="slideTxtBox">
									<div class="hd">
									</div>
									<div class="bd">
										<div class="row">
											<div class="col-sm-12 col-md-12">
												<div class="content-market-con-up">
													<div class="col-sm-3 col-md-3">
														<img src="images/other/pic_07.png" id="smallImg"/>
													</div>
													<div class="col-sm-9 col-md-9 marketCon padding-right">
														<h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
														<p id="content-market-con-p">
															在发展中国家和地区，太阳能LED照明正越来越多地取代蜡烛、柴火、煤油灯等使用燃料的传
														</p>
														
														<p id="checkAll-market"><a href="newsDetails.jsp">[&nbsp;查看全文&nbsp;]</a></p>
													</div>
												</div>
												
												<div class="content-state-con-down">
													<div class="col-sm-12 col-md-12">
														<ul class="padding-top">
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!--红木-->
					<div class="col-sm-12 col-md-6 padding-right">
						<div class="content-state height-280">
							<div class="content-news-title">
								<div class="col-sm-4 col-md-4 padding-left">
									<img src="images/index/nav1_07.png" id="titleBg"/>
									<span id="title" class="font-family">
										红木
									</span>
								</div>
								<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
									<a href="wholeTrend.jsp"><span id="more">
										更多>>
									</span></a>
								</div>
							</div>
							
							<div class="content-state-con">
								<div class="slideTxtBox">
									<div class="hd">
									</div>
									<div class="bd">
										<div class="row">
											<div class="col-sm-12 col-md-12">
												<div class="content-market-con-up">
													<div class="col-sm-3 col-md-3">
														<img src="images/other/pic_07.png" id="smallImg"/>
													</div>
													<div class="col-sm-9 col-md-9 marketCon padding-right">
														<h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
														<p id="content-market-con-p">
															在发展中国家和地区，太阳能LED照明正越来越多地取代蜡烛、柴火、煤油灯等使用燃料的传
														</p>
														
														<p id="checkAll-market"><a href="newsDetails.jsp">[&nbsp;查看全文&nbsp;]</a></p>
													</div>
												</div>
												
												<div class="content-state-con-down">
													<div class="col-sm-12 col-md-12">
														<ul class="padding-top">
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!--珍贵阔叶木材-->
					<div class="col-sm-12 col-md-6 padding-left padding-right">
						<div class="content-state height-280">
							<div class="content-news-title">
								<div class="col-sm-4 col-md-4 padding-left">
									<img src="images/index/nav1_07.png" id="titleBg"/>
									<span id="title" class="font-family">
										珍贵阔叶木材
									</span>
								</div>
								<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
									<a href=""><span id="more">
										更多>>
									</span></a>
								</div>
							</div>
							
							<div class="content-state-con">
								<div class="slideTxtBox">
									<div class="hd">
									</div>
									<div class="bd">
										<div class="row">
											<div class="col-sm-12 col-md-12">
												<div class="content-market-con-up">
													<div class="col-sm-3 col-md-3">
														<img src="images/other/pic_07.png" id="smallImg"/>
													</div>
													<div class="col-sm-9 col-md-9 marketCon padding-right">
														<h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
														<p id="content-market-con-p">
															在发展中国家和地区，太阳能LED照明正越来越多地取代蜡烛、柴火、煤油灯等使用燃料的传
														</p>
														
														<p id="checkAll-market"><a href="newsDetails.jsp">[&nbsp;查看全文&nbsp;]</a></p>
													</div>
												</div>
												
												<div class="content-state-con-down">
													<div class="col-sm-12 col-md-12">
														<ul class="padding-top">
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!--地板-->
					<div class="col-sm-12 col-md-6 padding-right">
						<div class="content-state height-280">
							<div class="content-news-title">
								<div class="col-sm-4 col-md-4 padding-left">
									<img src="images/index/nav1_07.png" id="titleBg"/>
									<span id="title" class="font-family">
										地板
									</span>
								</div>
								<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
									<a href="wholeTrend.jsp"><span id="more">
										更多>>
									</span></a>
								</div>
							</div>
							
							<div class="content-state-con">
								<div class="slideTxtBox">
									<div class="hd">
									</div>
									<div class="bd">
										<div class="row">
											<div class="col-sm-12 col-md-12">
												<div class="content-market-con-up">
													<div class="col-sm-3 col-md-3">
														<img src="images/other/pic_07.png" id="smallImg"/>
													</div>
													<div class="col-sm-9 col-md-9 marketCon padding-right">
														<h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
														<p id="content-market-con-p">
															在发展中国家和地区，太阳能LED照明正越来越多地取代蜡烛、柴火、煤油灯等使用燃料的传
														</p>
														
														<p id="checkAll-market"><a href="newsDetails.jsp">[&nbsp;查看全文&nbsp;]</a></p>
													</div>
												</div>
												
												<div class="content-state-con-down">
													<div class="col-sm-12 col-md-12">
														<ul class="padding-top">
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!--木制家具-->
					<div class="col-sm-12 col-md-6 padding-left padding-right">
						<div class="content-state height-280">
							<div class="content-news-title">
								<div class="col-sm-4 col-md-4 padding-left">
									<img src="images/index/nav1_07.png" id="titleBg"/>
									<span id="title" class="font-family">
										木制家具
									</span>
								</div>
								<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
									<a href=""><span id="more">
										更多>>
									</span></a>
								</div>
							</div>
							
							<div class="content-state-con">
								<div class="slideTxtBox">
									<div class="hd">
									</div>
									<div class="bd">
										<div class="row">
											<div class="col-sm-12 col-md-12">
												<div class="content-market-con-up">
													<div class="col-sm-3 col-md-3">
														<img src="images/other/pic_07.png" id="smallImg"/>
													</div>
													<div class="col-sm-9 col-md-9 marketCon padding-right">
														<h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
														<p id="content-market-con-p">
															在发展中国家和地区，太阳能LED照明正越来越多地取代蜡烛、柴火、煤油灯等使用燃料的传
														</p>
														
														<p id="checkAll-market"><a href="newsDetails.jsp">[&nbsp;查看全文&nbsp;]</a></p>
													</div>
												</div>
												
												<div class="content-state-con-down">
													<div class="col-sm-12 col-md-12">
														<ul class="padding-top">
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!--木片与纸浆-->
					<div class="col-sm-12 col-md-6 padding-right">
						<div class="content-state height-280">
							<div class="content-news-title">
								<div class="col-sm-4 col-md-4 padding-left">
									<img src="images/index/nav1_07.png" id="titleBg"/>
									<span id="title" class="font-family">
										木片与纸浆
									</span>
								</div>
								<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
									<a href="wholeTrend.jsp"><span id="more">
										更多>>
									</span></a>
								</div>
							</div>
							
							<div class="content-state-con">
								<div class="slideTxtBox">
									<div class="hd">
									</div>
									<div class="bd">
										<div class="row">
											<div class="col-sm-12 col-md-12">
												<div class="content-market-con-up">
													<div class="col-sm-3 col-md-3">
														<img src="images/other/pic_07.png" id="smallImg"/>
													</div>
													<div class="col-sm-9 col-md-9 marketCon padding-right">
														<h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
														<p id="content-market-con-p">
															在发展中国家和地区，太阳能LED照明正越来越多地取代蜡烛、柴火、煤油灯等使用燃料的传
														</p>
														
														<p id="checkAll-market"><a href="newsDetails.jsp">[&nbsp;查看全文&nbsp;]</a></p>
													</div>
												</div>
												
												<div class="content-state-con-down">
													<div class="col-sm-12 col-md-12">
														<ul class="padding-top">
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!--装饰用木皮单板-->
					<div class="col-sm-12 col-md-6 padding-left padding-right">
						<div class="content-state height-280">
							<div class="content-news-title">
								<div class="col-sm-4 col-md-4 padding-left">
									<img src="images/index/nav1_07.png" id="titleBg"/>
									<span id="title" class="font-family">
										装饰用木皮单板
									</span>
								</div>
								<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
									<a href="wholeTrend.jsp"><span id="more">
										更多>>
									</span></a>
								</div>
							</div>
							
							<div class="content-state-con">
								<div class="slideTxtBox">
									<div class="hd">
									</div>
									<div class="bd">
										<div class="row">
											<div class="col-sm-12 col-md-12">
												<div class="content-market-con-up">
													<div class="col-sm-3 col-md-3">
														<img src="images/other/pic_07.png" id="smallImg"/>
													</div>
													<div class="col-sm-9 col-md-9 marketCon padding-right">
														<h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
														<p id="content-market-con-p">
															在发展中国家和地区，太阳能LED照明正越来越多地取代蜡烛、柴火、煤油灯等使用燃料的传
														</p>
														
														<p id="checkAll-market"><a href="newsDetails.jsp">[&nbsp;查看全文&nbsp;]</a></p>
													</div>
												</div>
												
												<div class="content-state-con-down">
													<div class="col-sm-12 col-md-12">
														<ul class="padding-top">
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
															<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!--我们的优势-->
					<div class="col-sm-12 col-md-6 padding-right">
						<div class="content-state height-280">
							<div class="content-news-title">
								<div class="col-sm-4 col-md-4 padding-left">
									<img src="images/index/nav1_07.png" id="titleBg"/>
									<span id="title" class="font-family">
										我们的优势
									</span>
								</div>
								<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
									<a href="wholeTrend.jsp"><span id="more">
										更多>>
									</span></a>
								</div>
							</div>
							
							<div class="content-ourgoods-con">
								<ul class="ourGoods-market">
									<div class="col-md-4">
										<li>
											<img src="images/index/shuzi_08.png"/>
											<h3><span id="big" class="font-family bold">请您买的放心</span><br><span id="small">采购支付流程安全快捷</span></h3>
										</li>
									</div>
									<div class="col-md-4">
										<li>
											<img src="images/index/shuzi_10.png"/>
											<h3><span id="big" class="font-family bold">售前售后服务</span><br><span id="small">最完善的售前售后服务</span></h3>
										</li>
									</div>
									<div class="col-md-4">
										<li>
											<img src="images/index/shuzi_12.png"/>
											<h3><span id="big" class="font-family bold">赠送增值服务</span><br><span id="small">买报告赠送数据中心会员</span></h3>
										</li>
									</div>
									<div class="col-md-4">
										<li>
											<img src="images/index/shuzi_03.png"/>
											<h3><span id="big" class="font-family bold">节省时间费用</span><br><span id="small">买多份能获得更高折扣</span></h3>
										</li>
									</div>
									<div class="col-md-4">
										<li>
											<img src="images/index/shuzi_05.png"/>
											<h3><span id="big" class="font-family bold">报告更新及时</span><br><span id="small">汇集行业最新研究成果</span></h3>
										</li>
									</div>
								</ul>
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
				<img src="images/index/rcode_03.png" id="rcode"/>
			</div>
		</div>
		
	</body>
	<script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/jsp/qiantai/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery.yx_rotaion.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function(){
			/*轮播图*/
			$(".yx-rotaion").yx_rotaion({auto:true});
		})
	</script>
</html>
