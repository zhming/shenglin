<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文件上传</title>
</head>
<body>
<%--<form action="user/fileUpload" method="post" enctype="multipart/form-data">--%>
<form:form action="fileUpload2.html" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td><form:label path="name">Name</form:label></td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td><form:label path="type">Type</form:label></td>
            <td><form:input path="type"/></td>
        </tr>
        <tr>
            <td><form:label path="description">Description</form:label></td>
            <td><form:input path="description"/></td>
        </tr>
        <tr>
            <td><form:label path="cs">Cs</form:label></td>
            <td><form:input path="cs"/></td>
        </tr>
        <tr>
            <td><form:label path="picture">Picture</form:label></td>
            <td><form:input path="picture"/></td>
        </tr>
        <tr>
            <td><form:label path="cdate">Cdate</form:label></td>
            <td><form:input path="cdate"/></td>
        </tr>


    </table>
    <input type="text" name="test" value=""/>
    <input type="file" name="fileUpload"/>
    <input type="submit" value="上传"/>
</form:form>
</body>
</html>