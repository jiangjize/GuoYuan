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
    <title>栏目设置</title>
</head>
<script src="${pageContext.request.contextPath}/bs/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.css">
<script src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script>
    $(function () {
    });
  function det(id) {

      if(confirm("是否删除？")){
          location.href="/deletecol?id="+id;
      }else {
          alert('取消删除')
      }

  }

</script>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">

            <%--<img data-src="holder.js/1330x40?text=头部&random=yes">--%>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="/a">返回上级<span class="sr-only">(current)</span></a>
                            </li>
                            <li class=""><a data-toggle="modal" data-target="#tianjia">添加栏目<span class="sr-only">(current)</span></a>
                            </li>
                            <div class="modal fade" id="tianjia" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="">添加主栏目</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form action="/addcol" method="post">
                                                <div class="input-group">
                                                    <input type="hidden" name="s_cparent" value="0">
                                                    <span class="input-group-addon">栏目名称：</span>
                                                    <input type="text" name="s_cname" required class="form-control"
                                                           placeholder="请输入栏目名称">
                                                    <input type="submit" class="btn-info form-control" value="添加">
                                                </div>

                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
    <div class="row">
        <%-- <div class="col-md-3">

             <div id="nrr">
                 <img data-src="holder.js/1330x540?text=欢迎进入栏目设置~~~~~~~~&random=yes">
             </div>
         </div>
 --%>
        <%--放置功能模块--%>
        <div class="row">

        </div>
        <%--栏目信息表格--%>
        <div class="row">
            <div class="col-md-12">

            </div>
            <table class="table table-responsive table-hover table-bordered">
                <tr>
                    <th class="text-center">栏目名称</th>
                    <th class="text-center">操作</th>

                </tr>
                <c:forEach items="${clist}" var="r">
                    <tr >
                        <td >
                                ${r.s_cname}
                        </td>

                        <td class="text-center">
                            <a onclick="det('${r.s_cid}')"><span
                                    class="glyphicon glyphicon-minus"></span></a>
                            <a data-toggle="modal" data-target="#${r.s_cid}"><span
                                    class="glyphicon glyphicon-plus"></span></a>
                            <a href="#" ><span class="glyphicon glyphicon-pencil"></span></a>
                            <div class="modal fade" id="${r.s_cid}" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">${r.s_cname}下添加栏目</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form action="/addcol" method="post">
                                                <div class="input-group">
                                                    <input type="hidden" name="s_cparent" value="${r.s_cid}">
                                                    <span class="input-group-addon" id="basic-addon5">栏目名称：</span>
                                                    <input type="text" name="s_cname" required class="form-control"
                                                           placeholder="请输入栏目名称">
                                                    <input type="submit" class="btn-info form-control" value="添加">
                                                </div>

                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </td>
                    </tr>
                    <c:forEach items="${r.children}" var="chi">
                        <tr class="info">
                            <td class="">
                                ----- ${chi.s_cname}
                            </td>
                            <td class="text-center">
                                <a onclick="det('${chi.s_cid}')" class="btn-info"><span
                                        class="glyphicon glyphicon-minus"></span></a>
                                <a class="btn-info" data-toggle="modal" data-target="#${chi.s_cid}"><span
                                        class="glyphicon glyphicon-plus"></span></a>
                                <a href="#" class="btn-info"><span class="glyphicon glyphicon-pencil"></span></a>
                                <div class="modal fade" id="${chi.s_cid}" tabindex="-1" role="dialog"
                                     aria-labelledby="myModalLabe2">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close"><span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabe2">${chi.s_cname}下添加栏目</h4>
                                            </div>
                                            <div class="modal-body">
                                                <form action="/addcol" method="post">
                                                    <div class="input-group">
                                                        <input type="hidden" name="s_cparent" value="${chi.s_cid}">
                                                        <span class="input-group-addon" id="basic-addon6">栏目名称：</span>
                                                        <input type="text" name="s_cname" required class="form-control"
                                                               placeholder="请输入栏目名称">
                                                        <input type="submit" class="btn-info form-control" value="添加">
                                                    </div>

                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </td>

                        </tr>
                        <c:forEach items="${chi.children}" var="c3">
                            <tr class="warning">
                                <td class="">
                                    -------------------- ${c3.s_cname}
                                </td>
                                <td class="text-center">
                                    <a  onclick="det('${c3.s_cid}')" class="btn-default"><span
                                            class="glyphicon glyphicon-minus"></span></a>
                                        <%--<button  class="btn-default" data-toggle="modal" data-target="#${c3.s_cid}"><span class="glyphicon glyphicon-plus"></span></button>--%>
                                    <a href="#" class="btn-default"><span class="glyphicon glyphicon-pencil"></span></a>
                                    <div class="modal fade" id="${c3.s_cid}" tabindex="-1" role="dialog"
                                         aria-labelledby="myModalLabe3">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close"><span aria-hidden="true">&times;</span>
                                                    </button>
                                                    <h4 class="modal-title" id="myModalLabe3">${c3.s_cname}下添加栏目</h4>
                                                </div>
                                                <div class="modal-body">
                                                    ...
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                                        取消
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </td>
                            </tr>
                        </c:forEach>
                    </c:forEach>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
