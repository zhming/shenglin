<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html><% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>高金盛科技 专业生产销售车载云台摄像机、车载视频系统、便携视频设备</title>
    <meta content="车载云台摄像机、车载视频系统、便携视频设备" name="keywords">
    <meta content=">高金盛科技,车载云台摄像机、车载视频系统、便携视频设备" name="description">
    <link rel="stylesheet" type="text/css" href="Pic/Style.css">
    <script language="javascript" src="Pic/FlashView.js"></script>
    <script language="javascript" src="Pic/ImgSize.js"></script>
    <script language="javascript" src="js/jquery-mini-1.8.1.js"></script>

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

        };
    </script>
    <meta name="google-site-verification" content="I4oLfD8PbcyVOsen8soN0GyKLhcHlJxkdaLS6KvQTjg"/>

</head>
<body onScroll="move()" bgcolor="#cccccc" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<jsp:include page="head.jsp"/>

<center>

<map name="MapCh" id="MapCh">
    <area shape="rect" coords="834,16,884,39" href="#"/>
    <area shape="rect" coords="892,17,954,39" href="en"/>
</map>
<table width="978" border="0" cellpadding="0" cellspacing="0">
<tr>
    <td width="11" height="223" style="padding-left:2px;">&nbsp;</td>
    <td width="951" style="padding-left:2px;">
        <%--<object type="application/x-shockwave-flash" data="images/top.swf" width="951" height="223">--%>
        <%--<param name="movie" value="images/top.swf" />--%>
        <%--<param name="wmode" value="transparent" />--%>
        <%--<embed wmode="opaque"></embed>--%>
        <%--</object>--%>
        <div style="height:230px; width:951px; background:#EBEBEB; position:relative" id="flash_outer">
            <div style=" position:absolute; left:0px; top:0px; width:951px; height:230px; overflow:hidden"
                 id="flash_pic">
                <div style="width:951px; height:250px; background:url(images/flash/1.jpg)"></div>
                <div style="width:951px; height:250px; background:url(images/flash/2.jpg)"></div>
                <div style="width:951px; height:250px; background:url(images/flash/3.jpg)"></div>
            </div>
            <ul style="position:absolute; right:0px; bottom:0px; height:16px" id="flash_num">
                <li class="click_over">1</li>
                <li class="click_out">2</li>
                <li class="click_out">3</li>

            </ul>
        </div>
    </td>
    <td width="16" style="padding-left:2px;">&nbsp;</td>
