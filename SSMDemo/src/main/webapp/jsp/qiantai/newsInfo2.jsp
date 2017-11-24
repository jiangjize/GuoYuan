<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>新闻资讯</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/slider-banner.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/jsp/qiantai/css/headerAndFooter.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/reset.css"/>
    <script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery-2.1.4.min.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/jsp/qiantai/js/bootstrap.min.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"
            charset="utf-8"></script>
    <style>

    </style>
    <script type="text/javascript">
        $(function () {
            /*选项卡*/
            var ary = location.href.split("&");
            jQuery(".slideTxtBox").slide({
                effect: ary[1],
                autoPlay: ary[2],
                trigger: ary[3],
                easing: ary[4],
                delayTime: ary[5],
                pnLoop: ary[6]
            });
        })
        function tiaozhuan(scod) {
            location.href = "${pageContext.request.contextPath}/IFrontColumn/LodingIndex?scod=" + scod;
        }

    </script>
</head>

<body>
<div class="container-fluid">
    <%--顶部--%>
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
                            <li><a href="">设为首页</a><span>|</span></li>
                            <li><a href="">收藏此页</a><span>|</span></li>
                            <li><a href="">联系我们</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Log--%>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-sm-3 col-md-3 padding-left">
            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/logo_06.png" id="logo"/>
        </div>
        <div class="col-sm-6 col-md-6 col-md-offset-1 padding-right">
            <div class="col-md-7 search">
                <div class="input-group">
                    <span class="input-group-addon"><img
                            src="${pageContext.request.contextPath}/jsp/qiantai/images/index/search_12.png"/></span>
                    <input type="text" class="form-control" id="searchText" aria-describedby="inputGroupSuccess1Status">
                    <button class="btn btn-default list-inline border-radius" id="searchBtn" type="button">搜索</button>
                </div>
            </div>
            <div class="col-md-5 padding-right">
                <p class="text-right telText bold font-family">全国服务电话:</p>
                <p class="text-right tel bold font-family">400-1234-1234</p>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
    <!--导航-->
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-sm-10 col-md-10 padding-left padding-right">
            <nav class="navbar navbar-inverse navbar-static-top">
                <div class="container">
                    <div id="navbar" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav font-family">
                            <li><a href="index.jsp">首页</a></li>
                            <li class="active"><a href="newsInfo.jsp">新闻资讯</a></li>
                            <li><a href="marketTrend.jsp">行情趋势</a></li>
                            <li><a href="marketLive.jsp">市场实况</a></li>
                            <li><a href="supplyInfo.jsp">交易中心</a></li>
                            <li><a href="customReport.jsp">定制报告</a></li>
                            <li><a href="investInfo.jsp">投资咨询</a></li>
                            <li><a href="businessSystem.jsp">商务系统</a></li>
                            <li><a href="englishReport.jsp">English Report</a></li>
                        </ul>
                        <%-- <c:forEach items="${ColumnList}" var="col">
                             <ul class="nav navbar-nav font-family">
                                 <li <c:if test="${col.s_ccode=='xwzx'}">class="active"</c:if>><a href="#" onclick="tiaozhuan('${col.s_ccode}')">${col.s_cname}</a>
                                 </li>
                             </ul>
                         </c:forEach>--%>
                    </div>
                </div>
            </nav>
        </div>
        <div class="col-md-1"></div>

    </div>
    <!--面包屑-->
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10 padding-left">
            <span id="addressSpan">您所在的位置是：<a href="${pageContext.request.contextPath}/IFrontColumn/LodingIndex">首页</a>&nbsp;>&nbsp;<a
                    href="#">新闻资讯</a></span>
        </div>
        <div class="col-md-1"></div>

    </div>
    <!--国内咨询-->
    <div class="row margin-top-30">
        <div class="col-md-1"></div>
        <div class="col-sm-10 col-md-10 padding-left padding-right">
            <div class="content-state">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="images/index/nav1_07.png" id="titleBg"/>
                        <span id="title" class="font-family">国内咨询</span>
                    </div>
                    <div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
                        <a href=""><span id="more">更多>></span></a>
                    </div>
                </div>


                <div class="col-sm-12 col-md-12">
                    <div class="content-state-con-up">
                        <div class="col-sm-2 col-md-2">
                            <img src="images/other/pic_07.png"/>
                        </div>
                        <div class="col-sm-10 col-md-10 newsCon padding-right">
                            <h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
                            <p id="content-state-con-p">
                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                            </p>
                            <p id="checkAll-state"><a href="newsDetails.html">[&nbsp;查看全文&nbsp;]</a></p>
                        </div>
                    </div>
                </div>
                <div class="br">&nbsp;</div>
                <div class="row margin-left-15">
                    <div class="col-sm-6 col-md-6">
                        <img src="images/index/dott_03.png"/><a href="newsDetails.html">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                            class="pull-right">[07-30]</span>
                    </div>
                    <div class="col-sm-6 col-md-6">
                    <img src="images/index/dott_03.png"/><a
                        href="newsDetails.html">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                        class="pull-right">[07-30]</span>
                </div>
            </div>
        </div>
    </div>
        <div class="col-md-1"></div>
    </div>



<!--国际咨询-->
<!--综合排名-->
<!--友情链接-->
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10 padding-left padding-right">
        <div class="content-friend-link">
						<span id="linkTxt">
							友情链接：
						</span>
            <ul>
                <a href="">
                    <li>木材大数据平台</li>
                </a>
                <a href="">
                    <li>木材大数据平台</li>
                </a>
                <a href="">
                    <li>木材大数据平台</li>
                </a>
                <a href="">
                    <li>木材大数据平台</li>
                </a>
                <a href="">
                    <li>木材大数据平台</li>
                </a>
                <a href="">
                    <li>木材大数据平台</li>
                </a>
                <a href="">
                    <li>木材大数据平台</li>
                </a>
                <a href="">
                    <li>木材大数据平台</li>
                </a>
                <a href="">
                    <li>木材大数据平台</li>
                </a>
                <a href="">
                    <li>木材大数据平台</li>
                </a>
            </ul>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>
<%--底部--%>
<div class="row footer">
    <div class="col-md-12 ">
        <ul>
            <li><a href="">关于我们</a><span>|</span></li>
            <li><a href="">业务体系</a><span>|</span></li>
            <li><a href="">企业动态</a><span>|</span></li>
            <li><a href="">联系我们</a><span>|</span></li>
            <li><a href="">法律声明</a><span>|</span></li>
            <li><a href="">服务协议</a><span>|</span></li>
            <li><a href="">Investor Relations</a><span>|</span></li>
            <li><a href="">用户体验中心</a><span>|</span></li>
            <li><a href="">关于会员</a><span>|</span></li>
            <li><a href="">我要提意见</a></li>
        </ul>
    </div>
    <div class="row address">
        CopyRight © 2000-2015 BitAuto,All Rights Reserved. 版权所有 北京国数源科技有限公司
    </div>
    <div class="row telphone">
        咨询热线：4000-168-168 (每天9:00—17:30，法定节日休息）
    </div>
    <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/rcode_03.png" id="rcode"/>
</div>
</div>


</body>


</html>
