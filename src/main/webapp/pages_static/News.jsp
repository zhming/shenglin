<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>高金盛科技 专业生产销售车载云台摄像机、车载视频系统、便携视频设备</title>
    <meta content="车载云台摄像机、车载视频系统、便携视频设备" name="keywords">
    <meta content=">高金盛科技,车载云台摄像机、车载视频系统、便携视频设备" name="description">
    <link rel="stylesheet" type="text/css" href="../Pic/Style.css">
    <link rel="stylesheet" type="text/css" href="Js/index.css">
    <script language="javascript" src="../Pic/FlashView.js"></script>
    <script language="javascript" src="../Pic/ImgSize.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <noscript>
        <iframe src="*.html"></iframe>
    </noscript>
    <script>
        window.onerror = function () {
            return true
        };
    </script>
    <script>
        var _$ = function (id, form) {
            return form ? eval("document.getElementById('" + form + "')." + id) : ("string" == typeof id ? document.getElementById(id) : id)
        } //Firefox必须有id值
        var _$gtag = function (name, tagName) {
            return name ? _$(name).getElementsByTagName(tagName) : document.getElementsByTagName(tagName)
        } //通过Tag获取子对象
        var _$tag = function (name) {
            return document.getElementsByTagName(name)
        } //通过Tag获取对象
        var _$gname = function (name) {
            return document.getElementsByName(name)
        } //某个Name
        var _$ihtml = function (id, s) {
            _$(id).innerHTML = s
        }
        var _$itext = function (id, s) {
            _$(id).innerText = s
        }
        var _$ivalue = function (id, s) {
            _$(id).value = s
        }
        var _$gclass = function (name) {
            return getElementsByClassName(name)
        } //通过className获取对象
        var _$db = function (id, form) {
            form ? eval("_$('" + id + "','" + form + "').disabled = true") : _$(id).disabled = true
        } //关闭按钮

        //======================= AJAX
        function XHR() { //创建XMLHttpRequest
            var XHR = false;
            try {
                XHR = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
                try {
                    XHR = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {
                    XHR = false;
                }
            }
            if (!XHR && typeof XMLHttpRequest != "undefined") {
                XHR = new XMLHttpRequest();
            }
            return XHR;
        }

        function getEvaluate(ID, agreeID, disagreeID) {
            var xhr = XHR();
            xhr.open("GET", "Evaluate.asp?ID=" + ID, false);
            xhr.send(null);
            var msgs = xhr.responseText.split(",");
            _$(agreeID).innerHTML = msgs[0];
            _$(disagreeID).innerHTML = msgs[1];
        }

        //======================= 获取URL参数
        function Request(name) {
            var strHref = top.location.href;
            var intPos = strHref.indexOf("#");
            var strRight = strHref.substr(intPos + 1);
            var arrTmp = strRight.split("&");
            for (var i = 0; i < arrTmp.length; i++) {
                var arrTemp = arrTmp[i].split("=");
                if (arrTemp[0].toUpperCase() == name.toUpperCase()) return unescape(arrTemp[1]);
            }
            return null;
        }

        //======================= window.onload
        window.onload = function () {
            var tag = document.getElementsByTagName("A");
            for (var i = 0; i < tag.length; i++)tag[i].onfocus = function () {
                this.blur();
            }
            var tagA = document.getElementsByTagName("Area");
            for (var i = 0; i < tagA.length; i++)tagA[i].onfocus = function () {
                this.blur();
            }

        }
    </script>
</head>
<body bgcolor="#cccccc" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
<div style="width:978px; background-color:#ffffff">
<table width="978" height="110" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
    <tr>
        <td>
            <img src="../images/index_01.jpg" alt="胜林电子是专业销售硬盘录像机的公司" width="978" height="110" border="0"
                 usemap="#MapCh"></td>
    </tr>
    <tr>
        <td>
            <table width="978" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <img src="../images/nav_01.jpg" width="15" height="71" alt=""></td>
                    <td width="775" height="71" background="../images/navBack.jpg">
                        <div class="Divone"><a href="../index.jsp">首　页</a></div>
                        <div class="Divone"><a href="About.jsp">关于我们</a></div>
                        <div class="Divone"><a href="<%= basePath%>/productList.html?dpage=1">产品展示</a></div>
                        <div class="Divone"><a href="Case.jsp">成功案例</a></div>
                        <div class="Divone"><a href="Tech.jsp">服务支持</a></div>
                        <div class="Divone"><a href="Join.jsp" rel="nofollow">代理加盟</a></div>
                        <div class="Divone"><a href="News.jsp">新闻中心</a></div>
                        <div class="Divone"><a href="Contact.jsp" rel="nofollow">联系我们</a></div>
                    </td>
                    <td width="167" height="71" background="../images/navBack.jpg" align="center">
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
                        <img src="../images/nav_04.jpg" width="22" height="71" alt=""></td>
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
    <td width="951" style="padding-left:2px;"><img src="../images/flash.jpg" width="951" height="223"></td>
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
            <td width="229" height="30" background="../images/left_01.jpg">
                <span style="color:#ffffff; padding-left:10px; font-weight:bold;">新闻中心</span>
            </td>
        </tr>
        <tr>
            <td width="229" background="../images/leftBack.jpg" height="240" valign="top" style="padding-left:10px;">

                <div style="width:200px; float:left;  height:26px;  padding-top:7px; border-bottom:#fff 1px solid;">
                    <img src="../Pic/Ar04.gif">
                    <a href="News.asp?ClassId=102" style="color:#032F76; font-size:13px;">行业新闻</a>
                </div>

                <div style="width:200px; float:left;  height:26px;  padding-top:7px; border-bottom:#fff 1px solid;">
                    <img src="../Pic/Ar04.gif">
                    <a href="News.asp?ClassId=103" style="color:#032F76; font-size:13px;">企业新闻</a>
                </div>

                <div style="width:200px; float:left;  height:26px;  padding-top:7px; border-bottom:#fff 1px solid;">
                    <img src="../Pic/Ar04.gif">
                    <a href="News.asp?ClassId=104" style="color:#032F76; font-size:13px;">安装监控解决方案</a>
                </div>

                <div style="width:200px; float:left;  height:26px;  padding-top:7px; border-bottom:#fff 1px solid;">
                    <img src="../Pic/Ar04.gif">
                    <a href="News.asp?ClassId=105" style="color:#032F76; font-size:13px;">安防监控安装问题</a>
                </div>

            </td>
        </tr>
        <tr>
            <td>
                <img src="../images/left_03.jpg" width="229" height="13" alt=""></td>
        </tr>
        <tr>
            <td width="229" height="30" background="../images/left_01.jpg">
                <span style="color:#ffffff; padding-left:10px; font-weight:bold;">最新新闻</span>
            </td>
        </tr>
        <tr>
            <td width="229" height="330" background="../images/leftBack2.JPG" valign="top">

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=759" style="color:#282828; font-size:12px;">九安将参展第十四届深圳安博会</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=758" style="color:#282828; font-size:12px;">视频监控明年底力争覆盖东莞全市</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=757" style="color:#282828; font-size:12px;">黄金周结束，归程应加强安全防范</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=756" style="color:#282828; font-size:12px;">光纤与物联网融合，未来应用广泛</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=755" style="color:#282828; font-size:12px;">视频会议摄像机引领信息化潮流</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=754" style="color:#282828; font-size:12px;">3G无线视频监控有哪些特点？</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=753" style="color:#282828; font-size:12px;">智能分析技术让视频监控更顺利</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=752" style="color:#282828; font-size:12px;">做好道路监控，让安全一路畅行</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=751" style="color:#282828; font-size:12px;">智慧城市项目为武汉经济发展插上</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=750" style="color:#282828; font-size:12px;">从创新入手推动智慧城市发展</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=749" style="color:#282828; font-size:12px;">公交车，别让安防产品成为摆设</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=748" style="color:#282828; font-size:12px;">3G无线视频监控系统特点浅析</a>
                </div>

                <div style="width:214px; float:left;  height:23px;">
                    <img src="../images/dian.gif">
                    <a href="NewsShow.asp?id=747" style="color:#282828; font-size:12px;">校园安防系统监控总框架设计案例</a>
                </div>

            </td>
        </tr>
        <tr>
            <td>
                <img src="../images/left_06.jpg" width="229" height="5" alt=""></td>
        </tr>
    </table>
<td width="726">
<table width="726" border="0" cellpadding="0" cellspacing="0">
<tr>
    <td width="726" height="30" style="color:#000000;">
        您现在的位置：首页>新闻中心
    </td>
</tr>
<tr>
    <td width="726" height="59"
        style="color:#303030; font-family:幼圆; font-weight:bold; font-size:22px; text-align:center;">
        新闻中心
    </td>
</tr>
<tr>
    <td>
        <img src="../images/nRight_03.jpg" width="726" height="5" alt=""></td>
</tr>
<tr>
<td width="749" height="559" valign="top" style="line-height:25px; padding:15px;">

<table width="95%" border="0" cellspacing="0" cellpadding="0">
<tr>

    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=759" style="color:#666"
                                                                   title="九安将参展第十四届深圳安博会&#10;2013-10-21">九安将参展第十四届深圳安博会</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-10-21]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=758" style="color:#666"
                                                                   title="视频监控明年底力争覆盖东莞全市&#10;2013-10-14">视频监控明年底力争覆盖东莞全市</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-10-14]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=757" style="color:#666"
                                                                   title="黄金周结束，归程应加强安全防范&#10;2013-10-08">黄金周结束，归程应加强安全防范</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-10-08]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=756" style="color:#666"
                                                                   title="光纤与物联网融合，未来应用广泛&#10;2013-09-17">光纤与物联网融合，未来应用广泛</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-09-17]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=755" style="color:#666"
                                                                   title="视频会议摄像机引领信息化潮流&#10;2013-09-13">视频会议摄像机引领信息化潮流</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-09-13]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=754" style="color:#666"
                                                                   title="3G无线视频监控有哪些特点？&#10;2013-09-06">3G无线视频监控有哪些特点？</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-09-06]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=753" style="color:#666"
                                                                   title="智能分析技术让视频监控更顺利&#10;2013-09-04">智能分析技术让视频监控更顺利</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-09-04]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=752" style="color:#666"
                                                                   title="做好道路监控，让安全一路畅行&#10;2013-09-02">做好道路监控，让安全一路畅行</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-09-02]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=751" style="color:#666"
                                                                   title="智慧城市项目为武汉经济发展插上翅膀&#10;2013-08-30">智慧城市项目为武汉经济发展插上翅膀</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-08-30]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=750" style="color:#666"
                                                                   title="从创新入手推动智慧城市发展&#10;2013-08-28">从创新入手推动智慧城市发展</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-08-28]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=749" style="color:#666"
                                                                   title="公交车，别让安防产品成为摆设&#10;2013-08-26">公交车，别让安防产品成为摆设</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-08-26]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=748" style="color:#666"
                                                                   title="3G无线视频监控系统特点浅析&#10;2013-08-23">3G无线视频监控系统特点浅析</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-08-23]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=747" style="color:#666"
                                                                   title="校园安防系统监控总框架设计案例&#10;2013-08-21">校园安防系统监控总框架设计案例</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-08-21]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=746" style="color:#666"
                                                                   title="智能化与安防产业结合发展如火如荼&#10;2013-08-19">智能化与安防产业结合发展如火如荼</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-08-19]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=745" style="color:#666"
                                                                   title="视频监控需求猛增，无线监控成主角&#10;2013-08-15">视频监控需求猛增，无线监控成主角</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-08-15]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td align="left" style="padding-left:15px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td height="31" style="border-bottom:#999999 1px dashed;">
                    <img src="../images/guide.gif"/>&nbsp;&nbsp;<a href="NewsShow.asp?ID=743" style="color:#666"
                                                                   title="网络视频监控摄像头调试的目的和方法&#10;2013-08-13">网络视频监控摄像头调试的目的和方法</a>
                </td>
                <td align="right" style="border-bottom:#999999 1px dashed;"><font color="#000000">[2013-08-13]&nbsp;&nbsp;&nbsp;</font>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