</tr>
<tr>
    <td height="78" rowspan="2" style="padding-left:2px;">&nbsp;</td>
    <td height="39" style="padding-left:2px;">
        <div style="width:951px;  float:left">
            <table width="955" border="0">
                <tr>
                    <td height="5" colspan="2"></td>
                </tr>
                <tr>
                    <td height=1 colspan="2"
                        bgcolor="#AF1E32"></td>
                </tr>
                <tr>
                    <td width="50" height="99"><img src="images/products/test.jpg" width="31" height="99" align="left"/>
                    </td>
                    <td width="905">
                        <div id="demo" style="width:895px; overflow:hidden; margin:0px auto">
                            <table width="930" border=0 align=center cellpadding=1 cellspacing=1 cellspace=0>
                                <tr>
                                    <td width="896" valign=top bgcolor=ffffff id=marquePic1>
                                        <table width='1820' border='0' cellspacing='0'>
                                            <tr>

                                                <td align=center><a href='#/ProShow.asp?Id=112'><img
                                                        src="images/products/5.jpg" alt="8116B DVR" width=126 height=99
                                                        border=0/><br>
                                                    <br>
                                                    8116B-硬盘录像机
                                                </a></td>
                                                <td align=center><a href='#/ProShow.asp?Id=145'><img
                                                        src="images/products/A1.jpg" alt="高清网络摄像机6013A" width=126
                                                        height=99 border=0><br>
                                                    <br>
                                                    网络摄像机6013A</a></td>
                                                <td align=center><a href='#/ProShow.asp?Id=124'><img
                                                        src="images/products/B2.jpg" alt="网络摄像机6013C" width=126
                                                        height=99 border=0><br>
                                                    <br>
                                                    高清网络摄像机6013C</a></td>
                                                <td align=center><a
                                                        href='#/Product.asp?SortId=90'><img
                                                        src="images/products/3.jpg" alt="工程宝" width=126 height=99
                                                        border=0><br>
                                                    <br>
                                                    监控设备-工程宝</a></td>
                                                <td align=center><a href='#/ProShow.asp?Id=122'><img
                                                        src="images/products/B1.jpg" alt="NVR" width=126 height=99
                                                        border=0><br>
                                                    <br>
                                                    NVR9104/9108/9116</a></td>
                                                <td align=center><a href='#/ProShow.asp?Id=108'><img
                                                        src="images/products/6.jpg" alt="DVR" width=126 height=99
                                                        border=0><br>
                                                    <br>
                                                    苹果式硬盘录像机</a></td>
                                                <td align=center><a href='#/ProShow.asp?Id=107'><img
                                                        src="images/products/7.jpg" alt="DVR" width=126 height=99
                                                        border=0><br>
                                                    <br>
                                                    13寸一体式硬盘录像机</a></td>
                                                <td align=center><a href='#/ProShow.asp?Id=106'><img
                                                        src="images/products/8.jpg" alt="DVR" width=126 height=99
                                                        border=0><br>
                                                    <br>
                                                    一体式硬盘录像机</a></td>
                                                <td align=center><a href='#/ProShow.asp?Id=113'><img
                                                        src="images/products/9.jpg" alt="中性产品DVR" width=126 height=99
                                                        border=0><br>
                                                    <br>
                                                    中性硬盘录像机</a></td>
                                                <td align=center><a href='#/Product.asp'><img
                                                        src="images/products/A.jpg" alt="A系列DVR" width=126 height=99
                                                        border=0><br>
                                                    <br>
                                                    A系列硬盘录像机</a></td>
                                                <td align=center><a href='#/Product.asp'><img
                                                        src="images/products/B.jpg" alt="B系列DVR" width=126 height=99
                                                        border=0><br>
                                                    <br>
                                                    B系列硬盘录像机</a></td>
                                                <td align=center><a href='#/Product.asp'><img
                                                        src="images/products/C.jpg" alt="C系列DVR" width=126 height=99
                                                        border=0><br>
                                                    <br>
                                                    C系列硬盘录像机</a></td>
                                                <td align=center><a href='#/Product.asp'><img
                                                        src="images/products/D.jpg" alt="D系列DVR" width=126 height=99
                                                        border=0><br>
                                                    <br>
                                                    D系列硬盘录像机</a></td>

                                            </tr>
                                        </table>
                                    </td>
                                    <td width="27" valign=top id=marquePic2></td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td height="1" colspan="2" bgcolor="#AF1E32"></td>
                </tr>
            </table>
            <script type="text/javascript">
                var speed = 50
                marquePic2.innerHTML = marquePic1.innerHTML
                function Marquee() {
                    if (demo.scrollLeft >= marquePic1.scrollWidth) {
                        demo.scrollLeft = 0
                    } else {
                        demo.scrollLeft++
                    }
                }
                var MyMar = setInterval(Marquee, speed)
                demo.onmouseover = function () {
                    clearInterval(MyMar)
                }
                demo.onmouseout = function () {
                    MyMar = setInterval(Marquee, speed)
                }
            </script>

        </div>
    </td>
    <td height="78" rowspan="2" style="padding-left:2px;">&nbsp;</td>
