<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
	<head>
		<title>投资咨询-产业规划</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/market-banner.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/headerAndFooter.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/common.css"/>
		<link rel="stylesheet" href="css/investInfo.css" />
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
					            	<li><a href="index.jsp">首页</a></li>
						            <li><a href="newsInfo.jsp">新闻资讯</a></li>
						            <li><a href="marketTrend.jsp">行情趋势</a></li>
						            <li><a href="marketLive.jsp">市场实况</a></li>
						            <li><a href="supplyInfo.jsp">交易中心</a></li>
						            <li><a href="customReport.jsp">定制报告</a></li>
						            <li class="active"><a href="investInfo.jsp">投资咨询</a></li>
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
					<span id="addressSpan">您所在的位置是：<a href="index.jsp">首页</a>&nbsp;>&nbsp;<a href="investInfo.jsp">投资咨询</a>&nbsp;>&nbsp;<a href="investInfo-plann.jsp">产业规划</a></span>
				</div>
			</div>
		</div>
		
		<!--投资咨询-->
		<div class="container margin-top-30">
			<div class="row">
				<div class="col-sm-12 col-md-12 padding-left padding-right">
					<div class="invest-img">
						<img src="images/other/plann.jpg"/>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container">
			<div class="row margin-top-20">
				<div class="col-sm-9 col-md-9 padding-left padding-right border1" id="last">
					<div class="content-plann-con-up clearfix">
						<h4 class="font-family">广州规划建设枢纽型网络城市 城市改造或将提速</h4>
						<p id="content-plann-p">
							近日，中共广州市委十届九次全会上审议通过了《中共广州市委广州市人民政府关于进一步加强城市规划建设管理工作的实施意见》。(以下简称“实施意见”)广州市委书记任学锋指出，建设枢纽型网络城市，必须推动城市发展方式转变，进一步提高城市规划建设管理水...      
						</p>
						<p id="checkAll-market"><a href="investInfo-plann-more.jsp">[&nbsp;详细内容&nbsp;]</a></p>
					</div>
					<div class="content-plann-con-up clearfix">
						<h4 class="font-family">广州规划建设枢纽型网络城市 城市改造或将提速</h4>
						<p id="content-plann-p">
							近日，中共广州市委十届九次全会上审议通过了《中共广州市委广州市人民政府关于进一步加强城市规划建设管理工作的实施意见》。(以下简称“实施意见”)广州市委书记任学锋指出，建设枢纽型网络城市，必须推动城市发展方式转变，进一步提高城市规划建设管理水...      
						</p>
						<p id="checkAll-market"><a href="investInfo-plann-more.jsp">[&nbsp;详细内容&nbsp;]</a></p>
					</div>
					<div class="content-plann-con-up clearfix">
						<h4 class="font-family">广州规划建设枢纽型网络城市 城市改造或将提速</h4>
						<p id="content-plann-p">
							近日，中共广州市委十届九次全会上审议通过了《中共广州市委广州市人民政府关于进一步加强城市规划建设管理工作的实施意见》。(以下简称“实施意见”)广州市委书记任学锋指出，建设枢纽型网络城市，必须推动城市发展方式转变，进一步提高城市规划建设管理水...      
						</p>
						<p id="checkAll-market"><a href="investInfo-plann-more.jsp">[&nbsp;详细内容&nbsp;]</a></p>
					</div>
					<div class="content-plann-con-up clearfix">
						<h4 class="font-family">广州规划建设枢纽型网络城市 城市改造或将提速</h4>
						<p id="content-plann-p">
							近日，中共广州市委十届九次全会上审议通过了《中共广州市委广州市人民政府关于进一步加强城市规划建设管理工作的实施意见》。(以下简称“实施意见”)广州市委书记任学锋指出，建设枢纽型网络城市，必须推动城市发展方式转变，进一步提高城市规划建设管理水...      
						</p>
						<p id="checkAll-market"><a href="investInfo-plann-more.jsp">[&nbsp;详细内容&nbsp;]</a></p>
					</div>
					<div class="content-plann-con-up clearfix">
						<h4 class="font-family">广州规划建设枢纽型网络城市 城市改造或将提速</h4>
						<p id="content-plann-p">
							近日，中共广州市委十届九次全会上审议通过了《中共广州市委广州市人民政府关于进一步加强城市规划建设管理工作的实施意见》。(以下简称“实施意见”)广州市委书记任学锋指出，建设枢纽型网络城市，必须推动城市发展方式转变，进一步提高城市规划建设管理水...      
						</p>
						<p id="checkAll-market"><a href="investInfo-plann-more.jsp">[&nbsp;详细内容&nbsp;]</a></p>
					</div>
					<div class="content-plann-con-up clearfix">
						<h4 class="font-family">广州规划建设枢纽型网络城市 城市改造或将提速</h4>
						<p id="content-plann-p">
							近日，中共广州市委十届九次全会上审议通过了《中共广州市委广州市人民政府关于进一步加强城市规划建设管理工作的实施意见》。(以下简称“实施意见”)广州市委书记任学锋指出，建设枢纽型网络城市，必须推动城市发展方式转变，进一步提高城市规划建设管理水...      
						</p>
						<p id="checkAll-market"><a href="investInfo-plann-more.jsp">[&nbsp;详细内容&nbsp;]</a></p>
					</div>
				</div>
				<div class="col-sm-3 col-md-3 padding-right">
					<div class="new-dynamic border1">
						<p class="pt-title">最新动态</p>	
						<ul>
							<li><a href="#">十三五期间 化工园区大整改...</a></li>
							<li><a href="#">十三五期间 化工园区大整改...</a></li>
							<li><a href="#">工业绿色发展规划出炉 积极发展...</a></li>
							<li><a href="#">十三五期间 化工园区大整改...</a></li>
							<li><a href="#">工业绿色发展规划出炉 积极发展...</a></li>
							<li><a href="#">十三五期间 化工园区大整改...</a></li>
							<li><a href="#">工业绿色发展规划出炉 积极发展...</a></li>
							<li><a href="#">十三五期间 化工园区大整改...</a></li>
							<li><a href="#">工业绿色发展规划出炉 积极发展...</a></li>
							<li><a href="#">十三五期间 化工园区大整改...</a></li>
						</ul>
					</div>
					<div class="serve-pt border1 margin-top-20">
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
			<!--分页-->
			<div class="row">
				<div class="col-md-9 padding-left padding-right text-center">
					<nav>
						<ul class="pagination">
						    <li>
						        <a href="#" aria-label="Previous" id="prev">
						            <img src="images/wholeTrend/jtt_03.png"/><span aria-hidden="true">上一页</span>
						        </a>
						    </li>
						    <li><a href="#" class="checkActive">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li><a href="#">5</a></li>
						    <li><a href="#">6</a></li>
						    <li><a href="#" id="shenglve">......</a></li>
						    <li><a href="#">14</a></li>
						    <li><a href="#">15</a></li>
						    <li>
						        <a href="#" aria-label="Next" id="next">
						            <span aria-hidden="true">下一页</span><img src="images/wholeTrend/jtt_05.png"/>
						        </a>
						    </li>
						    <span id="totlePage">第1页/共15页</span>
						</ul>
					</nav>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery-2.1.4.min.js" ></script>
	<script src="${pageContext.request.contextPath}/jsp/qiantai/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
</html>
