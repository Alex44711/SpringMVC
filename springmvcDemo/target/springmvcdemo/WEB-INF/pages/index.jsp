<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 2019/3/16
  Time: 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="zh-CN">
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SpringMVC Demo 首页</title>
    <link rel="stylesheet" href="<%=basePath%>/bootstrap-4.3.1-dist/css/bootstrap.min.css">
</head>
<body>
<h1>这里是SpringMVC Demo首页</h1>

<h3>出现此页面，说明配置成功。</h3>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<%=basePath%>/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
</body>
</html>
