<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>增加产品</h2>

<c:forEach var="item" items="${products}">

    ${item.name} <br/>

</c:forEach>
</body>
</html> 