<tr>
</table>
<table width="95%" border="0" align="center" cellpadding="3" cellspacing="0">
    <tr>
        <td>
            <table width="90%" border="0" align="right" cellpadding="0" cellspacing="0"
                   style="font-size:10pt; padding-bottom:20px;">
                <tr>
                    <td align="right">

  <span class="ProPage_Page">
  <font face=webdings>9</font>
  <font face=webdings>7</font>
  </span>
                        第<span class="Propage_Font">1</span>页

                        <a href="?SortID=100&ClassID=&CurPage=2&Type3=3"><font face=webdings>8</font></a>
                        <a href="?SortID=100&ClassID=&CurPage=39&Type3=3"><font face=webdings>:</font></a>

                        共<span class="Propage_Font">39</span>页
                        <select onChange="if(this.value!='')location.href=this.value;">

                            <option value="?SortID=100&ClassID=&CurPage=1&Type3=3" selected>1</option>

                            <option value="?SortID=100&ClassID=&CurPage=2&Type3=3">2</option>

                            <option value="?SortID=100&ClassID=&CurPage=3&Type3=3">3</option>

                            <option value="?SortID=100&ClassID=&CurPage=4&Type3=3">4</option>

                            <option value="?SortID=100&ClassID=&CurPage=5&Type3=3">5</option>

                            <option value="?SortID=100&ClassID=&CurPage=6&Type3=3">6</option>

                            <option value="?SortID=100&ClassID=&CurPage=7&Type3=3">7</option>

                            <option value="?SortID=100&ClassID=&CurPage=8&Type3=3">8</option>

                            <option value="?SortID=100&ClassID=&CurPage=9&Type3=3">9</option>

                            <option value="?SortID=100&ClassID=&CurPage=10&Type3=3">10</option>

                            <option value="?SortID=100&ClassID=&CurPage=11&Type3=3">11</option>

                            <option value="?SortID=100&ClassID=&CurPage=12&Type3=3">12</option>

                            <option value="?SortID=100&ClassID=&CurPage=13&Type3=3">13</option>

                            <option value="?SortID=100&ClassID=&CurPage=14&Type3=3">14</option>

                            <option value="?SortID=100&ClassID=&CurPage=15&Type3=3">15</option>

                            <option value="?SortID=100&ClassID=&CurPage=16&Type3=3">16</option>

                            <option value="?SortID=100&ClassID=&CurPage=17&Type3=3">17</option>

                            <option value="?SortID=100&ClassID=&CurPage=18&Type3=3">18</option>

                            <option value="?SortID=100&ClassID=&CurPage=19&Type3=3">19</option>

                            <option value="?SortID=100&ClassID=&CurPage=20&Type3=3">20</option>

                            <option value="?SortID=100&ClassID=&CurPage=21&Type3=3">21</option>

                            <option value="?SortID=100&ClassID=&CurPage=22&Type3=3">22</option>

                            <option value="?SortID=100&ClassID=&CurPage=23&Type3=3">23</option>

                            <option value="?SortID=100&ClassID=&CurPage=24&Type3=3">24</option>

                            <option value="?SortID=100&ClassID=&CurPage=25&Type3=3">25</option>

                            <option value="?SortID=100&ClassID=&CurPage=26&Type3=3">26</option>

                            <option value="?SortID=100&ClassID=&CurPage=27&Type3=3">27</option>

                            <option value="?SortID=100&ClassID=&CurPage=28&Type3=3">28</option>

                            <option value="?SortID=100&ClassID=&CurPage=29&Type3=3">29</option>

                            <option value="?SortID=100&ClassID=&CurPage=30&Type3=3">30</option>

                            <option value="?SortID=100&ClassID=&CurPage=31&Type3=3">31</option>

                            <option value="?SortID=100&ClassID=&CurPage=32&Type3=3">32</option>

                            <option value="?SortID=100&ClassID=&CurPage=33&Type3=3">33</option>

                            <option value="?SortID=100&ClassID=&CurPage=34&Type3=3">34</option>

                            <option value="?SortID=100&ClassID=&CurPage=35&Type3=3">35</option>

                            <option value="?SortID=100&ClassID=&CurPage=36&Type3=3">36</option>

                            <option value="?SortID=100&ClassID=&CurPage=37&Type3=3">37</option>

                            <option value="?SortID=100&ClassID=&CurPage=38&Type3=3">38</option>

                            <option value="?SortID=100&ClassID=&CurPage=39&Type3=3">39</option>

                        </select>
                        每页<span class="Propage_Font">16</span>条
                        共<span class="Propage_Font">611</span>条记录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
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
</td>
</tr>
</table>

