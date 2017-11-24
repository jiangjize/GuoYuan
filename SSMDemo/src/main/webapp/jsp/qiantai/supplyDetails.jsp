<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %><html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>供应信息详情</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/headerAndFooter.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/select-supply.css"/>
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
					            	<li><a href="index.jsp">首页</a></li>
						            <li><a href="newsInfo.jsp">新闻资讯</a></li>
						            <li><a href="marketTrend.jsp">行情趋势</a></li>
						            <li><a href="marketLive.jsp">市场实况</a></li>
						            <li class="active"><a href="supplyInfo.jsp">交易中心</a></li>
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
					<span id="addressSpan">您所在的位置是：<a href="index.jsp">首页</a>&nbsp;>&nbsp;<a href="supplyInfo.jsp">供求信息</a>&nbsp;>&nbsp;<a href="supplyDetails.jsp">详情</a></span>
				</div>
			</div>
		</div>
	
		<!--主题内容-->
		<div class="container">
			<div class="row margin-top-25">
				<div class="col-md-12 padding-left padding-right">
					<div class="col-md-5 padding-left padding-right">
						<img src="images/other/de_03.png" id="supply-detail-bigImg"/>
						<ul id="supply-detail-smallimgUl">
							<li><a href=""><img src="images/other/de_03.png"/></a></li>
							<li><a href=""><img src="images/other/de_03.png"/></a></li>
							<li><a href=""><img src="images/other/de_03.png"/></a></li>
							<li><a href=""><img src="images/other/de_03.png"/></a></li>
						</ul>
					</div>
					<div class="col-md-7 padding-left padding-right supplyDetailsInfo">
						<h2 class="font-family">辐射松原木——原木<span id="fabuTime">发布时间：2016年8月8日</span></h2>
						<ul id="supplyDetailsInfoUl">
							<li><span id="name">规格</span>1860*189*4.0 mm</li>
							<li><span id="name">等级</span>ABCD</li>
							<li><span id="name">供应数量</span>14056.41m²</li>
							<li><span id="name">品牌</span>1860*189*4.0 mm</li>
							<li><span id="name">产地</span>黑龙江</li>
							<li><span id="name">供应编号</span>SBHH0197</li>
						</ul>
						<ul id="supplyDetailsInfoUl">
							<h2 class="font-family">商家信息</h2>
							<li><span id="name-1"><img src="images/supply/det_07.png"/>公司名称：北京创信软通科技有限公司</span></li>
							<li><span id="name-2"><img src="images/supply/det_10.png"/>联系人：张三</span><span id="name-2"><img src="images/supply/det_12.png"/>联系电话：189-1110-1234</span></li>
							<li><span id="name-2"><img src="images/supply/det_17.png"/>传真：078925897</span><span id="name-2"><img src="images/supply/det_16.png"/>邮箱：1135897858@163.com</span></li>
							<li><span id="name-1"><img src="images/supply/det_20.png"/>联系地址：北京市海淀区中关村南大街26号院</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<!--友情链接-->
		<div class="container margin-top-30">
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
</html>
