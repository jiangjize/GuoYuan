<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>国数源-中国木材大数据平台</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/slider-banner.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/jsp/qiantai/css/headerAndFooter.css"/>
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
                        <c:if test="${user.s_uname==null}">
                            <span id="welcome">您好，欢迎您进入中国木材大数据平台</span>
                            <span id="loginOrRes"><a href="${pageContext.request.contextPath}/jsp/qiantai/login.jsp">登陆</a> /
                            <a href="registerNotice.jsp">注册</a></span>
                        </c:if>
                        <c:if test="${user.s_uname!=null}">
                            <span id="info">您好，${user.s_uname}，欢迎您进入中国木材大数据平台</span>
                            <span id="loginOrRes">
                                <a href="${pageContext.request.contextPath}/IFrontUser/Zhuxiao" class="btn-link btn-warning">注销</a>
                        </c:if>

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
            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/logo_06.png" id="logo"/>
        </div>
        <div class="col-sm-7 col-md-7 col-md-offset-1 padding-right">
            <div class="col-md-7 search">
                <div class="input-group">
                    <span class="input-group-addon"><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/search_12.png"/></span>
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

                        <c:forEach items="${ColumnList}" var="col">
                            <ul class="nav navbar-nav font-family">
                                <li <c:if test="${col.s_ccode=='sy'}">class="active"</c:if>><a href="#" onclick="tiaozhuan('${col.s_ccode}')">${col.s_cname}</a></li>
                            </ul>
                        </c:forEach>


                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>

