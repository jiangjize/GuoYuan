<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>管理界面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/theme.css">
    <script src="${pageContext.request.contextPath}/lib/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/lib/holder.js"></script>
    <script>
        $(function () {
            Menu();
        })
        function Menu() {
            var h3 = $(".tree_box").find("h3");
            var tree_one = $(".tree_box").find(".tree_one");
            var h4 = $(".tree_one").find("h4");
            var tree_two = $(".tree_one").find(".tree_two");
            h3.each(function (i) {
                $(this).click(function () {
                    tree_one.eq(i).slideToggle();
                    tree_one.eq(i).parent().siblings().find(".tree_one").slideUp();
                })
            })
            h4.each(function (i) {
                $(this).click(function () {
                    tree_two.eq(i).slideToggle();
                    tree_two.eq(i).parent().siblings().find(".tree_two").slideUp();
                })
            })
        }
    </script>

</head>
<body>

<%--头部--%>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <ul class="nav pull-right">
                <li id="fat-menu" class="dropdown">
                    <a href="#" id="drop3" role="button" class="dropdown-toggle"
                       data-toggle="dropdown">${user.s_uname}</a>
                    <ul class="dropdown-menu">
                        <li><a tabindex="-1" href="#">设置</a></li>
                        <li class="divider"></li>
                        <li><a tabindex="-1" href="/jsp/login.jsp">退出</a></li>
                    </ul>
                </li>
            </ul>
            <a class="brand"><span class="first">管理系统</span></a>
        </div>
    </div>
</div>


<%--内容--%>
<div class="container-fluid">

    <div class="row-fluid">
        <div class="span3">
            <div class="sidebar-nav">
                  <%--新：树的形式加载 2017年11月7日13:24:38--%>
                <div class="tree">
                    <c:forEach items="${powerlist}" var="po">
                        <div class="tree_box">
                            <h3>${po.s_pname}</h3>
                            <ul class="tree_one nav" style="display: block;">
                                <li>
                                    <c:forEach items="${po.children}" var="po2">
                                        <h4>&nbsp;
                                            <%--判断该节点下是否还存在节点  不存在 则渲染a标签--%>
                                            <c:if test="${po2.children!=''}">
                                            <a href="${po2.s_purl}" class="text-success">
                                            ${po2.s_pname}
                                            </a>
                                            </c:if>
                                            &nbsp;
                                        </h4>
                                        <%--判断该子节点下是否还有子的节点--%>
                                        <c:if test="${po2.children!=null}">
                                        <ul class="tree_two">
                                            <c:forEach items="${po2.children}" var="po3">
                                            <a href="${po3.s_purl}" class="text-warning">${po3.s_pname}</a>
                                            </c:forEach>
                                        </ul>
                                        </c:if>
                                    </c:forEach>
                                </li>

                            </ul>
                        </div>
                    </c:forEach>
                </div>


                <%--新的加载方式：摒弃 2017年11月7日12:30:41--%>
                <%--  <c:forEach items="${powerlist}" var="po">
                      <div class="nav-header" data-toggle="collapse" data-target="#${po.s_pname}">
                              ${po.s_pname}
                      </div>

                      <ul id="${po.s_pname}" class="nav nav-list collapse in">
                          <c:forEach items="${po.children}" var="po2">
                              <li><a href="${po2.s_purl}">${po2.s_pname}</a></li>
                          </c:forEach>
                      </ul>
                  </c:forEach>
  --%>
                <%--
                           通过Logon进入  使用该方法加载  已摒弃
                 <c:forEach items="${powerlist}" var="po">
                        <div class="nav-header" data-toggle="collapse" data-target="#${po.key.s_pname}">
                                ${po.key.s_pname}
                        </div>

                        <ul id="${po.key.s_pname}" class="nav nav-list collapse in">
                            <c:forEach items="${po.value}" var="po2">
                                <li><a href="${po2.s_purl}">${po2.s_pname}</a></li>
                            </c:forEach>
                        </ul>
                    </c:forEach>--%>
            </div>
        </div>

        <div class="span9">
            <%--  <img data-src="holder.js/980x560?random=yes&text=尊敬的:${user.s_uname}先生,你好！">--%>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img data-src="holder.js/990x540?text=国源后台图1">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img data-src="holder.js/990x540?text=国源后台图2">
                        <div class="carousel-caption">
                        </div>
                    </div>
                   <%-- <div class="item">
                        <img data-src="holder.js/990x540?text=显示内容&random=yes">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img data-src="holder.js/990x540?text=显示内容&random=yes">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img data-src="holder.js/990x540?text=显示内容&random=yes">
                        <div class="carousel-caption">
                        </div>
                    </div>--%>

                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">←</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">→</span>
                </a>
            </div>

        </div>

    </div>

</div>
</body>
</html>
