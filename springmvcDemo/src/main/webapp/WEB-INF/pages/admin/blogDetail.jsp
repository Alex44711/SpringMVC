<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC BlogDetail</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/bootstrap-4.3.1-dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>SpringMVC 博文详情</h1>
    <hr/>

    <table class="table table-bordered table-striped">
        <tr>
            <th>ID</th>
            <td>${blog.id}</td>
        </tr>
        <tr>
            <th>Title</th>
            <td>${blog.title}</td>
        </tr>
        <tr>
            <th>Author</th>
            <td>${blog.userByUserId.nickname}, ${blog.userByUserId.firstName} ${blog.userByUserId.lastName}</td>
        </tr>
        <tr>
            <th>Content</th>
            <td>${blog.content}</td>
        </tr>
        <tr>
            <th>Publish Date</th>
            <td><fmt:formatDate value="${blog.pubDate}" pattern="yyyy年MM月dd日"/></td>
        </tr>
    </table>
</div>
<script src="<%=basePath%>/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
</body>
</html>