<!--新闻资讯-->
<div class="container">
    <div class="row">
        <div class="col-sm-8 col-md-8 padding-left">
            <div class="content-news">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png" id="titleBg"/>

                            <span id="title" class="font-family">
									新闻资讯
								</span>
                    </div>
                    <div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
                        <a href=""><span id="more">
									更多>>
								</span></a>
                    </div>
                </div>
                <div class="content-news-con">
                    <div class="content-news-con-up">
                        <div class="col-sm-2 col-md-2">
                            <img src="http://192.168.50.115/imgextra/xiaoniu.png" id="titleBg"/>
                            <%--<img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/news_03.png"/>--%>
                        </div>
                        <div class="col-sm-10 col-md-10 newsCon">
                            <h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报报告发展趋势研究报报告。</h4>
                            <p id="content-news-con-p">
                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析
                            </p>
                            <p id="checkAll"><a href="">[&nbsp;查看全文&nbsp;]</a></p>
                        </div>
                    </div>
                    <div class="content-news-con-down">
                        <div class="col-sm-12 col-md-12">
                            <ul>
                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a
                                        href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span>
                                </li>
                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a
                                        href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span>
                                </li>
                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a
                                        href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span>
                                </li>
                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a
                                        href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-md-4 padding-right padding-left">
            <div class="banner-news">
                <div class="yx-rotaion">
                    <ul class="rotaion_list">
                        <li><a href=""><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/1.png" alt="美国俄州遭遇龙卷风 已致91人死"
                                            style="width: 385px; height: 290px;"></a></li>
                        <li><a href=""><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/2.png" alt="美国俄州遭遇龙卷风 已致91人死"
                                            style="width: 385px; height: 290px;"></a></li>
                        <li><a href=""><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/3.png" alt="美国俄州遭遇龙卷风 已致91人死"
                                            style="width: 385px; height: 290px;"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!--行业趋势-->
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 padding-left padding-right">
            <div class="content-state">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png" id="titleBg"/>
                        <span id="title" class="font-family">
									行业趋势
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
                            <ul>
                                <li>教育</li>
                                <li>培训</li>
                                <li>出国</li>
                            </ul>
                        </div>
                        <div class="bd">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="content-state-con-up">
                                        <div class="col-sm-2 col-md-2">
                                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/pic_07.png"/>
                                        </div>
                                        <div class="col-sm-10 col-md-10 newsCon padding-right">
                                            <h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
                                            <p id="content-state-con-p">
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                            </p>
                                            <p id="checkAll-state"><a href="">[&nbsp;查看全文&nbsp;]</a></p>
                                        </div>
                                    </div>

                                    <div class="content-state-con-down">
                                        <div class="col-sm-6 col-md-6">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-md-6 padding-right">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
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
                                            <p id="checkAll-state"><a href="">[&nbsp;查看全文&nbsp;]</a></p>
                                        </div>
                                    </div>

                                    <div class="content-state-con-down">
                                        <div class="col-sm-6 col-md-6">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-md-6 padding-right">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="content-state-con-up">
                                        <div class="col-sm-2 col-md-2">
                                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/pic_07.png"/>
                                        </div>
                                        <div class="col-sm-10 col-md-10 newsCon padding-right">
                                            <h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
                                            <p id="content-state-con-p">
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                            </p>
                                            <p id="checkAll-state"><a href="">[&nbsp;查看全文&nbsp;]</a></p>
                                        </div>
                                    </div>

                                    <div class="content-state-con-down">
                                        <div class="col-sm-6 col-md-6">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-md-6 padding-right">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
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
    </div>

    <div class="row">
        <div class="col-sm-12 col-md-12 padding-left padding-right">
            <div class="content-state-price-title">
                <h3 id="price-title" class="font-family">港口价格库存<a href=""><span id="more">查看更多>></span></a></h3>
            </div>
            <div class="content-state-price-con">
                <ul>
                    <li>
                        <h4 id="price-info"><span id="name">辐射松原木(4m中A)</span><span id="address">万方码头</span><span
                                id="price-date">06-06</span></h4>
                        <div class="price-div">
                            <h4 id="price-info-desc"><span id="price-txt">价格<span id="price-value" class="red">800<span
                                    id="danwei" class="font-family">元</span></span></span><span id="price-up"
                                                                                                class="red"><img
                                    src="${pageContext.request.contextPath}/jsp/qiantai/images/index/jt_03.png"/>30元</span><span id="price-date"
                                                                                  class="red">5.8%</span></h4>
                            <h4 id="price-info-desc"><span id="price-txt">库存<span id="price-value"
                                                                                  class="green">17.32 <span id="danwei"
                                                                                                            class="font-family">万方</span></span></span><span
                                    id="price-down" class="green"><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/jt_06.png"/>1.75万方</span><span
                                    id="price-date" class="green">3.8%</span></h4>
                            <div id="line-shu"></div>
                        </div>

                    </li>
                    <li>
                        <h4 id="price-info"><span id="name">辐射松原木(4m中A)</span><span id="address">万方码头</span><span
                                id="price-date">06-06</span></h4>
                        <div class="price-div">
                            <h4 id="price-info-desc"><span id="price-txt">价格<span id="price-value" class="red">800<span
                                    id="danwei" class="font-family">元</span></span></span><span id="price-up"
                                                                                                class="red"><img
                                    src="${pageContext.request.contextPath}/jsp/qiantai/images/index/jt_03.png"/>30元</span><span id="price-date"
                                                                                  class="red">5.8%</span></h4>
                            <h4 id="price-info-desc"><span id="price-txt">库存<span id="price-value"
                                                                                  class="green">17.32 <span id="danwei"
                                                                                                            class="font-family">万方</span></span></span><span
                                    id="price-down" class="green"><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/jt_06.png"/>1.75万方</span><span
                                    id="price-date" class="green">3.8%</span></h4>
                            <div id="line-shu"></div>
                        </div>
                    </li>
                    <li>
                        <h4 id="price-info"><span id="name">辐射松原木(4m中A)</span><span id="address">万方码头</span><span
                                id="price-date">06-06</span></h4>
                        <div class="price-div">
                            <h4 id="price-info-desc"><span id="price-txt">价格<span id="price-value" class="red">800<span
                                    id="danwei" class="font-family">元</span></span></span><span id="price-up"
                                                                                                class="red"><img
                                    src="${pageContext.request.contextPath}/jsp/qiantai/images/index/jt_03.png"/>30元</span><span id="price-date"
                                                                                  class="red">5.8%</span></h4>
                            <h4 id="price-info-desc"><span id="price-txt">库存<span id="price-value"
                                                                                  class="green">17.32 <span id="danwei"
                                                                                                            class="font-family">万方</span></span></span><span
                                    id="price-down" class="green"><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/jt_06.png"/>1.75万方</span><span
                                    id="price-date" class="green">3.8%</span></h4>
                            <div id="line-shu"></div>
                        </div>
                    </li>
                    <li>
                        <h4 id="price-info"><span id="name">辐射松原木(4m中A)</span><span id="address">万方码头</span><span
                                id="price-date">06-06</span></h4>
                        <div class="price-div">
                            <h4 id="price-info-desc"><span id="price-txt">价格<span id="price-value" class="red">800<span
                                    id="danwei" class="font-family">元</span></span></span><span id="price-up"
                                                                                                class="red"><img
                                    src="${pageContext.request.contextPath}/jsp/qiantai/images/index/jt_03.png"/>30元</span><span id="price-date"
                                                                                  class="red">5.8%</span></h4>
                            <h4 id="price-info-desc"><span id="price-txt">库存<span id="price-value"
                                                                                  class="green">17.32 <span id="danwei"
                                                                                                            class="font-family">万方</span></span></span><span
                                    id="price-down" class="green"><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/jt_06.png"/>1.75万方</span><span
                                    id="price-date" class="green">3.8%</span></h4>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!--市场实况-->
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 padding-left padding-right">
            <div class="content-state">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png" id="titleBg"/>
                        <span id="title" class="font-family">
									市场实况
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
                            <ul>
                                <li>实时价格</li>
                                <li>实时库存</li>
                                <li>市场解读</li>
                            </ul>
                        </div>
                        <div class="bd">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="content-state-con-up">
                                        <div class="col-sm-2 col-md-2">
                                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/pic_07.png"/>
                                        </div>
                                        <div class="col-sm-10 col-md-10 newsCon padding-right">
                                            <h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
                                            <p id="content-state-con-p">
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                            </p>
                                            <p id="checkAll-state"><a href="">[&nbsp;查看全文&nbsp;]</a></p>
                                        </div>
                                    </div>

                                    <div class="content-state-con-down">
                                        <div class="col-sm-6 col-md-6">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-md-6 padding-right">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="content-state-con-up">
                                        <div class="col-sm-2 col-md-2">
                                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/pic_07.png"/>
                                        </div>
                                        <div class="col-sm-10 col-md-10 newsCon padding-right">
                                            <h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
                                            <p id="content-state-con-p">
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                            </p>
                                            <p id="checkAll-state"><a href="">[&nbsp;查看全文&nbsp;]</a></p>
                                        </div>
                                    </div>

                                    <div class="content-state-con-down">
                                        <div class="col-sm-6 col-md-6">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-md-6 padding-right">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="content-state-con-up">
                                        <div class="col-sm-2 col-md-2">
                                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/pic_07.png"/>
                                        </div>
                                        <div class="col-sm-10 col-md-10 newsCon padding-right">
                                            <h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
                                            <p id="content-state-con-p">
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                            </p>
                                            <p id="checkAll-state"><a href="">[&nbsp;查看全文&nbsp;]</a></p>
                                        </div>
                                    </div>

                                    <div class="content-state-con-down">
                                        <div class="col-sm-6 col-md-6">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-md-6 padding-right">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
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
    </div>
