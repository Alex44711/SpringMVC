<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html><%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC 用户详情</title>
    <link rel="stylesheet" href="<%=basePath%>/bootstrap-4.3.1-dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>SpringMVC 用户详情</h1>
    <hr/>

    <table class="table table-bordered table-striped">
        <tr>
            <th>ID</th>
            <td>${user.id}</td>
        </tr>
        <tr>
            <th>Nickname</th>
            <td>${user.nickname}</td>
        </tr>
        <tr>
            <th>First Name</th>
            <td>${user.firstName}</td>
        </tr>
        <tr>
            <th>Last Name</th>
            <td>${user.lastName}</td>
        </tr>
        <tr>
            <th>Password</th>
            <td>${user.password}</td>
        </tr>
    </table>
</div>
<script src="<%=basePath%>/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
</body>
</html>