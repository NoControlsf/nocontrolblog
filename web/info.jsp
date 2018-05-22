<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/21
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>文章_NoControl个人博客</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <%--<style type="text/css">
        #tagsList {position:relative; width:450px; height:450px; margin: 150px auto 0;  }
        #tagsList a {position:absolute; top:0px; left:0px; font-family: Microsoft YaHei; color: white; font-weight:bold; text-decoration:none; padding: 3px 6px; text-shadow: #226bf5 0 0 10px; }
        #tagsList a:hover { color:white; letter-spacing:2px; text-shadow: #FF0000  0 0 10px;}
    </style>--%>

    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.easyfader.min.js"></script>
    <script src="js/conn.js"></script>
    <script src="js/nav.js"></script>
    <%--<script type="text/javascript" src="js/tags.js"></script>--%>
    <script src="js/scrollReveal.js"></script>
    <!--[if lt IE 9]>
    <script src="js/modernizr.js"></script>
    <![endif]-->
    <script src="info.js"></script>
</head>
<body>
<%--系统根目录--%>
<input id="txtRootPath" type="hidden" value="<%=request.getContextPath()%>"/>
<input id="article_id" type="hidden" value="<%=request.getParameter("article_id")%>"/>
<header>
    <!--menu begin-->
    <div class="menu">
        <nav class="nav" id="topnav">
            <h1 class="logo"><a href="index.jsp">NoControl博客</a></h1>
            <li><a href="homepage.jsp">最新文章</a></li>
            <li><a href="study.jsp">学无止境</a></li>
            <li><a href="#">二次元那些事</a></li>
            <li><a href="life.jsp">慢生活</a></li>
            <li><a href="time.jsp">时间轴</a></li>
            <li><a href="gbook.jsp">留言</a></li>
            <li><a href="about.jsp">关于我</a></li>
            <!--search begin-->
            <div id="search_bar" class="search_bar">
                <form  id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
                    <input class="input" placeholder="想搜点什么呢..." type="text" name="keyboard" id="keyboard">
                    <input type="hidden" name="show" value="title" />
                    <input type="hidden" name="tempid" value="1" />
                    <input type="hidden" name="tbname" value="news">
                    <input type="hidden" name="Submit" value="搜索" />
                    <span class="search_ico"></span>
                </form>
            </div>
            <!--search end-->
        </nav>
    </div>
    <!--menu end-->