<table width="955" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="955" height="22">
            <span style="color:#AF1E32; padding-left:5px;">快速链接：</span>
        </td>
    </tr>

    <tr>
        <td width="955" height="6"></td>
    </tr>
    <tr>
        <td width="955" height="34" bgcolor="#AF1E32" align="center" style="color:#ffffff">
            公司主营产品&nbsp;&nbsp;:&nbsp;&nbsp;
            <a href="http://www.kocoso.cn/Product.asp?SortId=59" style="color:#ffffff">监控摄像头</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://www.kocoso.cn/Product.asp?SortId=52" style="color:#ffffff">DVR</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://www.kocoso.cn/Product.asp?SortId=77" style="color:#ffffff">NVR</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://www.kocoso.cn/Product.asp?SortId=90" style="color:#ffffff">工程宝</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://www.kocoso.cn/Product.asp" style="color:#ffffff">监控设备</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://www.kocoso.cn/Product.asp?SortId=103" style="color:#ffffff">硬盘录像机</a>&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td width="955" height="75" align="center" style="line-height:23px; color:#282828;">
            <DIR>
                <LI>
                    <DIV align=center>CopyRight&copy; <A href="http://www.kocoso.cn">www.kocoso.cn</A>
                        深圳高金盛科技有限公司<BR>Tel:13554940391 Email:jaoys@163.com<BR>地址：深圳市南山区西丽镇红花岭工业南区群泰工业区6栋
                        <BR>
                    </DIV>
                </LI>
            </DIR>
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

<script src="http://s13.cnzz.com/stat.php?id=4510818&web_id=4510818&show=pic" language="JavaScript"></script>
</div>
</center>
</body>
</html>