<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>胜林电子 专业销售车各种载式海螺型红外夜视摄像机-车载监控,车载硬盘录像机,车载SD卡录像机,3G车载监控,车载录像机</title>
    <meta content="车载式海螺型红外夜视摄像机-车载监控,车载硬盘录像机,车载SD卡录像机,3G车载监控,车载录像机" name="keywords">
    <meta content=">胜林科技,车载式海螺型红外夜视摄像机-车载监控,车载硬盘录像机,车载SD卡录像机,3G车载监控,车载录像机" name="description">
    <link rel="stylesheet" type="text/css" href="/shenglin/Pic/Style.css">
    <link rel="shortcut icon" href="/shenglin/Pic/favicon.ico" type="image/x-icon"/>
    <script language="javascript" src="/shenglin/Pic/FlashView.js"></script>
    <script language="javascript" src="/shenglin/Pic/ImgSize.js"></script>
    <script language="javascript" src="/shenglin/js/jquery-mini-1.8.1.js"></script>
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
            <img src="/shenglin/images/index_01.jpg" alt="胜林电子是专业销售硬盘录像机" width="978" height="110" border="0"
                 usemap="#MapCh"></td>
    </tr>
    <tr>
        <td>
            <table width="978" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <img src="/shenglin/images/nav_01.jpg" width="15" height="71" alt=""></td>
                    <td width="775" height="71" background="/shenglin/images/navBack.jpg">
                        <div class="Divone"><a href="/shenglin/index.jsp">首　页</a></div>
                        <div class="Divone"><a href="About.jsp">关于我们</a></div>
                        <div class="Divone"><a href="/shenglin/productList.html?dpage=1">产品展示</a></div>
                        <div class="Divone"><a href="Case.jsp">成功案例</a></div>
                        <div class="Divone"><a href="Tech.jsp">服务支持</a></div>
                        <div class="Divone"><a href="Join.jsp" rel="nofollow">代理加盟</a></div>
                        <div class="Divone"><a href="News.jsp">新闻中心</a></div>
                        <div class="Divone"><a href="Contact.jsp" rel="nofollow">联系我们</a></div>
                    </td>
                    <td width="167" height="71" background="/shenglin/images/navBack.jpg" align="center">
                        <form id=search action="Product.asp">
                            <input type="text"
                                   style="width:110px; background-color:#ffffff; border:#C1C5CA 1px solid; color:#000000;  height:20px"
                                   id="keyWord" name="keyword" value="" onFocus="if(this.value==''){this.value='';}"
                                   onBlur="if(this.value==''){this.value='';}"/>&nbsp;&nbsp;<input type="submit"
                                                                                                   value="go"
                                                                                                   height="18"/></form
                                >
                    </td>
                    <td>
                        <img src="/shenglin/images/nav_04.jpg" width="22" height="71" alt=""></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<style type="text/css">
    .Divone {
        width: 96px;
        text-align: center;
        float: left;
    }

    .Divone a {
        color: #fff;
        font-size: 13px;
    }

    .Divone a:visited {
        color: #fff;
        font-size: 13px;
    }

    .Divone a:hover {
        color: #ffff00;
        font-size: 13px;
    }
</style>
<map name="MapCh" id="MapCh">
    <area shape="rect" coords="834,16,884,39" href="#"/>
    <area shape="rect" coords="892,17,954,39" href="en"/>
