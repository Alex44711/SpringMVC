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
        <title>SpringMVC Demo 更新用户</title>
        <link rel="stylesheet" href="<%=basePath%>/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    </head>
    <body>
    <div class="container">
        <h1>SpringMVC 更新用户信息</h1>
        <hr/>

        <form:form action="/admin/users/updateP" method="post" modelAttribute="userP" role="form">
            <div class="form-group">
                <label for="firstName">Nickname:</label>
                <input type="text" class="form-control" id="nickname" name="nickname" placeholder="Enter Nickname:"
                       value="${user.nickname}"/>
            </div>
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter FirstName:"
                       value="${user.firstName}"/>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter LastName:"
                       value="${user.lastName}"/>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="text" class="form-control" id="password" name="password" placeholder="Enter Password:"
                       value="${user.password}"/>
            </div>
            <!-- 把 id 一并写入 userP 中 -->
            <input type="hidden" id="id" name="id" value="${user.id}"/>

            <div class="form-group">
                <button type="submit" class="btn btn-sm btn-success">提交</button>
            </div>
        </form:form>
    </div>
    <script src="<%=basePath%>/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    </body>
</html>
