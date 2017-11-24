<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %><html>
	<head>
		<title>定制报告-免费</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/slider-banner.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/headerAndFooter.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/customReport.css"/>
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
					            <%--<ul class="nav navbar-nav font-family">
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
					<h4 class="analysis">2015年原木进口情况分析报告</h4>
					<hr id="hr" />
					<div class="row">
						<div class="col-sm-4">
							<img src="images/customReport/book_03.jpg" />
						</div>
						<div class="col-sm-8">
							<div class="box">
								<p class="dianzi">电子版价格：<span class="red">免费</span></p>
								<p class="paper">纸质版价格：<span></span></p>
								<p >电子版+纸质版价格：<span></span></p>
							</div>
							<a href="customReport-buy.jsp"><button class="buy" type="button"></button></a>
							<div class="appear">
								<p>出版时间：<span>2016年6月</span></p>
								<p>报告页数：<span>暂无</span></p>
								<p >报告字数：<span>30万字</span></p>
							</div>
						</div>
					</div>
					<div class="row text-left">
						<div class="col-sm-12 col-md-12">
							<div class="way">
								<h5 class="red">数据来源与研究方法</h5>
								<p> 我们主要以定量调研（包括定点街头访问、街头拦截访问、预约面访、入户访问、电话访问等）和定性调研（包括小组座谈会、深访、配对访问、家庭访问、观察法等）相结合的方式，对进口食品行业内相关的知名专家、重点生产企业主要代理商、主要销售负责人及主要客户（用户）进行访谈，从而获得行业相关市场的一手信息资料，并综合国家统计局海关总署、国家发改委、工商总局、商务部、工信部、行业协会等权威部门发布的统计信息和数据以及行业年鉴数据、财经媒体信息.</p>
								<div class="jj-slideTxtBox margin-top-30">
									<div class="hd">
										<ul><li>报告简介</li><li>目录简介</li></ul>
									</div>
									<div class="bd">
										<div class="row">
											<div class="col-sm-12 col-md-12 pd-20">
												<p>我们主要以定量调研（包括定点街头访问、街头拦截访问、预约面访、入户访问、电话访问等）和定性调研（包括小组座谈会、深访、配对访问、家庭访问、观察法等）相结合的方式，对进口食品行业内相关的知名专家、重点生产企业主要代理商、主要销售负责人及主要客户（用户）进行访谈，从而获得行业相关市场的一手信息资料，并综合国家统计局海关总署、国家发改委、工商总局、商务部、工信部、行业协会等权威部门发布的统计信息和数据以及行业年鉴数据、财经媒体信息. </p>
												<p>我们主要以定量调研（包括定点街头访问、街头拦截访问、预约面访、入户访问、电话访问等）和定性调研（包括小组座谈会、深访、配对访问、家庭访问、观察法等）相结合的方式，对进口食品行业内相关的知名专家、重点生产企业主要代理商、主要销售负责人及主要客户（用户）进行访谈，从而获得行业相关市场的一手信息资料，并综合国家统计局海关总署、国家发改委、工商总局、商务部、工信部、行业协会等权威部门发布的统计信息和数据以及行业年鉴数据、财经媒体信息.  </p>
												<p>我们主要以定量调研（包括定点街头访问、街头拦截访问、预约面访、入户访问、电话访问等）和定性调研（包括小组座谈会、深访、配对访问、家庭访问、观察法等）相结合的方式，对进口食品行业内相关的知名专家、重点生产企业主要代理商、主要销售负责人及主要客户（用户）进行访谈，从而获得行业相关市场的一手信息资料，并综合国家统计局海关总署、国家发改委、工商总局、商务部、工信部、行业协会等权威部门发布的统计信息和数据以及行业年鉴数据、财经媒体信息.  </p>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-12 col-md-12 pd-20">
												<ul>
													<li>第一章 锂离子电池概述 </li>
													<ul>
														<li><a href="#">第一节 定义和原理 </a></li>
														<li><a href="#">第二节 发展历程</a></li>
														<li><a href="#">第三节 组成部分 </a></li>
														<li><a href="#">第四节 主要种类</a></li>
													</ul>
												</ul>
												<ul>
													<li>第二章 全球锂离子电池产业发展概况</li>
													<ul>
														<li><a href="#">第一节 产业规模</a></li>
														<li><a href="#">第二节 竞争格局 </a></li>
														<li><a href="#">第三节 组成部分</a></li>
														<li><a href="#">第四节 基本特点</a></li>
													</ul>
												</ul>
												<ul>
													<li>第三章 中国锂离子电池产业发展概况   </li>
													<ul>
														<li><a href="#">第一节 发展环境 </a></li>
														<li><a href="#">第二节 产业规模</a></li>
														<li><a href="#">第三节 竞争格局</a></li>
													</ul>
												</ul>
												<ul>
													<li>第四章 中国锂离子电池产业链结构</li>
													<ul>
														<li><a href="#">第一节 产业链环节 </a></li>
														<li><a href="#">第二节 成本构成</a></li>
														<li><a href="#">第三节 应用结构 </a></li>
													</ul>
												</ul>
												<ul>
													<li>第五章 中国锂离子电池矿产资源市场分析</li>
													<ul>
														<li><a href="#">第一节 钴市场分析</a></li>
														<li><a href="#">第二节 镍市场分析</a></li>
														<li><a href="#">第三节 碳酸锂市场分析</a></li>
													</ul>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 col-md-3 padding-right">
					<img src="images/customReport/code.jpg" />
					<div class="pt">
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
					<div class="apply">我要定制报名需求</div>
					<div class="report">
						<p class="pt-title">服务咨询平台</p>	
						<ul>
							<li>2015年原木进口情况分析报告</li>
							<li>2015年原木进口情况分析报告</li>
							<li>2015年原木进口情况分析报告</li>
							<li>2015年原木进口情况分析报告</li>
							<li>2015年原木进口情况分析报告</li>
							<li>2015年原木进口情况分析报告</li>
							<li>2015年原木进口情况分析报告</li>
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
	<script src="js/transformer.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function(){
			/*选项卡*/
			var ary = location.href.split("&");
			jQuery(".jj-slideTxtBox").slide( { effect:ary[1],autoPlay:ary[2],trigger:ary[3],easing:ary[4],delayTime:ary[5],pnLoop:ary[6] });
		})
	</script>
</html>