</map>
<table width="978" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="11" height="223" style="padding-left:2px;">&nbsp;</td>
        <td width="951" style="padding-left:2px;"><img src="/shenglin/images/flash.jpg" width="951" height="223"></td>
        <td width="16" style="padding-left:2px;">&nbsp;</td>
    </tr>
    <tr>
        <td height="78" rowspan="2" style="padding-left:2px;">&nbsp;</td>
        <td height="10" style="padding-left:2px;">
        </td>
        <td height="78" rowspan="2" style="padding-left:2px;">&nbsp;</td>
    </tr>
    <tr>
        <td height="39" style="padding-left:2px;">
            <table width="955" border="0" cellpadding="0" cellspacing="0">

                <tr>
                    <td width="219" valign="top">
                        <table width="229" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="229" height="30" background="/shenglin/images/left_01.jpg">
                                    <span style="color:#ffffff; padding-left:10px; font-weight:bold;">产品中心</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="229" background="/shenglin/images/leftBack.jpg" height="240" valign="top"
                                    style="padding-left:10px;">

                                    <c:forEach var="type" items="${types}">
                                        <div style="width:200px; float:left;  height:26px;  padding-top:7px; border-bottom:#fff 1px solid;">
                                            <c:if test="${type.key == cType}" var="ss">
                                                <img src="/shenglin/Pic/Ar04.gif">
                                            </c:if>
                                            <c:if test="${ss == false}">
                                                <img src="/shenglin/Pic/guide.gif">
                                            </c:if>
                                            <a href="productListForCategory.html?TYPE=${type.key}"
                                               style="color:#032F76; font-size:13px;">${type.value}</a>
                                        </div>
                                    </c:forEach>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="/shenglin/images/left_03.jpg" width="229" height="13" alt=""></td>
                            </tr>
                            <tr>
                                <td width="229" height="30" background="/shenglin/images/left_01.jpg">
                                    <span style="color:#ffffff; padding-left:10px; font-weight:bold;">最新产品</span>
                                </td>
                            </tr>
                            <tr>
                                <td width="229" height="330" background="/shenglin/images/leftBack2.JPG" valign="top">

                                    <div style="width:214px; float:left;  height:23px;">
                                        <img src="/shenglin/images/dian.gif">
                                        <a href="NewsShow.asp?id=759" style="color:#282828; font-size:12px;">九安将参展第十四届深圳安博会</a>
                                    </div>

                                    <div style="width:214px; float:left;  height:23px;">
                                        <img src="/shenglin/images/dian.gif">
                                        <a href="NewsShow.asp?id=748" style="color:#282828; font-size:12px;">3G无线视频监控系统特点浅析</a>
                                    </div>

                                    <div style="width:214px; float:left;  height:23px;">
                                        <img src="/shenglin/images/dian.gif">
                                        <a href="NewsShow.asp?id=747" style="color:#282828; font-size:12px;">校园安防系统监控总框架设计案例</a>
                                    </div>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="/shenglin/images/left_06.jpg" width="229" height="5" alt=""></td>
                            </tr>
                        </table>
                    <td width="726">
                        <table width="726" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="726" height="30" style="color:#000000;">
                                    您现在的位置：首页>产品中心>${cTypeName}
                                </td>
                            </tr>
                            <tr>
                                <td width="726" height="59"
                                    style="color:#303030; font-family:幼圆; font-weight:bold; font-size:22px; text-align:center;">
                                    产品中心
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="/shenglin/images/nRight_03.jpg" width="726" height="5" alt=""></td>
                            </tr>
                            <tr>
                                <td width="749" height="559" valign="top" style="line-height:25px; padding:15px;">

                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td colspan="3" align="center">
                                                <div><img src="${product.picture}"></div>
                                            </td>
                                        </tr>
                                        <tr class='productTableTr'>
                                            <td class='productTableTd_none' vAlign=top width=204><P
                                                    class=productTablePT><SPAN><STRONG>产品名称<o:p></o:p></STRONG></SPAN>
                                            </P></td>
                                            <td class='productTableTd_none' colSpan=2 vAlign=top width=437><P
                                                    class=productTablePT>
                                                <SPAN><STRONG>${product.name}<o:p></o:p></STRONG></SPAN></P></td>
                                        </tr>
                                        <tr class='productTableTr'>
                                            <td class='productTableTd_none' vAlign=top width=204>&nbsp;</td>
                                            <td class='productTableTd_none' colSpan=2 vAlign=top width=437>&nbsp;</td>
                                        </tr>
                                        <tr class='productTableTr'>
                                            <td class='productTableTd_none' vAlign=top width=204><P
                                                    class=productTablePT><SPAN><STRONG>产品类型<o:p></o:p></STRONG></SPAN>
                                            </P></td>
                                            <td class='productTableTd_none' colSpan=2 vAlign=top width=437><P
                                                    class=productTablePT><SPAN><STRONG>${cTypeName}<o:p></o:p></STRONG></SPAN>
                                            </P></td>
                                        </tr>
                                        <tr class='productTableTr'>
                                            <td class='productTableTd_none' vAlign=top width=204> &nbsp;</td>
                                            <td class='productTableTd_none' colSpan=2 vAlign=top width=437>&nbsp;</td>
                                        </tr>
                                        <tr class='productTableTr'>
                                            <td class='productTableTd_none' vAlign=top width=204><P
                                                    class=productTablePT><SPAN><STRONG>产品描述<o:p></o:p></STRONG></SPAN>
                                            </P>
                                                <input type="hidden" id="productStr" value="${product.cs}">
                                                <input type="hidden" id="productStr1" value="${productStr}">
                                            </td>
                                            <td class='productTableTd_none' colSpan=2 vAlign=top width=437><P
                                                    class=productTablePT><SPAN><STRONG>${product.description}<o:p></o:p></STRONG></SPAN>
                                            </P></td>
                                        </tr>
                                        <tr class='productTableTr'>
                                            <td class='productTableTd_none' vAlign=top width=204>&nbsp;</td>
                                            <td class='productTableTd_none' colSpan=2 vAlign=top width=437>&nbsp;</td>
                                        </tr>

                                        <tr class='productTableTr'>
                                            <td colspan="3"><P class=productTablePT>
                                                <SPAN><STRONG>产品参数<o:p></o:p></STRONG></SPAN></P></td>
                                        </tr>

                                        <tr>
                                            <td colspan="3"><br/>

                                                <div id="cs"></div>
                                            </td>
                                        </tr>
                                        <script type="text/javascript">

                                            var proStr = $("#productStr1").val();
                                            var csStr = "<TABLE class='productTable' style='line-height:25px; padding:15px;'  border=1 cellSpacing=0 cellPadding=0 width=641> <TBODY>";
                                            csStr += " <TR class='productTableTr'>" +
                                                    "<TD class='productTableTd' vAlign=top width=204 >" +
                                                    "<P class=productTablePT ><SPAN><STRONG>项目<o:p></o:p></STRONG></SPAN></P></TD>" +
                                                    "<TD class='productTableTd' colSpan=2 vAlign=top width=437>" +
                                                    "<P class=productTablePT ><B style='mso-bidi-font-weight: normal'><SPAN class='productTableS'>描述</SPAN></B><B style='mso-bidi-font-weight: normal'><SPAN style='mso-bidi-font-family: Arial' lang=EN-US><o:p></o:p></SPAN></B></P></TD></TR>";
                                            ;
                                            var strs = proStr.split("~");
                                            for (i = 0; i < strs.length; i++) {
                                                csStr = csStr + "<tr style='mso-yfti-irow: 0; mso-yfti-firstrow: yes'>";
//                                            alert(strs[i]);
                                                var ss = strs[i].split("^");
                                                for (j = 0; j < ss.length; j++) {
//                                                alert(ss[j]);
                                                    if (j == 0) {
                                                        csStr += "<td width='204' class='productTableTdMx'>";
                                                    } else {
                                                        csStr += "<td width='437' class='productTableTdMx' colspan='2'>";
                                                    }

                                                    csStr += "<p class=a style='MARGIN: 0cm 0cm 0pt'><span class='productTableS'>";
                                                    csStr += ss[j];
                                                    csStr += "</span> </p>";

                                                    csStr += "</td>";
                                                }
                                                csStr += "</tr>";
                                            }
                                            csStr += "<tbody></table>";
                                            $("#cs").html(csStr);

                                        </script>
                                    </table>

                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<!-- Baidu Button BEGIN -->
<script type="text/javascript" id="bdshare_js" data="type=slide&mini=1&img=1&uid=6432502"></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
    document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + new Date().getHours();
</script>
<!-- Baidu Button END -->

<!-- WPA Button Begin -->
<script charset="utf-8" type="text/javascript"
        src="http://static.b.qq.com/account/bizqq/js/wpa.js?wty=1&type=13&kfuin=2630881481&ws=http%3A%2F%2F&title=%E5%9C%A8%E7%BA%BF%E4%BC%81%E4%B8%9AQQ&cot1=%E5%91%A8%E4%B8%80%E8%87%B3%E5%91%A8%E5%85%AD%EF%BC%9A9%3A00-18%EF%BC%9A00&btn1=%E4%BC%81%E4%B8%9AQQ%E4%BA%A4%E8%B0%88&fsty=0&fposX=2&fposY=0&tx=2&aty=0&a=&key=_%3AVgWb%036%066T5%0B%3DT%3BR4%078%0E4%02e%099%06%60W5%01d%0Ee%061Uf"></script>
<!-- WPA Button END -->

<%--<script src="http://s13.cnzz.com/stat.php?id=4510818&web_id=4510818&show=pic" language="JavaScript"></script>--%>
</div>
</center>
</body>
</html>