</tr>
<tr>
    <td height="39" style="padding-left:2px;">
        <div style="width:951px;  float:left">
            <table id="__01" width="956" height="201" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="10" height="9">
                    </td>
                </tr>
                <tr>
                    <td height="32" colspan="3">
                        <img src="images/products/1_02.gif" width="275" height="32" alt=""></td>
                    <td rowspan="5" width="14" height="183">
                    </td>
                    <td colspan="4">
                        <img src="images/products/1_04.gif" width="484" height="32" alt=""></td>
                    <td rowspan="5" width="11" height="183">
                    </td>
                    <td width="171">
                        <img src="images/products/1_06.gif" width="171" height="32" alt=""></td>
                </tr>
                <tr>
                    <td rowspan="2" width="1" height="144" bgcolor="#999999">
                    </td>
                    <td rowspan="2" width="273" height="144">
                        <div class="kuang">
                            <div class="tupian" style="width:140; float:left;margin-top:15px;">
                                <a href='#/ProShow.asp?Id=122'>
                                    <img src="images/products/9104.png" alt="9104/9108/9116-NVR" width="140"
                                         height="103" align="absmiddle"/>

                                    <div class="wenzi" style="width:: 10px;0;margin-left:15px; float:left">
                                        M705系列是专为移动监控市场设计的一款高端硬盘车载监控录像机。采用高速处理器和嵌入式操作系统，结合了IT领域各项最新技术，如音视频编解码技术、大容量硬盘存储技术、流媒体网络技术、视音频降噪技术、成熟的减震技术、宽电压设计，外观简洁，安装灵活方便，功能强大，系统安全可靠。
                                    </div>
                                </a>
                            </div>
                        </div>
                    </td>
                    <td width="1" rowspan="2" bgcolor="#999999">
                    </td>
                    <td width="1" rowspan="2" bgcolor="#999999">
                    </td>
                    <td rowspan="2" width="23" height="144">
                    </td>
                    <td rowspan="2" width="459">
                        <div style="width:220px; float:left;  height:24px;">
                            <img src="images/dian.gif">
                            <a href="NewsShow.asp?id=758" style="color:#282828; font-size:12px;">视频监控明年底力争覆盖东莞全市</a>
                        </div>

                        <div style="width:220px; float:left;  height:24px;">
                            <img src="images/dian.gif">
                            <a href="NewsShow.asp?id=757" style="color:#282828; font-size:12px;">黄金周结束，归程应加强安全防范</a>
                        </div>

                        <div style="width:220px; float:left;  height:24px;">
                            <img src="images/dian.gif">
                            <a href="NewsShow.asp?id=756" style="color:#282828; font-size:12px;">光纤与物联网融合，未来应用广泛</a>
                        </div>

                        <div style="width:220px; float:left;  height:24px;">
                            <img src="images/dian.gif">
                            <a href="NewsShow.asp?id=755" style="color:#282828; font-size:12px;">视频会议摄像机引领信息化潮流</a>
                        </div>

                        <div style="width:220px; float:left;  height:24px;">
                            <img src="images/dian.gif">
                            <a href="NewsShow.asp?id=753" style="color:#282828; font-size:12px;">智能分析技术让视频监控更顺利</a>
                        </div>

                        <div style="width:220px; float:left;  height:24px;">
                            <img src="images/dian.gif">
                            <a href="NewsShow.asp?id=752" style="color:#282828; font-size:12px;">做好道路监控，让安全一路畅行</a>
                        </div>

                        <div style="width:220px; float:left;  height:24px;">
                            <img src="images/dian.gif">
                            <a href="NewsShow.asp?id=751" style="color:#282828; font-size:12px;">智慧城市项目为武汉经济发展插上</a>
                        </div>

                        <div style="width:220px; float:left;  height:24px;">
                            <img src="images/dian.gif">
                            <a href="NewsShow.asp?id=750" style="color:#282828; font-size:12px;">从创新入手推动智慧城市发展</a>
                        </div>

                        <div style="width:220px; float:left;  height:24px;">
                            <img src="images/dian.gif">
                            <a href="NewsShow.asp?id=749" style="color:#282828; font-size:12px;">公交车，别让安防产品成为摆设</a>
                        </div>
                    </td>
                    <td width="1" rowspan="2" bgcolor="#999999">
                    </td>
                    <td width="171" height="7">
                    </td>
                    <td width="1">
                    </td>
                </tr>
                <tr>
                    <td rowspan="2"><a href="#/TechDown.asp"><img src="images/products/1_14.gif"
                                                                  width="171" height="141"
                                                                  alt=""></a></td>
                    <td width="1" height="137">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" rowspan="2">
                        <img src="images/products/1_15.gif" width="275" height="7" alt=""></td>
                    <td colspan="4" rowspan="2">
                        <img src="images/products/1_16.gif" width="484" height="7" alt=""></td>

                </tr>
                <tr>
                    <td width="171" height="3">
                    </td>
                </tr>
                <tr>
                    <td colspan="10" width="955" height="8">
                    </td>
                </tr>
            </table>
        </div>
    </td>
</tr>
</table>

