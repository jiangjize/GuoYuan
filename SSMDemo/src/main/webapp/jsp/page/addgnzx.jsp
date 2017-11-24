<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/11/3
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>新增国内资讯</title>
</head>
<script src="${pageContext.request.contextPath}/bs/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
<link href="${pageContext.request.contextPath}/bs/css/froala_editor.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/bs/css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/bs/css/fileinput.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/bs/js/fileinput.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/fileinput_locale_zh.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/froala_editor.min.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/froala_editor_ie8.min.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/tables.min.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/lists.min.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/colors.min.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/media_manager.min.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/font_family.min.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/font_size.min.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/block_styles.min.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/video.min.js"></script>


<style>
    section {
        width: 100%;
        margin: auto;
        text-align: left;
    }

    .row {
        margin-bottom: 5px;
    }
</style>
<script>
    $(function () {

        $('#edit').editable({inlineMode: false, alwaysBlank: true});
        initFileInput();
    });
    function zccg() {
        document.getElementById("s_gnstatus").value = 2
    }
    function zccg2() {
        document.getElementById("s_gnstatus").value = 1
    }
    function initFileInput(ctrlName, uploadUrl) {
        var control = $('#' + ctrlName);
        control.fileinput({
            language: 'zh', //设置语言
            uploadUrl: uploadUrl, //上传的地址
            allowedFileExtensions: ['jpg', 'png', 'gif'],//接收的文件后缀
            showUpload: false, //是否显示上传按钮
            showCaption: false,//是否显示标题
            browseClass: "btn btn-primary", //按钮样式
            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
        });
    }
    function cli() {
        var k = $("#edit").val()
        var a = console.log($("p").text());
        alert(k)
    }
    function selectcid(name) {
        var c = document.getElementById("s_cid").value = name;
        document.getElementById("scid").value = c;
    }
</script>
<body>
<div class="container">
    <%--页面头顶部--%>
    <div class="row">
        <div class="col-md-12">
            <%--<img data-src="holder.js/1330x40?text=头部&random=yes">--%>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="/a">返回上级<span class="sr-only">(current)</span></a>
                            </li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">${user.s_uname} <span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">设置</a></li>
                                    <li><a href="../../jsp/login.jsp">退出</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <%--页面身体--%>
    <div class="row">
        <%--<form action="/addzixun" method="post" >--%>
        <form action="/fileup" method="post" enctype="multipart/form-data">
            <h4 class="page-header text-info">基本信息</h4>
            <div class="row">
                <%--基本信息框--%>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <%--左边信息填写框--%>
                        <div class="col-md-4 pull-left">
                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon1">所属栏目：</span>
                                <input id="scid" name="scid" type="hidden">
                                <input type="text" disabled id="s_cid" name="s_cid" required class="form-control "
                                       placeholder="请选择栏目">
                                <span class="input-group-btn">
                                     <button class="btn btn-default" data-toggle="modal" data-target="#myModal"
                                             type="button"><span class="glyphicon glyphicon-zoom-out "
                                                                 aria-hidden="true"></span></button>
                                 </span>
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                     aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close"><span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title">栏目菜单</h4>
                                            </div>
                                            <div class="modal-body">

                                                <c:forEach items="${rlist}" var="r">
                                                    <div class="tree_box  text-center">
                                                        <h3>${r.s_cname}</h3>
                                                        <ul class="tree_one nav  text-center" style="display: block;">
                                                            <li>
                                                                <c:forEach items="${r.children}" var="chi">
                                                                    <h4>
                                                                        <a class="btn-default text-success"
                                                                           onclick="selectcid('${chi.s_cid}')">${chi.s_cname}</a>
                                                                    </h4>
                                                                    <ul class="tree_two">
                                                                        <c:forEach items="${chi.children}" var="po3">
                                                                            <a class="btn-default text-warning"
                                                                               onclick="selectcid('${po3.s_cid}')">${po3.s_cname}</a>
                                                                        </c:forEach>
                                                                    </ul>
                                                                </c:forEach>
                                                            </li>

                                                        </ul>
                                                    </div>
                                                </c:forEach>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">确定
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon5">关键词：</span>
                                <input type="text" name="s_gncrux" required
                                       class="form-control" placeholder="请输入关键词">
                            </div>

                        </div>
                        <div class="col-md-2"></div>

                        <%--右边信息填写框--%>
                        <div class="col-md-4 ">
                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon2">文章标题：</span>
                                <input type="text" name="s_gntitle" required
                                       class="form-control" placeholder="请输入标题">
                                <%--创建者id--%>
                                <input type="hidden" id="s_gncreator" value="${user.s_uid}" name="s_gncreator">
                                <%----%>
                                <input type="hidden" id="s_gnstatus" name="s_gnstatus">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon4">标题颜色：</span>
                                <select class="form-control" name="s_gntcolor">
                                    <option value="1">默认</option>
                                    <option value="2">红</option>
                                    <option value="3">金</option>
                                    <option value="4">蓝</option>
                                </select>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <h4 class="page-header text-info">详细信息</h4>
            <div class="row">
                <%--详细信息框--%>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-10">
                            <%--<div class="form-group">
                                <label for="exampleInputFile">选择图片：</label>
                                <input type="file" class="form-control" id="exampleInputFile">
                            </div>--%>
                            <%--<form action="/fileup" method="post" enctype="multipart/form-data">--%>
                            <div class="input-group">
                                <span class="input-group-addon">选择图片：</span>
                                <input type="file" name="multipartFile" class="form-control file">
                                <%--<input type="submit" value="上传">--%>
                            </div>
                            <%--     </form>--%>
                            <%--         <form action="addgnzx.jsp" method="post" enctype="multipart/form-data">
                                          上传图片：

                                          <div class="form-group">
                                              <input id="file-1" type="file" class="file">
                                          </div>

                                    </form>--%>

                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-1">
                            <span class="pull-right">摘要：</span>
                        </div>
                        <div class="col-md-9">
                            <div class="form-group">
                                <textarea class="form-control" name="s_gnzhaiyao" rows="3"></textarea>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-1">
                            <span class="pull-right">正文：</span>
                        </div>
                        <div class="col-md-9">
                            <section id="editor">
                                <div id='edit1' style="margin-top: 30px;">
                                    <div class="form-group">
                                        <textarea class="form" id="edit" name="s_gnzhengwen" rows="3"></textarea>
                                    </div>
                                </div>
                            </section>
                            <%--<input type="button" onclick="cli()" value="66666">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-5">
                            <div class="btn-group">
                                <input type="submit" onclick="zccg()" class="btn-warning btn-lg" value="暂存草稿">
                                <input type="submit" onclick="zccg2()" class="btn-info btn-lg" value="发布">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>
