<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>高金盛科技 专业生产销售车载云台摄像机、车载视频系统、便携视频设备</title>
    <meta content="车载云台摄像机、车载视频系统、便携视频设备" name="keywords">
    <meta content=">高金盛科技,车载云台摄像机、车载视频系统、便携视频设备" name="description">
    <link rel="stylesheet" type="text/css" href="/Pic/Style.css">
    <link rel="stylesheet" type="text/css" href="Js/index.css">
    <script language="javascript" src="/Pic/FlashView.js"></script>
    <script language="javascript" src="/Pic/ImgSize.js"></script>
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
                    <img src="/images/index_01.jpg" alt="九安光电是专业生产硬盘录像机的厂家" width="978" height="110"
                         border="0"
                         usemap="#MapCh"></td>
            </tr>
            <tr>
                <td>
                    <table width="978" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <img src="/images/nav_01.jpg" width="15" height="71" alt=""></td>
                            <td width="775" height="71" background="/images/navBack.jpg">
                                <div class="Divone"><a href="/index.jsp">首　页</a></div>
                                <div class="Divone"><a href="About.jsp">关于我们</a></div>
                                <div class="Divone"><a href="productList.html?dpage=1">产品展示</a></div>
                                <div class="Divone"><a href="Case.jsp">成功案例</a></div>
                                <div class="Divone"><a href="Tech.jsp">服务支持</a></div>
                                <div class="Divone"><a href="Join.jsp" rel="nofollow">代理加盟</a></div>
                                <div class="Divone"><a href="News.jsp">新闻中心</a></div>
                                <div class="Divone"><a href="Contact.jsp" rel="nofollow">联系我们</a></div>
                            </td>
                            <td width="167" height="71" background="/images/navBack.jpg" align="center">
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
                                <img src="/images/nav_04.jpg" width="22" height="71" alt=""></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

        <map name="MapCh" id="MapCh">
            <area shape="rect" coords="834,16,884,39" href="#"/>
            <area shape="rect" coords="892,17,954,39" href="en"/>
        </map>
        <table width="978" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td width="11" height="223" style="padding-left:2px;">&nbsp;</td>
                <td width="951" style="padding-left:2px;"><img src="/images/contact.jpg" width="951"
                                                               height="223">
                </td>
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
                                        <td width="229" height="30" background="/images/left_01.jpg">
                                            <span style="color:#ffffff; padding-left:10px; font-weight:bold;">联系我们</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="/images/left_03.jpg" width="229" height="13" alt="">
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="/images/left_06.jpg" width="229" height="5" alt="">
                                        </td>
                                    </tr>
                                </table>
                            <td width="726">
                                <table width="726" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="726" height="30" style="color:#000000;">
                                            您现在的位置：首页>联系我们
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <img src="/images/nRight_03.jpg" width="726" height="5"
                                                 alt=""></td>
                                    </tr>
                                    <tr>
                                        <td width="726" height="559" valign="top"
                                            style="line-height:25px; padding:15px;">
                                            <P><FONT color=#000000 size=3><STRONG>服务热线：13554940391</STRONG></FONT></P>

                                            <P><FONT color=#000000 size=3><STRONG>服务QQ:&nbsp; 2630881481&nbsp; &nbsp;&nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </STRONG> </FONT></P>

                                            <P><FONT color=#000000 size=3><STRONG>地址：深圳市南山区西丽镇红花岭工业南区群泰工业区6栋</STRONG>
                                            </FONT></P>


                                            <P>&nbsp;</P></FONT>
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