</header>
<article>
    <h1 class="t_nav"><span>您现在的位置是：文章</span><a href="index.jsp" class="n1">网站首页</a><a  class="n2">文章</a></h1>
    <div class="infosbox">
        <div class="newsview">
            <h3 class="news_title" id="article_title"></h3>
            <div class="bloginfo">
                <ul>
                    <li class="author" id="author"></li>
                    <li class="lmname" id="classification_name"></li>
                    <li class="timer" id="release_time"></li>
                    <li class="view"><span id="read_num"></span>已阅读</li>
                    <li class="like" id="like_num"></li>
                </ul>
            </div>
            <div class="tags" id="labellist"></div>
            <div class="news_about" id="content_validity"></div>
            <div class="news_con" id="content"></div>
        </div>
        <div class="share">
            <p class="diggit"><a <%--href="JavaScript:makeRequest('/e/public/digg/?classid=3&amp;id=19&amp;dotop=1&amp;doajax=1&amp;ajaxarea=diggnum','EchoReturnedText','GET','');"--%>> 很赞哦！ </a><%--(<b id="diggnum"><script type="text/javascript" src="/e/public/ViewClick/?classid=2&id=20&down=5"></script>13</b>)--%></p>
            <p class="dasbox"><a href="javascript:void(0)" onClick="dashangToggle()" class="dashang" title="打赏，支持一下">打赏本站</a></p>
            <div class="hide_box"></div>
            <div class="shang_box"> <a class="shang_close" href="javascript:void(0)" onclick="dashangToggle()" title="关闭">关闭</a>
                <div class="shang_tit">
                    <p>感谢您的支持，我会继续努力的!</p>
                </div>
                <div class="shang_payimg"> <img src="img/alipayimg.jpg" alt="扫码支持" title="扫一扫"> </div>
                <div class="pay_explain">扫码打赏，你说多少就多少</div>
                <div class="shang_payselect">
                    <div class="pay_item checked" data-id="alipay"> <span class="radiobox"></span> <span class="pay_logo"><img src="img/alipay.jpg" alt="支付宝"></span> </div>
                    <div class="pay_item" data-id="weipay"> <span class="radiobox"></span> <span class="pay_logo"><img src="img/wechat.jpg" alt="微信"></span> </div>
                </div>
                <script type="text/javascript">
                    $(function(){
                        $(".pay_item").click(function(){
                            $(this).addClass('checked').siblings('.pay_item').removeClass('checked');
                            var dataid=$(this).attr('data-id');
                            $(".shang_payimg img").attr("src","img/"+dataid+"img.jpg");
                            $("#shang_pay_txt").text(dataid=="alipay"?"支付宝":"微信");
                        });
                    });
                    function dashangToggle(){
                        $(".hide_box").fadeToggle();
                        $(".shang_box").fadeToggle();
                    }
                </script>
            </div>
        </div>
        <%--<div class="nextinfo">
            <p>上一篇：<a href="/news/life/2018-03-13/804.html">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a></p>
            <p>下一篇：<a href="/news/life/">返回列表</a></p>
        </div>
        <div class="otherlink">
            <h2>相关文章</h2>
            <ul>
                <li><a href="/download/div/2018-04-22/815.html" title="html5个人博客模板《黑色格调》">html5个人博客模板《黑色格调》</a></li>
                <li><a href="/download/div/2018-04-18/814.html" title="html5个人博客模板主题《清雅》">html5个人博客模板主题《清雅》</a></li>
                <li><a href="/download/div/2018-03-18/807.html" title="html5个人博客模板主题《绅士》">html5个人博客模板主题《绅士》</a></li>
                <li><a href="/download/div/2018-02-22/798.html" title="html5时尚个人博客模板-技术门户型">html5时尚个人博客模板-技术门户型</a></li>
                <li><a href="/download/div/2017-09-08/789.html" title="html5个人博客模板主题《心蓝时间轴》">html5个人博客模板主题《心蓝时间轴》</a></li>
                <li><a href="/download/div/2017-07-16/785.html" title="古典个人博客模板《江南墨卷》">古典个人博客模板《江南墨卷》</a></li>
                <li><a href="/download/div/2017-07-13/783.html" title="古典风格-个人博客模板">古典风格-个人博客模板</a></li>
                <li><a href="/download/div/2015-06-28/748.html" title="个人博客《草根寻梦》—手机版模板">个人博客《草根寻梦》—手机版模板</a></li>
                <li><a href="/download/div/2015-04-10/746.html" title="【活动作品】柠檬绿兔小白个人博客模板">【活动作品】柠檬绿兔小白个人博客模板</a></li>
                <li><a href="/jstt/bj/2015-01-09/740.html" title="【匆匆那些年】总结个人博客经历的这四年…">【匆匆那些年】总结个人博客经历的这四年…</a></li>
            </ul>
        </div>
        <div class="news_pl">
            <h2>文章评论</h2>
            <ul>
                <div class="gbko"> </div>
            </ul>
        </div>--%>
    </div>
    <div class="sidebar">
        <%--<div class="cloud">
            <h2 class="hometitle">标签云</h2>
            <div id="tagsList" style="width: 300px;height: 300px;margin-top: 0px">
            </div>
        </div>--%>
        <div class="zhuanti">
            <h2 class="hometitle">特别推荐</h2>
            <ul id="orderbylike"></ul>
        </div>
        <div class="tuijian">
            <h2 class="hometitle">点击排行</h2>
            <ul class="tjpic" id="tjpic"></ul>
            <ul class="sidenews" id="sidenews"></ul>
        </div>
        <div class="weixin">
            <h2 class="hometitle">微信关注</h2>
            <ul>
                <img src="img/wx.jpg">
            </ul>
        </div>
        <div class="guanzhu">
            <h2 class="hometitle">关注我 么么哒！</h2>
            <ul>
                <li class="github"><a href="https://github.com/NoControlsf" target="_blank"><span>GitHub</span>NoControl的GitHub</a></li>
                <li class="qq"><a><span>QQ号</span>804937921</a></li>
            </ul>
        </div>
    </div>
</article>
<footer>
    <p>Design by <a href="http://www.yangqq.com" target="_blank">NoControl个人博客</a> <a href="/">苏ICP备18026830号</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
