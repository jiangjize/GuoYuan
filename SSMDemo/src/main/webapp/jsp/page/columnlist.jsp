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
    <title>内容管理界面</title>
</head>
<script src="${pageContext.request.contextPath}/bs/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.css">
<script src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script>
    $(function () {
        /*$('#myModal').on('shown.bs.modal', function () {
         $('#myInput').focus()
         })*/
        Menu();
        $("#nrr").hide()
        $('[data-toggle="tooltip"]').tooltip()

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
    function izdelet(gnid) {
//        $("#" + gnid).hide();
        $.ajax({
            url: "/deletezixun",
            data: "id=" + gnid,
            type: "post",
            success: function (data) {
                if (data > 0) {
                    $("#" + gnid).hide();
                    alert("删除成功")
                }
                else {
                    alert('删除失败')
                }
            }
        })
    }
    function izupdate(id) {
        location.href = "/zxupdatejsp?id=" + id;
    }
    function openbutt(code) {
        if (code == "gnzx") {
            $("#nrr").hide();
//            $.ajax({
//                url: "/allzixun",
//                type: "post",
//                success: function (data) {
//                    $("#tbl").empty();
//                    $.each(data, function (i, v) {
//                        $("#tbl").append(
//                           /* "<tr class='text-center'>" +
//                            "<td>" + 'ID' + "</td>" +
//                            "<td>" + '标题' + "</td>" +
//                            "<td>" + '栏目' + "</td>" +
//                            "<td>" + '点击数' + "</td>" +
//                            "<td>" + '状态' + "</td>" +
//                            "<td>" + '创建者' + "</td>" +
//                            "<td>" + '更新时间' + "</td>" +
//                            "<td>" + '操作' + "</td>" +
//                            " </tr>" +*/
//                            "<tr>" +
//                            "<th class='text-center'>" + v.s_gnid + "</th>" +
//                            "<th class='text-center'>" + v.s_gntitle + "</th>" +
//                            "<th class='text-center'>" + v.s_cid + "</th>" +
//                            "<th class='text-center'>" + v.s_gnclick + "</th>" +
//                            "<th class='text-center'>" + v.s_gnstatus + "</th>" +
//                            "<th class='text-center'>" + v.s_gncreator + "</th>" +
//                            "<th class='text-center'>" + v.retimes + "</th>" +
//                            "<th class='text-center'>" +
//                            "<div class='btn-group'>" +
//                               "<button class='btn-danger'>"+"删除"+"</button>"+
//                               "<button class='btn-info'>"+"编辑"+"</button>"+
//                            +"</div>"
//                                + "</th>" +
//                            "</tr>"
//                        )
//                    })
//                }
//            })
            $("#nr1").show()
        }
        else {
            $("#nrr").hide();
            $("#nr1").hide()

        }
    }
</script>
<style>
    .row {
        margin-bottom: 2px;
    }
</style>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <%--头部--%>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="../jsp/index.jsp">返回上级<span class="sr-only">(current)</span></a>
                            </li>
                            <li class=""><a href="/lanmu">栏目管理<span class="sr-only">(current)</span></a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">${user.s_uname} <span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">设置</a></li>
                                    <li><a href="../jsp/login.jsp">退出</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
            <%--资讯内容--%>
    <div class="row">
            <%--栏目菜单--%>
        <div class="col-md-2">
            <div class="row">
                <div class="col-md-12">


                    <div class="tree">
                        <c:forEach items="${rlist}" var="r">
                            <div class="tree_box  text-center">
                                <h3>${r.s_cname}</h3>
                                <ul class="tree_one nav  text-center" style="display: block;">
                                    <li>
                                        <c:forEach items="${r.children}" var="chi">
                                            <h4>
                                                <a class="btn-default text-success" data-toggle="modal"
                                                   data-target="#${chi.s_cname}"
                                                   onclick="openbutt('${chi.s_ccode}')">${chi.s_cname}</a>
                                            </h4>
                                            <ul class="tree_two">
                                                <c:forEach items="${chi.children}" var="po3">
                                                    <a class="btn-default text-warning">${po3.s_cname}</a><br/>
                                                </c:forEach>
                                            </ul>
                                        </c:forEach>
                                    </li>

                                </ul>
                            </div>
                        </c:forEach>
                    </div>


                </div>
            </div>
        </div>
                <%--资讯信息--%>
        <div class="col-md-10">
                    <%--国内资讯--%>
            <div id="nr1">
                <div class="bs-example" id="exam">
                    <ul class="nav nav-tabs" id="myTab">
                        <li><a data-toggle="tab" href="#sectionA">发布的资讯</a></li>
                        <li><a data-toggle="tab" href="#sectionB">草稿箱</a></li>

                    </ul>
                    <div class="tab-content">
                        <div id="sectionA" class="tab-pane fade in active">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <nav class="navbar navbar-default">
                                                <div class="container-fluid">
                                                    <div class="collapse navbar-collapse"
                                                         id="bs-example-navbar-collapse-2">
                                                        <form class="navbar-form navbar-left" action="/bytitleselect"
                                                              method="post">
                                                            <div class="form-group">
                                                                标题：
                                                                <input type="text" value="${ti}" name="title"
                                                                       class="form-control"
                                                                       placeholder="请输入关键词查询">
                                                            </div>
                                                            <button type="submit" class="btn btn-default">查询</button>
                                                        </form>
                                                        <ul class="nav navbar-nav text-center navbar-right">
                                                            <li><a href="/addgnzx" class="btn-link">新增国内资讯</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </nav>
                                        </div>
                                    </div>
                                    <table id="tbl" class="table table-bordered table-responsive table-hover">
                                        <tr class='text-center'>
                                            <td>ID</td>
                                            <td>标题</td>
                                            <td>栏目</td>
                                            <td>点击数</td>
                                            <td>状态</td>
                                            <td>创建者</td>
                                            <td>更新时间</td>
                                            <td>操作</td>
                                        </tr>
                                        <c:forEach items="${izixun}" var="iz">
                                            <c:if test="${iz.s_gnstatus==1}">
                                            <tr id="${iz.s_gnid}">
                                                <th class="text-center">${iz.s_gnid}</th>
                                                <th class="text-center"><a href="#" data-toggle="modal"
                                                                           data-target="#${iz.s_gncrux}"
                                                                           class="btn-link">${iz.s_gntitle}</a></th>
                                                <div class="modal fade" id="${iz.s_gncrux}" tabindex="-1" role="dialog"
                                                     aria-labelledby="myModalLabel2">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                        aria-label="Close"><span
                                                                        aria-hidden="true">&times;</span>
                                                                </button>
                                                                <h4 class="modal-title"
                                                                    id="myModalLabel2">${iz.s_gntitle}</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                    ${iz.s_gnzhengwen}
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default"
                                                                        data-dismiss="modal">
                                                                    OK
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <th class="text-center">${iz.iColumn.s_cname}</th>
                                                <th class="text-center">${iz.s_gnclick}</th>
                                                <th class="text-center"><%--${iz.s_gnstatus}--%>发布</th>
                                                <th class="text-center">${iz.us.s_uname}</th>
                                                <th class="text-center">${iz.retimes}</th>
                                                <th class="text-center">
                                                    <div class='btn-group'>
                                                        <button class='btn-danger' onclick="izdelet('${iz.s_gnid}')">
                                                            删除
                                                        </button>
                                                        <button class='btn-info' onclick="izupdate('${iz.s_gnid}')">编辑
                                                        </button>
                                                    </div>
                                                </th>
                                            </tr>
                                            </c:if>
                                        </c:forEach>
                                    </table>

                                </div>
                            </div>
                        </div>
                        <%--草稿箱存放的资讯--%>
                        <div id="sectionB" class="tab-pane fade">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <nav class="navbar navbar-default">
                                                <div class="container-fluid">
                                                    <div class="collapse navbar-collapse"
                                                         id="bs-example-navbar-collapse-3">
                                                        <form class="navbar-form navbar-left" action="/bytitleselect"
                                                              method="post">
                                                            <div class="form-group">
                                                                标题：
                                                                <input type="text" value="${ti}" name="title"
                                                                       class="form-control"
                                                                       placeholder="请输入关键词查询">
                                                            </div>
                                                            <button type="submit" class="btn btn-default">查询</button>
                                                        </form>
                                                        <ul class="nav navbar-nav text-center navbar-right">
                                                            <li><a href="/addgnzx" class="btn-link">新增国内资讯</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </nav>
                                        </div>
                                    </div>
                                    <table id="tb2" class="table table-bordered table-responsive table-hover">
                                        <tr class='text-center'>
                                            <td>ID</td>
                                            <td>标题</td>
                                            <td>栏目</td>
                                            <td>点击数</td>
                                            <td>状态</td>
                                            <td>创建者</td>
                                            <td>更新时间</td>
                                            <td>操作</td>
                                        </tr>
                                        <c:forEach items="${izixun}" var="iz">
                                            <c:if test="${iz.s_gnstatus==2}">
                                                <tr id="${iz.s_gnid}">
                                                    <th class="text-center">${iz.s_gnid}</th>
                                                    <th class="text-center"><a href="#" data-toggle="modal"
                                                                               data-target="#${iz.s_gncrux}"
                                                                               class="btn-link">${iz.s_gntitle}</a></th>
                                                    <div class="modal fade" id="${iz.s_gncrux}" tabindex="-1" role="dialog"
                                                         aria-labelledby="myModalLabel2">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button type="button" class="close" data-dismiss="modal"
                                                                            aria-label="Close"><span
                                                                            aria-hidden="true">&times;</span>
                                                                    </button>
                                                                    <h4 class="modal-title"
                                                                        id="myModalLabel3">${iz.s_gntitle}</h4>
                                                                </div>
                                                                <div class="modal-body">
                                                                        ${iz.s_gnzhengwen}
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-default"
                                                                            data-dismiss="modal">
                                                                        OK
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <th class="text-center">${iz.iColumn.s_cname}</th>
                                                    <th class="text-center">${iz.s_gnclick}</th>
                                                    <th class="text-center"><%--${iz.s_gnstatus}--%>草稿</th>
                                                    <th class="text-center">${iz.us.s_uname}</th>
                                                    <th class="text-center">${iz.retimes}</th>
                                                    <th class="text-center">
                                                        <div class='btn-group'>
                                                            <button class='btn-danger' onclick="izdelet('${iz.s_gnid}')">
                                                                删除
                                                            </button>
                                                            <button class='btn-info' onclick="izupdate('${iz.s_gnid}')">编辑
                                                            </button>
                                                        </div>
                                                    </th>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--  <div class="row">
                      <div class="col-md-12">
                          <div class="row">
                              <div class="col-md-12">
                                  <nav class="navbar navbar-default">
                                      <div class="container-fluid">


                                          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">

                                              <form class="navbar-form navbar-left" action="/bytitleselect" method="post">
                                                  <div class="form-group">
                                                      标题：
                                                      <input type="text" value="${ti}" name="title" class="form-control"
                                                             placeholder="请输入关键词查询">
                                                  </div>
                                                  <button type="submit" class="btn btn-default">查询</button>
                                              </form>

                                              <ul class="nav navbar-nav text-center navbar-right">
                                                  <li><a href="/addgnzx" class="btn-link">新增国内资讯</a></li>
                                                  &lt;%&ndash;     <li><a href="#">状态：</a></li>
                                                       <li class="dropdown">
                                                           <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                                                              role="button" aria-haspopup="true" aria-expanded="false">
                                                               发布<span class="caret"></span>
                                                           </a>
                                                           <ul class="dropdown-menu">
                                                               <li><a href="#">审核</a></li>
                                                               <li><a href="#">驳回</a></li>
                                                               <li><a href="#">删除</a></li>
                                                               <li><a href="#">草稿</a></li>
                                                           </ul>
                                                       </li>&ndash;%&gt;


                                              </ul>
                                          </div>
                                      </div>
                                  </nav>
                              </div>
                          </div>
                          <table id="tbl" class="table table-bordered table-responsive table-hover">
                              <tr class='text-center'>
                                  <td>ID</td>
                                  <td>标题</td>
                                  <td>栏目</td>
                                  <td>点击数</td>
                                  <td>状态</td>
                                  <td>创建者</td>
                                  <td>更新时间</td>
                                  <td>操作</td>
                              </tr>
                              <c:forEach items="${izixun}" var="iz">
                                  <tr id="${iz.s_gnid}">
                                      <th class="text-center">${iz.s_gnid}</th>
                                      <th class="text-center"><a href="#" data-toggle="modal"
                                                                 data-target="#${iz.s_gncrux}"
                                                                 class="btn-link">${iz.s_gntitle}</a></th>
                                      <div class="modal fade" id="${iz.s_gncrux}" tabindex="-1" role="dialog"
                                           aria-labelledby="myModalLabel2">
                                          <div class="modal-dialog" role="document">
                                              <div class="modal-content">
                                                  <div class="modal-header">
                                                      <button type="button" class="close" data-dismiss="modal"
                                                              aria-label="Close"><span aria-hidden="true">&times;</span>
                                                      </button>
                                                      <h4 class="modal-title" id="myModalLabel2">${iz.s_gntitle}</h4>
                                                  </div>
                                                  <div class="modal-body">
                                                          ${iz.s_gnzhengwen}
                                                  </div>
                                                  <div class="modal-footer">
                                                      <button type="button" class="btn btn-default" data-dismiss="modal">
                                                          OK
                                                      </button>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                      <th class="text-center">${iz.iColumn.s_cname}</th>
                                      <th class="text-center">${iz.s_gnclick}</th>
                                      <th class="text-center">${iz.s_gnstatus}</th>
                                      <th class="text-center">${iz.us.s_uname}</th>
                                      <th class="text-center">${iz.retimes}</th>
                                      <th class="text-center">
                                          <div class='btn-group'>
                                              <button class='btn-danger' onclick="izdelet('${iz.s_gnid}')">删除</button>
                                              <button class='btn-info' onclick="izupdate('${iz.s_gnid}')">编辑
                                              </button>
                                          </div>
                                      </th>
                                  </tr>
                              </c:forEach>
                          </table>
                          &lt;%&ndash;<nav aria-label="...">&ndash;%&gt;
                          &lt;%&ndash;<ul class="pager">&ndash;%&gt;
                          &lt;%&ndash;<li class="previous disabled"><a href="#"><span aria-hidden="true">&larr;</span>上一页</a></li>&ndash;%&gt;
                          &lt;%&ndash;<li class="next"><a href="#">下一页 <span aria-hidden="true">&rarr;</span></a></li>&ndash;%&gt;
                          &lt;%&ndash;</ul>&ndash;%&gt;
                          &lt;%&ndash;</nav>&ndash;%&gt;
                      </div>
                  </div>--%>
            </div>
            <%--点击栏目弹出的模态框提示--%>
            <c:forEach items="${rlist}" var="r">
                <c:forEach items="${r.children}" var="chi">
                    <div class="modal fade" id="${chi.s_cname}" tabindex="-1" role="dialog"
                         aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                            aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">来自“${chi.s_cname}”的提示</h4>
                                </div>
                                <div class="modal-body">
                                    <c:if test="${chi.s_cname=='国内资讯'}">
                                        开始操作吧！！！！
                                    </c:if>
                                    <c:if test="${chi.s_cname!='国内资讯'}">
                                        编码小伙正满头大汗中~~~~
                                    </c:if>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:forEach>

            <div id="nrr">
                <img data-src="holder.js/970x540?text=欢迎进入内容发布~~~~~~~~&random=yes">
            </div>
            <%-- <div id="nr1">
                 &lt;%&ndash;<img data-src="holder.js/970x540?text=国内资讯精在其中~~~~~~~~&random=yes">&ndash;%&gt;
                 <div class="row">
                     <div class="col-md-12">
                         <div class="row">
                             <div class="col-md-12">
                                 <nav class="navbar navbar-default">
                                     <div class="container-fluid">


                                         <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">

                                             <form class="navbar-form navbar-left" action="/bytitleselect" method="post">
                                                 <div class="form-group">
                                                     标题：
                                                     <input type="text" value="${ti}" name="title" class="form-control"
                                                            placeholder="请输入关键词查询">
                                                 </div>
                                                 <button type="submit" class="btn btn-default">查询</button>
                                             </form>

                                             <ul class="nav navbar-nav text-center navbar-right">
                                                 <li><a href="/addgnzx" class="btn-link">新增国内资讯</a></li>
                                                 <li><a href="#">状态：</a></li>
                                                 <li class="dropdown">
                                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                                                        role="button" aria-haspopup="true" aria-expanded="false">
                                                         发布<span class="caret"></span>
                                                     </a>
                                                     <ul class="dropdown-menu">
                                                         <li><a href="#">审核</a></li>
                                                         <li><a href="#">驳回</a></li>
                                                         <li><a href="#">删除</a></li>
                                                         <li><a href="#">草稿</a></li>
                                                     </ul>
                                                 </li>


                                             </ul>
                                         </div>
                                     </div>
                                 </nav>
                             </div>
                         </div>
                         <table id="tbl" class="table table-bordered table-responsive table-hover">
                             <tr class='text-center'>
                                 <td>ID</td>
                                 <td>标题</td>
                                 <td>栏目</td>
                                 <td>点击数</td>
                                 <td>状态</td>
                                 <td>创建者</td>
                                 <td>更新时间</td>
                                 <td>操作</td>
                             </tr>
                             <c:forEach items="${izixun}" var="iz">
                                 <tr id="${iz.s_gnid}">
                                     <th class="text-center">${iz.s_gnid}</th>
                                     <th class="text-center"><a href="#" data-toggle="modal"
                                                                data-target="#${iz.s_gncrux}"
                                                                class="btn-link">${iz.s_gntitle}</a></th>
                                     <div class="modal fade" id="${iz.s_gncrux}" tabindex="-1" role="dialog"
                                          aria-labelledby="myModalLabel2">
                                         <div class="modal-dialog" role="document">
                                             <div class="modal-content">
                                                 <div class="modal-header">
                                                     <button type="button" class="close" data-dismiss="modal"
                                                             aria-label="Close"><span aria-hidden="true">&times;</span>
                                                     </button>
                                                     <h4 class="modal-title" id="myModalLabel2">${iz.s_gntitle}</h4>
                                                 </div>
                                                 <div class="modal-body">
                                                         ${iz.s_gnzhengwen}
                                                 </div>
                                                 <div class="modal-footer">
                                                     <button type="button" class="btn btn-default" data-dismiss="modal">
                                                         OK
                                                     </button>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                     <th class="text-center">${iz.iColumn.s_cname}</th>
                                     <th class="text-center">${iz.s_gnclick}</th>
                                     <th class="text-center">${iz.s_gnstatus}</th>
                                     <th class="text-center">${iz.us.s_uname}</th>
                                     <th class="text-center">${iz.retimes}</th>
                                     <th class="text-center">
                                         <div class='btn-group'>
                                             <button class='btn-danger' onclick="izdelet('${iz.s_gnid}')">删除</button>
                                             <button class='btn-info' onclick="izupdate('${iz.s_gnid}')">编辑
                                             </button>
                                         </div>
                                     </th>
                                 </tr>
                             </c:forEach>
                         </table>
                         &lt;%&ndash;<nav aria-label="...">&ndash;%&gt;
                         &lt;%&ndash;<ul class="pager">&ndash;%&gt;
                         &lt;%&ndash;<li class="previous disabled"><a href="#"><span aria-hidden="true">&larr;</span>上一页</a></li>&ndash;%&gt;
                         &lt;%&ndash;<li class="next"><a href="#">下一页 <span aria-hidden="true">&rarr;</span></a></li>&ndash;%&gt;
                         &lt;%&ndash;</ul>&ndash;%&gt;
                         &lt;%&ndash;</nav>&ndash;%&gt;
                     </div>
                 </div>
             </div>
             <c:forEach items="${rlist}" var="r">
                 <c:forEach items="${r.children}" var="chi">
                     <div class="modal fade" id="${chi.s_cname}" tabindex="-1" role="dialog"
                          aria-labelledby="myModalLabel">
                         <div class="modal-dialog" role="document">
                             <div class="modal-content">
                                 <div class="modal-header">
                                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                             aria-hidden="true">&times;</span></button>
                                     <h4 class="modal-title" id="myModalLabel">来自“${chi.s_cname}”的提示</h4>
                                 </div>
                                 <div class="modal-body">
                                     <c:if test="${chi.s_cname=='国内资讯'}">
                                         开始操作吧！！！！
                                     </c:if>
                                     <c:if test="${chi.s_cname!='国内资讯'}">
                                         编码小伙正满头大汗中~~~~
                                     </c:if>
                                 </div>
                                 <div class="modal-footer">
                                     <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </c:forEach>
             </c:forEach>--%>
        </div>
    </div>
</div>
</body>
</html>
