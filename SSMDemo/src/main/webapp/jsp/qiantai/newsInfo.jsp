<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <!--[if IE]>
    <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->
    <script>
        $(function () {

        })
        function tiaozhuan(scod) {
            location.href = "${pageContext.request.contextPath}/IFrontColumn/LodingIndex?scod=" + scod;
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
                                <li <c:if test="${col.s_ccode=='xwzx'}">class="active"</c:if>><a href="#"
                                                                                                 onclick="tiaozhuan('${col.s_ccode}')">${col.s_cname}</a>
                                </li>
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
            <span id="addressSpan">您所在的位置是：<a href="${pageContext.request.contextPath}/IFrontColumn/LodingIndex">首页</a>&nbsp;>&nbsp;<a
                    href="#">新闻资讯</a></span>
        </div>
    </div>
</div>

<!--国内咨询-->
<div class="container margin-top-30">
    <div class="row">
        <div class="col-sm-12 col-md-12 padding-left padding-right">
            <div class="content-state">
                <div class="content-news-title">
                    <div class="col-sm-4 col-md-4 padding-left">
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png"
                             id="titleBg"/>
                        <span id="title" class="font-family">国内咨询</span>
                    </div>
                    <div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
                        <a href=""><span id="more">更多>></span></a>
                    </div>
                </div>

                <c:forEach items="${izxlist}" var="z">
                    <c:if test="${z.s_cid==2}">
                        <c:if test="${z.s_gnid==76}">
                            <div class="col-sm-12 col-md-12">
                                <div class="content-state-con-up">
                                    <div class="col-sm-2 col-md-2">
                                        <img style="width: 175px;height: 175px"
                                             src="${pageContext.request.contextPath}/upload/${z.s_gnimage}"/>
                                    </div>
                                    <div class="col-sm-10 col-md-10 newsCon padding-right">
                                        <h4 class="font-family">${z.s_gntitle}</h4>
                                        <p id="content-state-con-p">
                                                ${z.s_gnzhaiyao}
                                        </p>
                                        <p id="checkAll-state"><a href="newsDetails.html">[&nbsp;查看全文&nbsp;]</a></p>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:if>
                </c:forEach>
                <div class="br">&nbsp;</div>
                <div class="row margin-left-15">
                    <c:forEach items="${izxlist}" var="z">
                        <c:if test="${z.s_cid==2}">
                            <div class="col-sm-6 col-md-6">
                                <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/>
                                <a href="newsDetails.html">${z.s_gntitle}</a><span
                                    class="pull-right">${z.retimes}</span>
                                <div>&nbsp;</div>
                            </div>

                        </c:if>
                    </c:forEach>
                </div>

            </div>
        </div>
    </div>
</div>

<!--国际咨询-->
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 padding-left padding-right">
              <div class="content-state">
                  <div class="content-news-title">
                      <div class="col-sm-4 col-md-4 padding-left">
                          <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png"
                               id="titleBg"/>
                          <span id="title" class="font-family">国际咨询</span>
                      </div>
                      <div class="col-sm-2 col-md-2 col-md-offset-6 col-sm-offset-6">
                          <a href=""><span id="more">更多>></span></a>
                      </div>
                  </div>

                  <c:forEach items="${izxlist}" var="z">
                      <c:if test="${z.s_cid==3}">
                          <c:if test="${z.s_gnid==77}">
                              <div class="col-sm-12 col-md-12">
                                  <div class="content-state-con-up">
                                      <div class="col-sm-2 col-md-2">
                                          <img style="width: 175px;height: 175px"
                                               src="${pageContext.request.contextPath}/upload/${z.s_gnimage}"/>
                                      </div>
                                      <div class="col-sm-10 col-md-10 newsCon padding-right">
                                          <h4 class="font-family">${z.s_gntitle}</h4>
                                          <p id="content-state-con-p">
                                                  ${z.s_gnzhaiyao}
                                          </p>
                                          <p id="checkAll-state"><a href="newsDetails.html">[&nbsp;查看全文&nbsp;]</a></p>
                                      </div>
                                  </div>
                              </div>
                          </c:if>
                      </c:if>
                  </c:forEach>
                  <div class="br">&nbsp;</div>
                  <div class="row margin-left-15">
                      <c:forEach items="${izxlist}" var="z">
                          <c:if test="${z.s_cid==3}">
                              <div class="col-sm-6 col-md-6">
                                  <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/>
                                  <a href="newsDetails.html">${z.s_gntitle}</a><span
                                      class="pull-right">${z.retimes}</span>
                                  <div>&nbsp;</div>
                              </div>

                          </c:if>
                      </c:forEach>
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
                        <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/nav1_07.png"
                             id="titleBg"/>
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
                                <c:forEach items="${izxlist}" var="z">
                                    <c:if test="${z.s_cid==45}">
                                        <c:if test="${z.s_gnid==86}">
                                            <div class="col-sm-12 col-md-12">
                                                <div class="content-state-con-up">
                                                    <div class="col-sm-2 col-md-2">
                                                        <img style="width: 175px;height: 175px"
                                                             src="${pageContext.request.contextPath}/upload/${z.s_gnimage}"/>
                                                    </div>
                                                    <div class="col-sm-10 col-md-10 newsCon padding-right">
                                                        <h4 class="font-family">${z.s_gntitle}</h4>
                                                        <p id="content-state-con-p">
                                                                ${z.s_gnzhaiyao}
                                                        </p>
                                                        <p id="checkAll-state"><a href="newsDetails.html">[&nbsp;查看全文&nbsp;]</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                                <div class="br">&nbsp;</div>
                                <div class="row margin-left-15">
                                    <c:forEach items="${izxlist}" var="z">
                                        <c:if test="${z.s_cid==45}">
                                            <div class="col-sm-6 col-md-6">
                                                <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/>
                                                <a href="newsDetails.html">${z.s_gntitle}</a><span
                                                    class="pull-right">${z.retimes}</span>
                                                <div>&nbsp;</div>
                                            </div>

                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>

                            <div class="row">
                                <c:forEach items="${izxlist}" var="z">
                                    <c:if test="${z.s_cid==46}">
                                        <c:if test="${z.s_gnid==87}">
                                            <div class="col-sm-12 col-md-12">
                                                <div class="content-state-con-up">
                                                    <div class="col-sm-2 col-md-2">
                                                        <img style="width: 175px;height: 175px"
                                                             src="${pageContext.request.contextPath}/upload/${z.s_gnimage}"/>
                                                    </div>
                                                    <div class="col-sm-10 col-md-10 newsCon padding-right">
                                                        <h4 class="font-family">${z.s_gntitle}</h4>
                                                        <p id="content-state-con-p">
                                                                ${z.s_gnzhaiyao}
                                                        </p>
                                                        <p id="checkAll-state"><a href="newsDetails.html">[&nbsp;查看全文&nbsp;]</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                                <div class="br">&nbsp;</div>
                                <div class="row margin-left-15">
                                    <c:forEach items="${izxlist}" var="z">
                                        <c:if test="${z.s_cid==47}">
                                            <div class="col-sm-6 col-md-6">
                                                <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/>
                                                <a href="newsDetails.html">${z.s_gntitle}</a><span
                                                    class="pull-right">${z.retimes}</span>
                                                <div>&nbsp;</div>
                                            </div>

                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>

                            <div class="row">
                                <c:forEach items="${izxlist}" var="z">
                                    <c:if test="${z.s_cid==47}">
                                        <c:if test="${z.s_gnid==88}">
                                            <div class="col-sm-12 col-md-12">
                                                <div class="content-state-con-up">
                                                    <div class="col-sm-2 col-md-2">
                                                        <img style="width: 175px;height: 175px"
                                                             src="${pageContext.request.contextPath}/upload/${z.s_gnimage}"/>
                                                    </div>
                                                    <div class="col-sm-10 col-md-10 newsCon padding-right">
                                                        <h4 class="font-family">${z.s_gntitle}</h4>
                                                        <p id="content-state-con-p">
                                                                ${z.s_gnzhaiyao}
                                                        </p>
                                                        <p id="checkAll-state"><a href="newsDetails.html">[&nbsp;查看全文&nbsp;]</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                                <div class="br">&nbsp;</div>
                                <div class="row margin-left-15">
                                    <c:forEach items="${izxlist}" var="z">
                                        <c:if test="${z.s_cid==47}">
                                            <div class="col-sm-6 col-md-6">
                                                <img src="${pageContext.request.contextPath}/jsp/qiantai/images/index/dott_03.png"/>
                                                <a href="newsDetails.html">${z.s_gntitle}</a><span
                                                    class="pull-right">${z.retimes}</span>
                                                <div>&nbsp;</div>
                                            </div>

                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
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


</body>
<script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery-2.1.4.min.js" type="text/javascript"
        charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/jsp/qiantai/js/bootstrap.min.js" type="text/javascript"
        charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"
        charset="utf-8"></script>
<script type="text/javascript">
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
</script>
</html>
