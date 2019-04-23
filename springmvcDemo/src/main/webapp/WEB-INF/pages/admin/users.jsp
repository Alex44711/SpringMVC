<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="zh-CN">
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SpingMVC 用户管理</title>
    <link rel="stylesheet" href="<%=basePath%>/bootstrap-4.3.1-dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>SpringMVC 博客系统-用户管理</h1>
    <hr/>

    <h3>所有用户 <a href="/admin/users/add" type="button" class="btn btn-primary btn-sm">添加</a></h3>
    <c:if test="${empty userList}">
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>User表为空，请<a href="/admin/users/add" type="button" class="btn btn-primary btn-sm">添加</a>
        </div>
    </c:if>

    <c:if test="${!empty userList}">
    <table class="table table-bordered table-striped">
        <tr>
            <th>ID</th>
            <th>昵称</th>
            <th>姓名</th>
            <th>密码</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${userList}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.nickname}</td>
                <td>${user.firstName} ${user.lastName}</td>
                <td>${user.password}</td>
                <td>
                    <a href="/admin/users/show/${user.id}" type="button" class="btn btn-sm btn-success">详情</a>
                    <a href="/admin/users/update/${user.id}" type="button" class="btn btn-sm btn-warning">修改</a>
                    <a href="/admin/users/delete/${user.id}" type="button" class="btn btn-sm btn-danger">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    </c:if>
</div>
<script src="<%=basePath%>/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
</body>