</div>

<!--广告图-->
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 adDiv padding-left padding-right">
            <ul>
                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/111.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/111.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/111.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/111.jpg"/></li>
            </ul>
        </div>
    </div>
</div>

<!--定制报告、投资讯息、供应信息、需求信息-->
<div class="container">
    <div class="row">
        <div class="col-sm-11 col-md-6 padding-left padding-right">
            <div class="content-dingzhi">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png" id="titleBg"/>
                        <span id="title" class="font-family">
									定制报告
								</span>
                    </div>
                    <div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
                        <a href=""><span id="more">
									更多>>
								</span></a>
                    </div>
                </div>
                <div class="content-news-con-down">
                    <div class="col-sm-12 col-md-12">
                        <ul id="dingzhi-ul">
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a
                                    href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a
                                    href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a
                                    href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a
                                    href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a
                                    href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a
                                    href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span id="date">[07-30]</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-11 col-md-6 padding-right">
            <div class="content-dingzhi">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png" id="titleBg"/>
                        <span id="title" class="font-family">
									投资咨询
								</span>
                    </div>
                    <div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
                        <a href=""><span id="more">
									更多>>
								</span></a>
                    </div>
                </div>
                <div class="content-news-con-down">
                    <div class="col-sm-12 col-md-12">
                        <ul id="dingzhi-ul">
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">我国将发展低能耗绿色建筑 推动节能建材</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">我国将发展低能耗绿色建筑 推动节能建材</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a>
                            </li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">煤炭行业最新消息：煤炭市场仍将持续低位运行</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">成品油调价最新消息：年内第二次下调</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">中国环境统计年鉴2013</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-11 col-md-6 padding-left padding-right">
            <div class="content-dingzhi">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png" id="titleBg"/>
                        <span id="title" class="font-family">
									投资咨询
								</span>
                    </div>
                    <div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
                        <a href=""><span id="more">
									更多>>
								</span></a>
                    </div>
                </div>
                <div class="content-news-con-down">
                    <div class="col-sm-12 col-md-12">
                        <ul id="dingzhi-ul">
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">我国将发展低能耗绿色建筑 推动节能建材</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">我国将发展低能耗绿色建筑 推动节能建材</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a>
                            </li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">煤炭行业最新消息：煤炭市场仍将持续低位运行</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">成品油调价最新消息：年内第二次下调</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">中国环境统计年鉴2013</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-11 col-md-6 padding-right">
            <div class="content-dingzhi">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png" id="titleBg"/>
                        <span id="title" class="font-family">
									投资咨询
								</span>
                    </div>
                    <div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
                        <a href=""><span id="more">
									更多>>
								</span></a>
                    </div>
                </div>
                <div class="content-news-con-down">
                    <div class="col-sm-12 col-md-12">
                        <ul id="dingzhi-ul">
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">我国将发展低能耗绿色建筑 推动节能建材</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">我国将发展低能耗绿色建筑 推动节能建材</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a>
                            </li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">煤炭行业最新消息：煤炭市场仍将持续低位运行</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">成品油调价最新消息：年内第二次下调</a></li>
                            <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">中国环境统计年鉴2013</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--综合排名-->
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 padding-left padding-right">
            <div class="content-state">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png" id="titleBg"/>
                        <span id="title" class="font-family">
									综合排名
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
                            <ul>
                                <li>进口国别</li>
                                <li>进口企业</li>
                                <li>出口企业</li>
                            </ul>
                        </div>
                        <div class="bd">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="content-state-con-up">
                                        <div class="col-sm-2 col-md-2">
                                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/pic_07.png"/>
                                        </div>
                                        <div class="col-sm-10 col-md-10 newsCon padding-right">
                                            <h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
                                            <p id="content-state-con-p">
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                            </p>
                                            <p id="checkAll-state"><a href="">[&nbsp;查看全文&nbsp;]</a></p>
                                        </div>
                                    </div>

                                    <div class="content-state-con-down">
                                        <div class="col-sm-6 col-md-6">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-md-6 padding-right">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="content-state-con-up">
                                        <div class="col-sm-2 col-md-2">
                                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/pic_07.png"/>
                                        </div>
                                        <div class="col-sm-10 col-md-10 newsCon padding-right">
                                            <h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
                                            <p id="content-state-con-p">
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                            </p>
                                            <p id="checkAll-state"><a href="">[&nbsp;查看全文&nbsp;]</a></p>
                                        </div>
                                    </div>

                                    <div class="content-state-con-down">
                                        <div class="col-sm-6 col-md-6">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-md-6 padding-right">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="content-state-con-up">
                                        <div class="col-sm-2 col-md-2">
                                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/pic_07.png"/>
                                        </div>
                                        <div class="col-sm-10 col-md-10 newsCon padding-right">
                                            <h4 class="font-family">2016-2021年中国自动控制设备产业市场行暨产业发展趋势研究报告。</h4>
                                            <p id="content-state-con-p">
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                                美国劳伦斯伯克利国家实验室的能源分析师埃文·米尔斯博士日前完成了迄今首个关于向太阳能LED照明转变将如何影响就业和工作机会的全球性分析。他着重研究了全球约2.74亿个缺乏电力供应的家庭中最贫困的1.12亿个。这些主要分布在非洲和亚洲的家庭没有接入电网，也无法负担太阳能发电设备，因此适合使用太阳能LED照明。
                                            </p>
                                            <p id="checkAll-state"><a href="">[&nbsp;查看全文&nbsp;]</a></p>
                                        </div>
                                    </div>

                                    <div class="content-state-con-down">
                                        <div class="col-sm-6 col-md-6">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-md-6 padding-right">
                                            <ul>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
                                                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/><a href="">2016-2021年中国自动控制设备产业市场运行暨产业发展趋势研究报</a><span
                                                        id="date">[07-30]</span></li>
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
    </div>
