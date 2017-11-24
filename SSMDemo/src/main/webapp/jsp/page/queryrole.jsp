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
    <title>角色权限设定</title>
</head>
<script src="${pageContext.request.contextPath}/bs/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.css">

<script src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<style>
    .row {
        margin-bottom: 5px;
    }
</style>
<script>
    $(function () {
        $("#myTab li:eq(1) a").tab("show");
        $('[data-toggle="popover"]').popover()
        $('#myTabs a').click(function (e) {
            e.preventDefault()
            $(this).tab('show')
        })
        $("#btt1").click(function () {
            alert(6666)
        })

    })
    function no(rid, pid) {
        $.ajax(
            {
                url: "/deletepow",
                type: "post",
                data: {rid: rid, pid: pid},
                success: function (data) {
                    alert(data);
                }
            }
        )
    }
    function off(rid, pid) {
        $.ajax(
            {
                url: "/addpow",
                type: "post",
                data: {rid: rid, pid: pid},
                success: function (data) {
                    alert(data);
                }
            }
        )
    }


</script>
<body>
<div class="container-fluid">

    <div class="row">
        <div class="col-md-12">
            <%--<img data-src="holder.js/1330x40?text=头部&random=yes">--%>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="/Login?s_uacc=${user.s_uacc}&s_upwd=${user.s_upwd}">返回上级<span class="sr-only">(current)</span></a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${user.s_uname} <span class="caret"></span></a>
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
    <div class="row">
        <div class="col-md-3">
            <img data-src="holder.js/310x600?text=占个位子&random=yes">
        </div>
        <div class="col-md-9">
            <div class="row">
                <table class="table-bordered table-striped  table-hover" style="width: 1000px;">
                    <tr class="text-warning ">
                        <th class="text-center">ID</th>
                        <th class="text-center">角色名称</th>
                        <th class="text-center">操作</th>

                    </tr>
                    <c:forEach items="${queryro}" var="q">

                        <tr class="bg-info">
                            <td class="text-center">${q.s_rid}</td>
                            <td class="text-center">${q.s_rname}</td>
                            <td class="text-center">
                                <div class="row">
                                    <div class="col-md-12">
                                        <button type="button" class="btn btn-info" data-toggle="modal"
                                                data-target="#${q.s_rname}">
                                            分配权限
                                        </button>
                                        <div class="modal fade" id="${q.s_rname}" tabindex="-1"
                                             role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close"
                                                                data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">
                                                            为${q.s_rname}分配权限中</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <table class="table table-bordered table-striped datatable  table-hover">
                                                            <tr>
                                                                <th class="text-center">ID</th>
                                                                <th class="text-center">权限名称</th>
                                                                <%--<th class="text-center">状态</th>--%>
                                                                <th class="text-center">操作</th>
                                                            </tr>
                                                                <c:forEach items="${rootmenus}" var="r">
                                                                    <tr>
                                                                    <td class="text-center">${r.s_pid}</td>
                                                                    <td class="text-center">${r.s_pname}</td>

                                                              <%--          <td class="text-center">关闭</td>--%>

                                                                <td class="text-center">
                                                                    <div class="btn-group">
                                                                        <input class="btn-default" type="button" name=""
                                                                               value="NO"
                                                                               onclick="no('${q.s_rid}','${r.s_pid}')"
                                                                               autocomplete="off">
                                                                        <input class="btn-danger" type="button" name=""
                                                                               value="OFF"
                                                                               onclick="off('${q.s_rid}','${r.s_pid}')"
                                                                               autocomplete="off">
                                                                    </div>
                                                                </td>

                                                                </tr>
                                                                <c:forEach items="${r.children}" var="chi">

                                                                    <tr>
                                                                        <td class="text-center">${chi.s_pid}</td>
                                                                        <td class="text-center">${chi.s_pname}</td>
                                                                            <%-- <c:if test="">
                                                                                 <td class="text-center">开启</td>
                                                                             </c:if>
                                                                             <c:if test="">
                                                                                 <td class="text-center">关闭</td>
                                                                             </c:if>--%>
                                                                        <td class="text-center">
                                                                            <div class="btn-group">
                                                                                <input type="button" class="btn-default"
                                                                                       name="" value="NO"
                                                                                       onclick="no('${q.s_rid}','${chi.s_pid}')"
                                                                                       autocomplete="off">
                                                                                <input type="button" class="btn-danger"
                                                                                       name="" value="OFF"
                                                                                       onclick="off('${q.s_rid}','${chi.s_pid}')"
                                                                                       autocomplete="off">
                                                                            </div>
                                                                        </td>

                                                                    </tr>
                                                                    <c:if test="${chi.children!=null}">
                                                                        <c:forEach items="${chi.children}" var="zz">
                                                                            <tr>
                                                                                <td class="text-center">${zz.s_pid}</td>
                                                                                <td class="text-center">${zz.s_pname}</td>
                                                                                    <%-- <c:if test="">
                                                                                         <td class="text-center">开启</td>
                                                                                     </c:if>
                                                                                     <c:if test="">
                                                                                         <td class="text-center">关闭</td>
                                                                                     </c:if>--%>
                                                                                <td class="text-center">
                                                                                    <div class="btn-group">
                                                                                        <input type="button" class="btn-default"
                                                                                               name="" value="NO"
                                                                                               onclick="no('${q.s_rid}','${zz.s_pid}')"
                                                                                               autocomplete="off">
                                                                                        <input type="button" class="btn-danger"
                                                                                               name="" value="OFF"
                                                                                               onclick="off('${q.s_rid}','${zz.s_pid}')"
                                                                                               autocomplete="off">
                                                                                    </div>
                                                                                </td>

                                                                            </tr>
                                                                        </c:forEach>
                                                                    </c:if>

                                                                </c:forEach>
                                                            </c:forEach>

                                                        </table>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default"
                                                                data-dismiss="modal">OK
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>

                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>

</div>

</body>
</html>