<table width="955" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="955" height="22">
            <span style="color:#AF1E32; padding-left:5px;">友情链接：</span>
        </td>
    </tr>
    <tr>
        <td width="955" height="46" background="images/products/bg.jpg">


            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://www.gkfree.com" style="color:#282828;" target="_blank">工控申保网</a>&nbsp;&nbsp;
            </div>

            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://www.protruly.com.cn" style="color:#282828;" target="_blank">高速球机</a>&nbsp;&nbsp;
            </div>

            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://www.shcmc.com " style="color:#282828;" target="_blank">上海监控安装</a>&nbsp;&nbsp;
            </div>

            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://www.anjianm.com" style="color:#282828;" target="_blank">金属探测器</a>&nbsp;&nbsp;
            </div>


            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://www.anfangren.com.cn" style="color:#282828;" target="_blank">安防人网</a>&nbsp;&nbsp;
            </div>

            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://www.dqgcw.com/" style="color:#282828;" target="_blank">电气工程网</a>&nbsp;&nbsp;
            </div>

            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://www.seeyoucctv.com" style="color:#282828;" target="_blank">监控摄像机</a>&nbsp;&nbsp;
            </div>

            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://www.jinkoumen.com" style="color:#282828;" target="_blank">安检门</a>&nbsp;&nbsp;
            </div>

            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://bbs.szwision.com" style="color:#282828;" target="_blank">安防监控工程公司</a>&nbsp;&nbsp;
            </div>

            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://www.blkj.cn/" style="color:#282828;" target="_blank">停车场系统</a>&nbsp;&nbsp;
            </div>

            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://www.parks8.com/" style="color:#282828;" target="_blank">智能停车场系统</a>&nbsp;&nbsp;
            </div>

            <div style="float:left; text-align:left;">
                &nbsp;&nbsp;<a href="http://joveblog.com" style="color:#282828;" target="_blank">中维世纪博客</a>&nbsp;&nbsp;
            </div>

        </td>
    </tr>
    <tr>
        <td width="955" height="6"></td>
    </tr>
    <tr>
        <td width="955" height="34" bgcolor="#E98253" align="center" style="color:#ffffff">
            公司主营产品&nbsp;&nbsp;:&nbsp;&nbsp;
            <a href="#/Product.asp?SortId=59" style="color:#ffffff">车载式硬盘录像机</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="#/Product.asp?SortId=52" style="color:#ffffff">车载式SD卡录像机</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="#/Product.asp?SortId=77" style="color:#ffffff">车载式摄像机</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="#/Product.asp?SortId=90" style="color:#ffffff">车载式液晶显示器</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="#/Product.asp" style="color:#ffffff">汽车卫士</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="#/Product.asp?SortId=103" style="color:#ffffff">车载云台摄像机</a>&nbsp;&nbsp;
            <a href="#/Product.asp?SortId=103" style="color:#ffffff">3G单兵执法监控系统</a>&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td width="955" height="75" align="center" style="line-height:23px; color:#282828;">
            <DIR>
                <LI>
                    <DIV align=center>CopyRight&copy; <A href="#">www.kocoso.cn</A>深圳高金盛科技有限公司<BR>Tel:13554940391
                        Email:jaoys@163.com<BR>地址：深圳市南山区西丽镇红花岭工业南区群泰工业区6栋<BR>
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

<script src="ad-01.js" language="JavaScript"></script>

<div id="QQ" style="z-index:1;top:200px; position:absolute;">

    <!-- Baidu Button BEGIN -->
    <script type="text/javascript" id="bdshare_js" data="type=slide&mini=1&img=1&uid=6432502"></script>
    <script type="text/javascript" id="bdshell_js"></script>
    <script type="text/javascript">
        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + new Date().getHours();
    </script>
    <!-- Baidu Button END -->

    <script type="text/javascript">
        $(document).ready(function () {
            var len = $("#flash_num>li").length;
            var index = 1;
            var int;

            function showSys(num)  //图片切换函数
            {
                $("#flash_num>li").removeClass().addClass("click_out").eq(num).toggleClass("click_out").addClass("click_over");
                $("#flash_pic>div").fadeOut().eq(num).fadeIn();
            }

            function ziDong()  //自动切换
            {
                if (index == len) {
                    index = 0;
                }
                showSys(index);
                index = index + 1;
            }

            int = setInterval(ziDong, 3000);
            $("#flash_num>li").click(function () //点击切换
            {
                var index_num = $("#flash_num>li").index(this);
                showSys(index_num);
                index = index_num + 1;  //改变全局变量的值，以便鼠标移开的时候能够衔接上
                //$(".click_out").removeClass("click_over").eq(index).addClass("click_over");
                //$(".click_out").eq(index).removeClass().addClass("click_over");
                //alert(index);
            });
            $("#flash_outer").mouseover(function ()  //移动到上面时停止自动切换
            {
                clearInterval(int);
            });
            $("#flash_outer").mouseout(function ()  //移开时继续自动切换
            {
                int = setInterval(ziDong, 3000);
            });
        });
    </script>

</div>
</div>
</center>

</body>
</html>
