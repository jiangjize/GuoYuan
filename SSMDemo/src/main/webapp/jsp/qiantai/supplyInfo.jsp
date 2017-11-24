<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %><html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>供应信息</title>
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
					          <%--  <ul class="nav navbar-nav font-family">
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
										  <li <c:if test="${col.s_ccode=='jyzx'}">class="active"</c:if>><a href="#" onclick="tiaozhuan('${col.s_ccode}')">${col.s_cname}</a></li>
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
					<span id="addressSpan">您所在的位置是：<a href="index.jsp">首页</a>&nbsp;>&nbsp;<a href="supplyInfo.jsp">供求信息</a></span>
				</div>
			</div>
		</div>
		
		<!--主题内容-->
		<div class="container">
			<div class="row margin-top-25">
				<div class="col-md-12 padding-left supplyListTitle">
					<span id="supplyInfoTxt">供求信息：</span>
					<a href="${pageContext.request.contextPath}/jsp/qiantai/needRelease.jsp"><button class="btn btn-default needBtn redAn">需求发布</button></a>
					<a href="${pageContext.request.contextPath}/jsp/qiantai/supplyRelease.jsp"><button class="btn btn-default supplyBtn redAn btnActive-supply">供应发布</button></a>
				</div>
				<div class="col-md-12 padding-left padding-right">
					<div class="slideTxtBox">
						<div class="hd">
							<ul>
								<li>撮合交易</li>
								<li>供应信息</li>
								<li>求购信息</li>
							</ul>
						</div>
						<div class="bd">
							<div class="row">
								<div class="slideTxtBox">
									<div class="hd">
										<ul id="tradeUl" class="font-family">
											<div id="jianjiao">
												<img src="images/supply/sna_03.png"/>
											</div>
											<li>交易规定</li>
											<li>交易流程</li>
											<li>收费标准</li>
											<li>服务保证</li>
											<li>常见问题</li>
											<li>联系我们</li>
										</ul>
									</div>
									<div class="bd font12">
										<div class="row">
											<div class="col-sm-12 col-md-12 padding-right margin-top-55 tradeGuiDingCon">
												<h2 class="tradeGuiDing font-family">交易规定</h2>
												<h2 class="font-family text-center tradeTitle">广东鱼珠木材电子商务有限公司<br>木材王国交易中心规定</h2>
												<p>广东鱼珠木材电子商务有限公司所属木材王国网（http://www.yuzhuwood.com)推出的“广东鱼珠木材电子交易中心”服务是以木材王国网为中介，会员可委托木材王国网直接进行网上</p>
												<p class="text-indent">一、服务内容：为注册成为木材王国网收费会员的国内外生产商、经销商、出口商及终端用户提供木材及制品的现货交易撮合服务。广东鱼珠木材交电子易中心客服专员可协助客</p>
												<p class="text-indent">二、服务流程：</p>
												<ol class="serverLiuCheng">
													<li>客户通过鱼珠木材网、电话、传真、电子邮件等方式向木材王国网提交采购或销售产品的相关需求，并给予木材王国网相关产品明确无误的采购与销售指令。</li>
													<li>木材王国网对会员提出的采购与销售的相关指令进行审核确认后通过网站予以挂牌发布。</li>
													<li>木材王国网接受客户的询价和委托，同时积极按委托方的要求寻找合适的交易对象，对有意向的双方进行网下贸易撮合，并对交易合同的各项条款进行沟通协调。</li>
													<li>撮合达成交易意向后，由双方自行商定购销合同，委托方在达成交易合同后三天内一次性付清服务佣金，木材王国网督促双方落实已签订购销合同的执行，或按双方要求进行货</li>
												</ol>
												<p class="text-indent">三、收费标准：</p>
												<p class="text-indent">木材及制品的撮合服务佣金：按总成交额的3%向委托方一次性收取，特殊项目也可以由木材王国网与委托方共同商定收费标准。</p>
												<p class="text-indent">四、交易规定：</p>
												<ol class="serverLiuCheng">
													<li>木材王国网实行每天委托项目限额制，每天委托项目不超过10单，对委托单位和货物进行严格审定，实事求是，确保所委托事项的真实有效合法；优先选择实力强、信誉好的合</li>
													<li>委托方必须对提交的交易信息的完整性真实性有效性合法性负全责，并承担交易过程中的任何经济和法律责任； 严格遵守国家法律法规及相关规定，遵守鱼珠木材网上交易服</li>
												</ol>
												<p class="text-indent">五、联系方式：</p>
												<ol class="serverLiuCheng">
													<li>公司名称：广东鱼珠木材电子商务有限公司</li>
													<li>邮    编： 510711</li>
													<li>服务热线：020-82028196 罗小姐 徐小姐     &nbsp;&nbsp;&nbsp;020-82028077  温小姐</li>
													<li>传     真：020-22015826</li>
												</ol>
												<p class="text-indent">六、银行账号：</p>
												<ul class="serverLiuCheng">
													<li>（1）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：广州银行鱼珠支行</li>
													<li class="margin-left-30">帐号/卡号：8002  2590  1709  993</li>
													</li>
													<li>（2）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：中国工商银行美林支行（黄埔支行）</li>
													<li class="margin-left-30">账号/卡号：360 2010 2191 0004 3328</li>
													</li>
												</ul>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12 col-md-12 padding-right margin-top-55 tradeGuiDingCon">
												<h2 class="tradeGuiDing font-family">交易流程</h2>
												<h2 class="font-family text-center tradeTitle">广东鱼珠木材电子商务有限公司<br>木材王国交易中心规定</h2>
												<p>广东鱼珠木材电子商务有限公司所属木材王国网（http://www.yuzhuwood.com)推出的“广东鱼珠木材电子交易中心”服务是以木材王国网为中介，会员可委托木材王国网直接进行网上</p>
												<p class="text-indent">一、服务内容：为注册成为木材王国网收费会员的国内外生产商、经销商、出口商及终端用户提供木材及制品的现货交易撮合服务。广东鱼珠木材交电子易中心客服专员可协助客</p>
												<p class="text-indent">二、服务流程：</p>
												<ol class="serverLiuCheng">
													<li>客户通过鱼珠木材网、电话、传真、电子邮件等方式向木材王国网提交采购或销售产品的相关需求，并给予木材王国网相关产品明确无误的采购与销售指令。</li>
													<li>木材王国网对会员提出的采购与销售的相关指令进行审核确认后通过网站予以挂牌发布。</li>
													<li>木材王国网接受客户的询价和委托，同时积极按委托方的要求寻找合适的交易对象，对有意向的双方进行网下贸易撮合，并对交易合同的各项条款进行沟通协调。</li>
													<li>撮合达成交易意向后，由双方自行商定购销合同，委托方在达成交易合同后三天内一次性付清服务佣金，木材王国网督促双方落实已签订购销合同的执行，或按双方要求进行货</li>
												</ol>
												<p class="text-indent">三、收费标准：</p>
												<p class="text-indent">木材及制品的撮合服务佣金：按总成交额的3%向委托方一次性收取，特殊项目也可以由木材王国网与委托方共同商定收费标准。</p>
												<p class="text-indent">四、交易规定：</p>
												<ol class="serverLiuCheng">
													<li>木材王国网实行每天委托项目限额制，每天委托项目不超过10单，对委托单位和货物进行严格审定，实事求是，确保所委托事项的真实有效合法；优先选择实力强、信誉好的合</li>
													<li>委托方必须对提交的交易信息的完整性真实性有效性合法性负全责，并承担交易过程中的任何经济和法律责任； 严格遵守国家法律法规及相关规定，遵守鱼珠木材网上交易服</li>
												</ol>
												<p class="text-indent">五、联系方式：</p>
												<ol class="serverLiuCheng">
													<li>公司名称：广东鱼珠木材电子商务有限公司</li>
													<li>邮    编： 510711</li>
													<li>服务热线：020-82028196 罗小姐 徐小姐     &nbsp;&nbsp;&nbsp;020-82028077  温小姐</li>
													<li>传     真：020-22015826</li>
												</ol>
												<p class="text-indent">六、银行账号：</p>
												<ul class="serverLiuCheng">
													<li>（1）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：广州银行鱼珠支行</li>
													<li class="margin-left-30">帐号/卡号：8002  2590  1709  993</li>
													</li>
													<li>（2）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：中国工商银行美林支行（黄埔支行）</li>
													<li class="margin-left-30">账号/卡号：360 2010 2191 0004 3328</li>
													</li>
												</ul>
											</div>
										</div>
									
										<div class="row">
											<div class="col-sm-12 col-md-12 padding-right margin-top-55 tradeGuiDingCon">
												<h2 class="tradeGuiDing font-family">收费标准</h2>
												<h2 class="font-family text-center tradeTitle">广东鱼珠木材电子商务有限公司<br>木材王国交易中心规定</h2>
												<p>广东鱼珠木材电子商务有限公司所属木材王国网（http://www.yuzhuwood.com)推出的“广东鱼珠木材电子交易中心”服务是以木材王国网为中介，会员可委托木材王国网直接进行网上</p>
												<p class="text-indent">一、服务内容：为注册成为木材王国网收费会员的国内外生产商、经销商、出口商及终端用户提供木材及制品的现货交易撮合服务。广东鱼珠木材交电子易中心客服专员可协助客</p>
												<p class="text-indent">二、服务流程：</p>
												<ol class="serverLiuCheng">
													<li>客户通过鱼珠木材网、电话、传真、电子邮件等方式向木材王国网提交采购或销售产品的相关需求，并给予木材王国网相关产品明确无误的采购与销售指令。</li>
													<li>木材王国网对会员提出的采购与销售的相关指令进行审核确认后通过网站予以挂牌发布。</li>
													<li>木材王国网接受客户的询价和委托，同时积极按委托方的要求寻找合适的交易对象，对有意向的双方进行网下贸易撮合，并对交易合同的各项条款进行沟通协调。</li>
													<li>撮合达成交易意向后，由双方自行商定购销合同，委托方在达成交易合同后三天内一次性付清服务佣金，木材王国网督促双方落实已签订购销合同的执行，或按双方要求进行货</li>
												</ol>
												<p class="text-indent">三、收费标准：</p>
												<p class="text-indent">木材及制品的撮合服务佣金：按总成交额的3%向委托方一次性收取，特殊项目也可以由木材王国网与委托方共同商定收费标准。</p>
												<p class="text-indent">四、交易规定：</p>
												<ol class="serverLiuCheng">
													<li>木材王国网实行每天委托项目限额制，每天委托项目不超过10单，对委托单位和货物进行严格审定，实事求是，确保所委托事项的真实有效合法；优先选择实力强、信誉好的合</li>
													<li>委托方必须对提交的交易信息的完整性真实性有效性合法性负全责，并承担交易过程中的任何经济和法律责任； 严格遵守国家法律法规及相关规定，遵守鱼珠木材网上交易服</li>
												</ol>
												<p class="text-indent">五、联系方式：</p>
												<ol class="serverLiuCheng">
													<li>公司名称：广东鱼珠木材电子商务有限公司</li>
													<li>邮    编： 510711</li>
													<li>服务热线：020-82028196 罗小姐 徐小姐     &nbsp;&nbsp;&nbsp;020-82028077  温小姐</li>
													<li>传     真：020-22015826</li>
												</ol>
												<p class="text-indent">六、银行账号：</p>
												<ul class="serverLiuCheng">
													<li>（1）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：广州银行鱼珠支行</li>
													<li class="margin-left-30">帐号/卡号：8002  2590  1709  993</li>
													</li>
													<li>（2）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：中国工商银行美林支行（黄埔支行）</li>
													<li class="margin-left-30">账号/卡号：360 2010 2191 0004 3328</li>
													</li>
												</ul>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12 col-md-12 padding-right margin-top-55 tradeGuiDingCon">
												<h2 class="tradeGuiDing font-family">服务保证</h2>
												<h2 class="font-family text-center tradeTitle">广东鱼珠木材电子商务有限公司<br>木材王国交易中心规定</h2>
												<p>广东鱼珠木材电子商务有限公司所属木材王国网（http://www.yuzhuwood.com)推出的“广东鱼珠木材电子交易中心”服务是以木材王国网为中介，会员可委托木材王国网直接进行网上</p>
												<p class="text-indent">一、服务内容：为注册成为木材王国网收费会员的国内外生产商、经销商、出口商及终端用户提供木材及制品的现货交易撮合服务。广东鱼珠木材交电子易中心客服专员可协助客</p>
												<p class="text-indent">二、服务流程：</p>
												<ol class="serverLiuCheng">
													<li>客户通过鱼珠木材网、电话、传真、电子邮件等方式向木材王国网提交采购或销售产品的相关需求，并给予木材王国网相关产品明确无误的采购与销售指令。</li>
													<li>木材王国网对会员提出的采购与销售的相关指令进行审核确认后通过网站予以挂牌发布。</li>
													<li>木材王国网接受客户的询价和委托，同时积极按委托方的要求寻找合适的交易对象，对有意向的双方进行网下贸易撮合，并对交易合同的各项条款进行沟通协调。</li>
													<li>撮合达成交易意向后，由双方自行商定购销合同，委托方在达成交易合同后三天内一次性付清服务佣金，木材王国网督促双方落实已签订购销合同的执行，或按双方要求进行货</li>
												</ol>
												<p class="text-indent">三、收费标准：</p>
												<p class="text-indent">木材及制品的撮合服务佣金：按总成交额的3%向委托方一次性收取，特殊项目也可以由木材王国网与委托方共同商定收费标准。</p>
												<p class="text-indent">四、交易规定：</p>
												<ol class="serverLiuCheng">
													<li>木材王国网实行每天委托项目限额制，每天委托项目不超过10单，对委托单位和货物进行严格审定，实事求是，确保所委托事项的真实有效合法；优先选择实力强、信誉好的合</li>
													<li>委托方必须对提交的交易信息的完整性真实性有效性合法性负全责，并承担交易过程中的任何经济和法律责任； 严格遵守国家法律法规及相关规定，遵守鱼珠木材网上交易服</li>
												</ol>
												<p class="text-indent">五、联系方式：</p>
												<ol class="serverLiuCheng">
													<li>公司名称：广东鱼珠木材电子商务有限公司</li>
													<li>邮    编： 510711</li>
													<li>服务热线：020-82028196 罗小姐 徐小姐     &nbsp;&nbsp;&nbsp;020-82028077  温小姐</li>
													<li>传     真：020-22015826</li>
												</ol>
												<p class="text-indent">六、银行账号：</p>
												<ul class="serverLiuCheng">
													<li>（1）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：广州银行鱼珠支行</li>
													<li class="margin-left-30">帐号/卡号：8002  2590  1709  993</li>
													</li>
													<li>（2）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：中国工商银行美林支行（黄埔支行）</li>
													<li class="margin-left-30">账号/卡号：360 2010 2191 0004 3328</li>
													</li>
												</ul>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12 col-md-12 padding-right margin-top-55 tradeGuiDingCon">
												<h2 class="tradeGuiDing font-family">常见问题</h2>
												<h2 class="font-family text-center tradeTitle">广东鱼珠木材电子商务有限公司<br>木材王国交易中心规定</h2>
												<p>广东鱼珠木材电子商务有限公司所属木材王国网（http://www.yuzhuwood.com)推出的“广东鱼珠木材电子交易中心”服务是以木材王国网为中介，会员可委托木材王国网直接进行网上</p>
												<p class="text-indent">一、服务内容：为注册成为木材王国网收费会员的国内外生产商、经销商、出口商及终端用户提供木材及制品的现货交易撮合服务。广东鱼珠木材交电子易中心客服专员可协助客</p>
												<p class="text-indent">二、服务流程：</p>
												<ol class="serverLiuCheng">
													<li>客户通过鱼珠木材网、电话、传真、电子邮件等方式向木材王国网提交采购或销售产品的相关需求，并给予木材王国网相关产品明确无误的采购与销售指令。</li>
													<li>木材王国网对会员提出的采购与销售的相关指令进行审核确认后通过网站予以挂牌发布。</li>
													<li>木材王国网接受客户的询价和委托，同时积极按委托方的要求寻找合适的交易对象，对有意向的双方进行网下贸易撮合，并对交易合同的各项条款进行沟通协调。</li>
													<li>撮合达成交易意向后，由双方自行商定购销合同，委托方在达成交易合同后三天内一次性付清服务佣金，木材王国网督促双方落实已签订购销合同的执行，或按双方要求进行货</li>
												</ol>
												<p class="text-indent">三、收费标准：</p>
												<p class="text-indent">木材及制品的撮合服务佣金：按总成交额的3%向委托方一次性收取，特殊项目也可以由木材王国网与委托方共同商定收费标准。</p>
												<p class="text-indent">四、交易规定：</p>
												<ol class="serverLiuCheng">
													<li>木材王国网实行每天委托项目限额制，每天委托项目不超过10单，对委托单位和货物进行严格审定，实事求是，确保所委托事项的真实有效合法；优先选择实力强、信誉好的合</li>
													<li>委托方必须对提交的交易信息的完整性真实性有效性合法性负全责，并承担交易过程中的任何经济和法律责任； 严格遵守国家法律法规及相关规定，遵守鱼珠木材网上交易服</li>
												</ol>
												<p class="text-indent">五、联系方式：</p>
												<ol class="serverLiuCheng">
													<li>公司名称：广东鱼珠木材电子商务有限公司</li>
													<li>邮    编： 510711</li>
													<li>服务热线：020-82028196 罗小姐 徐小姐     &nbsp;&nbsp;&nbsp;020-82028077  温小姐</li>
													<li>传     真：020-22015826</li>
												</ol>
												<p class="text-indent">六、银行账号：</p>
												<ul class="serverLiuCheng">
													<li>（1）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：广州银行鱼珠支行</li>
													<li class="margin-left-30">帐号/卡号：8002  2590  1709  993</li>
													</li>
													<li>（2）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：中国工商银行美林支行（黄埔支行）</li>
													<li class="margin-left-30">账号/卡号：360 2010 2191 0004 3328</li>
													</li>
												</ul>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-12 col-md-12 padding-right margin-top-55 tradeGuiDingCon">
												<h2 class="tradeGuiDing font-family">联系我们</h2>
												<h2 class="font-family text-center tradeTitle">广东鱼珠木材电子商务有限公司<br>木材王国交易中心规定</h2>
												<p>广东鱼珠木材电子商务有限公司所属木材王国网（http://www.yuzhuwood.com)推出的“广东鱼珠木材电子交易中心”服务是以木材王国网为中介，会员可委托木材王国网直接进行网上</p>
												<p class="text-indent">一、服务内容：为注册成为木材王国网收费会员的国内外生产商、经销商、出口商及终端用户提供木材及制品的现货交易撮合服务。广东鱼珠木材交电子易中心客服专员可协助客</p>
												<p class="text-indent">二、服务流程：</p>
												<ol class="serverLiuCheng">
													<li>客户通过鱼珠木材网、电话、传真、电子邮件等方式向木材王国网提交采购或销售产品的相关需求，并给予木材王国网相关产品明确无误的采购与销售指令。</li>
													<li>木材王国网对会员提出的采购与销售的相关指令进行审核确认后通过网站予以挂牌发布。</li>
													<li>木材王国网接受客户的询价和委托，同时积极按委托方的要求寻找合适的交易对象，对有意向的双方进行网下贸易撮合，并对交易合同的各项条款进行沟通协调。</li>
													<li>撮合达成交易意向后，由双方自行商定购销合同，委托方在达成交易合同后三天内一次性付清服务佣金，木材王国网督促双方落实已签订购销合同的执行，或按双方要求进行货</li>
												</ol>
												<p class="text-indent">三、收费标准：</p>
												<p class="text-indent">木材及制品的撮合服务佣金：按总成交额的3%向委托方一次性收取，特殊项目也可以由木材王国网与委托方共同商定收费标准。</p>
												<p class="text-indent">四、交易规定：</p>
												<ol class="serverLiuCheng">
													<li>木材王国网实行每天委托项目限额制，每天委托项目不超过10单，对委托单位和货物进行严格审定，实事求是，确保所委托事项的真实有效合法；优先选择实力强、信誉好的合</li>
													<li>委托方必须对提交的交易信息的完整性真实性有效性合法性负全责，并承担交易过程中的任何经济和法律责任； 严格遵守国家法律法规及相关规定，遵守鱼珠木材网上交易服</li>
												</ol>
												<p class="text-indent">五、联系方式：</p>
												<ol class="serverLiuCheng">
													<li>公司名称：广东鱼珠木材电子商务有限公司</li>
													<li>邮    编： 510711</li>
													<li>服务热线：020-82028196 罗小姐 徐小姐     &nbsp;&nbsp;&nbsp;020-82028077  温小姐</li>
													<li>传     真：020-22015826</li>
												</ol>
												<p class="text-indent">六、银行账号：</p>
												<ul class="serverLiuCheng">
													<li>（1）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：广州银行鱼珠支行</li>
													<li class="margin-left-30">帐号/卡号：8002  2590  1709  993</li>
													</li>
													<li>（2）开户名称：广东鱼珠木材电子商务有限公司
													<li class="margin-left-30">开户银行：中国工商银行美林支行（黄埔支行）</li>
													<li class="margin-left-30">账号/卡号：360 2010 2191 0004 3328</li>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-sm-12 col-md-12 padding-right">
									<ul id="supplyListUl" class="text-center">
										<li id="proName">产品名称</li><li>所属分类</li><li>产地</li><li>等级</li><li>规格</li><li>品牌</li><li>供应数量</li><li>发布时间</li><li id="proDetail">详情</li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
								</div>
							</div>
							
							<div class="row">
								<div class="col-sm-12 col-md-12 padding-right">
									<ul id="supplyListUl" class="text-center">
										<li id="proName">产品名称</li><li>所属分类</li><li>产地</li><li>等级</li><li>规格</li><li>品牌</li><li>供应数量</li><li>发布时间</li><li id="proDetail">详情</li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
									</ul>
									<ul id="supplyListUl" class="text-center">
										<li id="proName"><img src="images/other/supply_03.png"/><a href="">辐射松圆木</a></li><li>原木</li><li>中国</li><li>ABCD</li><li>1860*189*4.0 mm</li><li>品牌</li><li>14056.41m²</li><li>2016-08-17</li><li id="proDetail"><a href="supplyDetails.jsp"><button class="btn btn-default detailBtn">详情</button></a></li>
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
	<script src="js/jquery-2.1.4.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function(){			
			/*选项卡*/
			var ary = location.href.split("&");
			jQuery(".slideTxtBox").slide( { effect:ary[1],autoPlay:ary[2],trigger:ary[3],easing:ary[4],delayTime:ary[5],pnLoop:ary[6] });
		});
	</script>
</html>
