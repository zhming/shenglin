<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>胜林电子 专业销售车各种载式海螺型红外夜视摄像机-车载监控,车载硬盘录像机,车载SD卡录像机,3G车载监控,车载录像机</title>
    <meta content="车载式海螺型红外夜视摄像机-车载监控,车载硬盘录像机,车载SD卡录像机,3G车载监控,车载录像机" name="keywords">
    <meta content=">胜林科技,车载式海螺型红外夜视摄像机-车载监控,车载硬盘录像机,车载SD卡录像机,3G车载监控,车载录像机" name="description">
    <link rel="stylesheet" type="text/css" href="<%= basePath%>Pic/Style.css">
    <link rel="shortcut icon" href="<%= basePath%>Pic/favicon.ico" type="image/x-icon"/>
    <script language="javascript" src="<%= basePath%>Pic/FlashView.js"></script>
    <script language="javascript" src="<%= basePath%>Pic/ImgSize.js"></script>
    <script language="javascript" src="<%= basePath%>js/jquery-mini-1.8.1.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <noscript>
        <iframe src="*.html"></iframe>
    </noscript>

</head>
<body bgcolor="#cccccc" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
    <div style="width:978px; background-color:#ffffff">
        <table width="978" height="110" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
            <tr>
                <td>
                    <img src="<%= basePath%>images/index_01.jpg" alt="胜林电子是专业销售硬盘录像机" width="978" height="110"
                         border="0"
                         usemap="#MapCh"></td>
            </tr>
            <tr>
                <td>
                    <table width="978" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <img src="<%= basePath%>images/nav_01.jpg" width="15" height="71" alt=""></td>
                            <td width="775" height="71" background="<%= basePath%>images/navBack.jpg">
                                <div class="Divone"><a href="<%= basePath%>index.jsp">首　页</a></div>
                                <div class="Divone"><a href="About.jsp">关于我们</a></div>
                                <div class="Divone"><a href="<%= basePath%>productList.html?dpage=1">产品展示</a></div>
                                <div class="Divone"><a href="Case.jsp">成功案例</a></div>
                                <div class="Divone"><a href="Tech.jsp">服务支持</a></div>
                                <div class="Divone"><a href="Join.jsp" rel="nofollow">代理加盟</a></div>
                                <div class="Divone"><a href="News.jsp">新闻中心</a></div>
                                <div class="Divone"><a href="Contact.jsp" rel="nofollow">联系我们</a></div>
                            </td>
                            <td width="167" height="71" background="<%= basePath%>images/navBack.jpg" align="center">
                                <form id=search action="Product.asp">
                                    <input type="text"
                                           style="width:110px; background-color:#ffffff; border:#C1C5CA 1px solid; color:#000000;  height:20px"
                                           id="keyWord" name="keyword" value=""
                                           onFocus="if(this.value==''){this.value='';}"
                                           onBlur="if(this.value==''){this.value='';}"/>&nbsp;&nbsp;<input type="submit"
                                                                                                           value="go"
                                                                                                           height="18"/>
                                </form
                                        >
                            </td>
                            <td>
                                <img src="<%= basePath%>images/nav_04.jpg" width="22" height="71" alt=""></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

        <h2>产品更新</h2>
        <form:form enctype="multipart/form-data" method="post" action="addOrUpdateProduct.html">
        <table>
            <tr>
                <td><form:label path="name">产品名称</form:label></td>
                <td>
                    <form:input path="name" value="${productEntity.name}"/>
                    <form:hidden path="id" value="${productEntity.id}"/>
                </td>
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
                <td><form:input path="description" value="${productEntity.description}"/></td>
            </tr>
            <tr>
                <td><form:label path="cs">参 数</form:label></td>
                <td><form:input path="cs" value="${productEntity.cs}"/></td>
            </tr>

            <tr>
                <td><form:label path="cdate">上架日期</form:label></td>
                <td><form:input path="cdate" value="${productEntity.cdate}"/><span>日期格式：2015/01/01</span></td>
            </tr>
            <tr>
                <td>上传文件</td>
                <td><input type="file" name="fileUpload" value=""/></td>

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
