</div>

<!--广告图-->
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 adDiv padding-left padding-right">
            <ul>
                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/111.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/111.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/111.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/other/111.jpg"/></li>
            </ul>
        </div>
    </div>
</div>

<!--我们的优势-->
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 padding-left padding-right">
            <div class="content-ourgoods">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png" id="titleBg"/>
                        <span id="title" class="font-family">
									我们的优势
								</span>
                    </div>
                </div>
                <div class="content-ourgoods-con">
                    <ul>
                        <li>
                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/shuzi_08.png"/>
                            <h3><span id="big" class="font-family bold">请您买的放心</span><br><span
                                    id="small">采购支付流程安全快捷</span></h3>
                        </li>
                        <li>
                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/shuzi_10.png"/>
                            <h3><span id="big" class="font-family bold">售前售后服务</span><br><span
                                    id="small">最完善的售前售后服务</span></h3>
                        </li>
                        <li>
                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/shuzi_12.png"/>
                            <h3><span id="big" class="font-family bold">赠送增值服务</span><br><span
                                    id="small">买报告赠送数据中心会员</span></h3>
                        </li>
                        <li>
                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/shuzi_03.png"/>
                            <h3><span id="big" class="font-family bold">节省时间费用</span><br><span
                                    id="small">买多份能获得更高折扣</span></h3>
                        </li>
                        <li>
                            <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/shuzi_05.png"/>
                            <h3><span id="big" class="font-family bold">报告更新及时</span><br><span
                                    id="small">汇集行业最新研究成果</span></h3>
                        </li>
                    </ul>
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
            CopyRight © 2000-2015 BitAuto,All Rights Reserved. 版权所有 北京国数源科技有限公司
        </div>
        <div class="row telphone">
            咨询热线：4000-168-168 (每天9:00—17:30，法定节日休息）
        </div>
        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/rcode_03.png" id="rcode"/>
    </div>
</div>

<!--浮层-->
<div class="ticket">
    <ul>
        <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/ticket_03.png"/>定制报告</li>
        <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/ticket_06.png"/>投资咨询</li>
        <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/ticket_08.png"/>商务系统</li>
        <li><img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/ticket_10.png"/>客服中心</li>
    </ul>
</div>
</body>
<!--<script src="js/jquery-2.1.4.min.js" type="text/javascript" charset="utf-8"></script>-->
<script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery.min.js" type="text/javascript"
        charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/jsp/qiantai/js/bootstrap.min.js" type="text/javascript"
        charset="utf-8"></script>

<script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"
        charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery.yx_rotaion.js" type="text/javascript"
        charset="utf-8"></script>
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

        /*轮播图*/
        $(".yx-rotaion").yx_rotaion({auto: true});
    })
</script>
</html>
