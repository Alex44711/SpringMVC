<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>SpringMVC 修改博客</title>
    <link rel="stylesheet" href="<%=basePath%>/bootstrap-4.3.1-dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>SpringMVC 修改博客</h1>
    <hr/>
    <form:form action="/admin/blogs/updateP" method="post" modelAttribute="blogP" role="form">
        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title:" value="${blog.title}"/>
        </div>
        <div class="form-group">
            <label for="userByUserId.id">Author:</label>
            <select class="form-control" id="userByUserId.id" name="userByUserId.id">
                <c:forEach items="${userList}" var="user">
                    <c:if test="${user.id==blog.userByUserId.id}">
                        <option value="${user.id}" selected="selected">${user.nickname}, ${user.firstName} ${user.lastName}</option>
                    </c:if>
                    <c:if test="${user.id!=blog.userByUserId.id}">
                        <option value="${user.id}">${user.nickname}, ${user.firstName} ${user.lastName}</option>
                    </c:if>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="content">Content:</label>
            <textarea class="form-control" id="content" name="content" rows="3"
                      placeholder="Please Input Content">${blog.content}</textarea>
        </div>
        <div class="form-group">
            <label for="pubDate">Publish Date:</label>
            <input type="date" class="form-control" id="pubDate" name="pubDate"
                   value="<fmt:formatDate value="${blog.pubDate }" pattern="yyyy-MM-dd"/>"/>
        </div>
        <!-- 把 id 一并写入 blogP 中 -->
        <input type="hidden" id="id" name="id" value="${blog.id}"/>
        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">提交</button>
        </div>
    </form:form>
</div>
<script src="<%=basePath%>/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
</body>
</html>
