<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="Form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>增加产品</h2>
<form:form enctype="multipart/form-data" method="post" action="addProduct.html">
    <table>
        <tr>
            <td><form:label path="name">产品名称</form:label></td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td><form:label path="type">产品类型</form:label></td>

            <td><form:select path="type">
                <form:option value="01">车载式硬盘录像机</form:option>
                <form:option value="02">车载式SD卡录像机</form:option>
                <form:option value="03">车载式摄像机</form:option>
                <form:option value="04">车载式液晶显示器</form:option>
                <form:option value="05">车载云台摄像机</form:option>
                <form:option value="06">3G单兵执法监控系统</form:option>
            </form:select></td>
        </tr>
        <tr>
            <td><form:label path="description">描 述</form:label></td>
            <td><form:input path="description"/></td>
        </tr>
        <tr>
            <td><form:label path="cs">参 数</form:label></td>
            <td><form:input path="cs"/></td>
        </tr>

        <tr>
            <td><form:label path="cdate">上架日期</form:label></td>
            <td><form:input path="cdate"/></td>
        </tr>
        <tr>
            <td>上传文件</td>
            <td><input type="file" name="fileUpload"/></td>

        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="保  存"/>
            </td>
        </tr>

    </table>
</form:form>
</body>
</html> 