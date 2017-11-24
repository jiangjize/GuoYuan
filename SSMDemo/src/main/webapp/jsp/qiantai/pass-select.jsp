<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>验证方式</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/jsp/qiantai/css/headerAndFooter.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsp/qiantai/css/common.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/qiantai/css/forgot-pass.css"/>
    <!--[if IE]>
    <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->
    <script>
        function tiaozhuan(scod) {
            location.href = "${pageContext.request.contextPath}/IFrontColumn/LodingIndex?scod=" + scod;
        }
        function Go() {
            var sid = $("#sel").val();
            if (sid == 1) {
                location.href = "${pageContext.request.contextPath}/jsp/qiantai/forgot-oldpass.jsp";
            } else if (sid == 2) {
                location.href = "${pageContext.request.contextPath}/jsp/qiantai/forgot-infopass.jsp";
            } else {
                location.href = "${pageContext.request.contextPath}/jsp/qiantai/forgot-emailpass.jsp";
            }
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
                        <span id="loginOrRes"><a href="../login.jsp">登陆</a> / <a href="register.jsp">注册</a></span>
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
                                <li><a href="#" onclick="tiaozhuan('${col.s_ccode}')">${col.s_cname}</a>
                                </li>
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
                <h2 class="redAn bold font-family">选择验证方式</h2>
            </div>

            <div class="col-md-12 text-center">

                <div class="regNoticeDiv">
                    <select class="form-control pull-right" id="sel">
                        <option class="" value="1">原密码认证</option>
                        <option value="2" <c:if test="${uli.s_uphone eq ''}">disabled</c:if>>短信认证</option>
                        <option value="3" <c:if test="${uli.s_uemail eq ''}">disabled</c:if>>邮箱认证</option>
                    </select>
                    <br/>
                    <button class=" btn-default btn-lg" onclick="Go()">立即验证</button>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/jsp/qiantai/js/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath}/jsp/qiantai/js/bootstrap.min.js" type="text/javascript"
        charset="utf-8"></script>
</html>

