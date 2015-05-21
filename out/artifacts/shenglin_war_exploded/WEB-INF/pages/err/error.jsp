<%--
  Created by IntelliJ IDEA.
  User: Zhiming Qian
  Date: 14-8-21
  Time: 下午1:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error Page!</title>
    <style type="text/css">
        #main {
            position: absolute;
            height: 200px;
            left: 50%;
            top: 50%;
            margin-left: -200px;
            margin-top: -200px;
        }
    </style>
</head>
<body>
<div id="main">
    <H1>Sorry, this is a error page.</H1>

    <H3>出错啦！快叫工程师来帮忙</H3>
    <h5>错误信息来源：${message}</h5>
</div>
</body>
</html>