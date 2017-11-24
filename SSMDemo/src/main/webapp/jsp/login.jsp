<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>登陆界面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
    <script src="${pageContext.request.contextPath}/lib/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.js"></script>
    <style type="text/css">
        #line-chart {
            height: 300px;
            width: 800px;
            margin: 0px auto;
            margin-top: 1em;
        }

        .brand {
            font-family: georgia, serif;
        }

        .brand .first {
            color: #ccc;
            font-style: italic;
        }

        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

</head>
<body>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <ul class="nav pull-right">
            </ul>
            <a class="brand" href="index.html"><span class="first">权限管理</span></a>
        </div>
    </div>
</div>

<div class="container-fluid">

    <div class="row-fluid">
        <div class="dialog span4">
            <div class="block">
                <div class="block-heading">系统登陆界面</div>
                <div class="block-body">
                    <form  action="/Login" method="post">
                        <label>账号：</label>
                        <input type="text" name="s_uacc" value="jiangjize" class="span12">
                        <label>密码：</label>
                        <input type="password" name="s_upwd" value="123" class="span12">
                        <button type="submit" class="btn btn-info">登陆</button>
                        <div class="clearfix"></div>
                    </form>
                </div>
            </div>
          <%--  <p class="pull-right" style=""><a href="#" target="blank">点击注册</a></p>
            <p><a href="#">忘记密码?</a></p>--%>
        </div>
    </div>


</div>
</body>
</html>
