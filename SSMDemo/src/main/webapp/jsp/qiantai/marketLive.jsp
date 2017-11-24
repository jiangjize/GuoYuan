<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
	<head>
		<title>市场实况</title>
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
					         <%--   <ul class="nav navbar-nav font-family">
					            	<li><a href="index.jsp">首页</a></li>
						            <li><a href="newsInfo.jsp">新闻资讯</a></li>
						            <li><a href="marketTrend.jsp">行情趋势</a></li>
						            <li class="active"><a href="marketLive.jsp">市场实况</a></li>
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
					<span id="addressSpan">您所在的位置是：<a href="index.jsp">首页</a>&nbsp;>&nbsp;<a href="marketTrend.jsp">市场实况</a></span>
				</div>
			</div>
		</div>
		
		<!--市场解读-->
		<div class="container margin-top-25">
			<div class="row">
				<div class="col-sm-5 col-md-5 padding-left padding-right">
					<div class="banner-news">
						<div class="yx-rotaion">
							<ul class="rotaion_list">
								<li><a href=""><img src="images/other/7.png" alt="美国俄州遭遇龙卷风 已致91人死" style="width: 481px; height: 290px;"></a></li>
								<li><a href=""><img src="images/other/8.png" alt="美国俄州遭遇龙卷风 已致91人死" style="width: 481px; height: 290px;"></a></li>
								<li><a href=""><img src="images/other/9.png" alt="美国俄州遭遇龙卷风 已致91人死" style="width: 481px; height: 290px;"></a></li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="col-sm-7 col-md-7 padding-right">
					<div class="content-market-live">
						<div class="content-market-live-title">
							<div class="col-sm-4 col-md-4 padding-left">
								<span id="market-live-title" class="font-family bold">
									市场解读
								</span>
							</div>
							<div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
								<a href=""><span id="market-live-more">
									更多>>
								</span></a>
							</div>
						</div>
						<div class="content-market-live-con">
							<h3 class="font-family bold">2016-2021年中国原木材产业运行态势及投资战略研究报告</h3>
							<p class="overflow-2">从天津市统计局获悉，上半年，天津市规模以上工业综合能源消费量为1911.88万吨标准煤，同比下降11.8%，降幅比一季度收窄从天津市统计局获悉...
							<p id="checkAll-market-live"><a href="newsDetails.jsp">[&nbsp;查看全文&nbsp;]</a></p>
							<ul>
								<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">我国将缩减煤电发电计划 护航可再生能源发展</a></li>
								<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">我国将缩减煤电发电计划 护航可再生能源发展</a></li>
								<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">大力发展可再生能源 促进能源行业转型变革</a></li>
								<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">奶粉新政最新消息：细则即将公布</a></li>
								<li><img src="images/index/dott_03.png"/><a href="newsDetails.jsp">8月猪价有望企稳反弹　难突破9.5元</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<!--帮助更多的企业解读市场分析，了解实时价格，实时库存情况！-->
		<div class="container">
			<div class="row border1 content-center-ad">
				<div class="col-md-12">
					<h1 class="bold font-family">帮助更多的企业解读市场分析，了解实时价格，实时库存情况！</h1>
				</div>
			</div>
		</div>
		
		<!--实时价格-->
		<div class="container">
			<div class="row">
				<div class="col-md-12 padding-left padding-right">
					<div class="col-sm-12 col-md-4 padding-left">
						<div class="content-title-txt border1">
							<h4 class="font-family">实时价格</h4>
						</div>
						<div class="content-con border1">
							<div class="content-con-up">
								<div class="col-md-4 col-sm-4 padding-left">
									<img src="images/other/news_03.png"/>
								</div>
								<div class="col-md-8 col-sm-8 padding-right padding-left font12">
									<h3 class="font-family">国企“十三五”规划专题</h3>
									<p class="overflow-2">企业发展战略规划是企业发展的灵魂与纲领，指引企业发展方向，明确企业的业务领域。</p>
									<p id="checkAll-con-p"><a href="newsDetails.jsp" class="redAn">[&nbsp;查看全文&nbsp;]</a></p>
								</div>
							</div>
							<div class="content-con-down">
								<div class="col-md-12 padding-left padding-right font12">
									<ul>
										<li><img src="images/index/dott_03.png"/><a href="">青岛发布规划:5年内将建成全国领先智慧城市</a></li>
										<li><img src="images/index/dott_03.png"/><a href="">青岛发布规划:5年内将建成全国领先智慧城市</a></li>
										<li><img src="images/index/dott_03.png"/><a href="">新一轮城市轨道交通线网规划建设 成都地铁环环相扣...</a></li>
										<li><img src="images/index/dott_03.png"/><a href="">新一轮城市轨道交通线网规划建设 成都地铁环环相扣...</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				
					<div class="col-sm-12 col-md-5 padding-left padding-right">
						<div class="content-title-txt border1">
							<h4 class="font-family">实时库存</h4>
						</div>
						<div class="content-con border1">
							<div class="content-con-up">
								<div class="col-md-3 col-sm-3 padding-left">
									<img src="images/other/news_03.png"/>
								</div>
								<div class="col-md-9 col-sm-9 padding-right padding-left font12">
									<h3 class="font-family">国企“十三五”规划专题</h3>
									<p class="overflow-2">企业发展战略规划是企业发展的灵魂与纲领，指引企业发展方向，明确企业的业务领域。</p>
									<p id="checkAll-con-p"><a href="newsDetails.jsp" class="redAn">[&nbsp;查看全文&nbsp;]</a></p>
								</div>
							</div>
							<div class="content-con-down">
								<div class="col-md-12 padding-left padding-right font12">
									<ul>
										<li><img src="images/index/dott_03.png"/><a href="">青岛发布规划:5年内将建成全国领先智慧城市</a></li>
										<li><img src="images/index/dott_03.png"/><a href="">青岛发布规划:5年内将建成全国领先智慧城市</a></li>
										<li><img src="images/index/dott_03.png"/><a href="">新一轮城市轨道交通线网规划建设 成都地铁环环相扣...</a></li>
										<li><img src="images/index/dott_03.png"/><a href="">新一轮城市轨道交通线网规划建设 成都地铁环环相扣...</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				
					<div class="col-sm-12 col-md-3 padding-right">
						<div class="content-title-txt border1">
							<h4 class="font-family">服务咨询平台</h4>
						</div>
						<div class="content-con border1">
							<div class="content-con-down">
								<div class="col-md-12 padding-left padding-right">
									<ul class="lineUS">
										<li><img src="images/marketLive/a.png"/><a href="">客服：400-1234-1324</a></li>
										<li><img src="images/marketLive/b.png"/><a href="">传真：400-1234-1324</a></li>
										<li><img src="images/marketLive/c.png"/><a href="">联系人：张小姐</a></li>
										<li><img src="images/marketLive/d.png"/><a href="">邮箱：zikoo@zikoo.com</a></li>
										<li><img src="images/marketLive/icon1_10.png"/><a href="">地址：北京市朝阳区朝阳路5号</a></li>
										<li><img src="images/marketLive/e.png"/><a href="">邮编：100000</a></li>
									</ul>
								</div>
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
