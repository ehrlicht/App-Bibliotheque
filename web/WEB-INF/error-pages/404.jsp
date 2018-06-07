<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error 404 - Page Not Found</title>
    <style>
        .center {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 35%;
        }</style>
</head>
<body>
<img class="center" src="<%=request.getContextPath()%>/ressources/404.jpg">
</body>
</html>