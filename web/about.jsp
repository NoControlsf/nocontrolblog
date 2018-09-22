<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/19
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>关于我_NoControl个人博客</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.easyfader.min.js"></script>
    <script src="js/conn.js"></script>
    <script src="js/nav.js"></script>
    <script src="js/scrollReveal.js"></script>
    <!--[if lt IE 9]>
    <script src="js/modernizr.js"></script>
    <![endif]-->
</head>
<body>
<header>
    <!--menu begin-->
    <div class="menu">
        <nav class="nav" id="topnav">
            <h1 class="logo"><a href="index.jsp">NoControl博客</a></h1>
            <li><a href="homepage.jsp">最新文章</a></li>
            <li><a href="study.jsp">学无止境</a></li>
            <li><a href="life.jsp">慢生活</a></li>
            <li><a href="time.jsp">时间轴</a></li>
            <li><a href="gbook.jsp">留言</a></li>
            <li><a href="#">关于我</a></li>
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
<div class="pagebg ab"> </div>
<div class="container">
    <h1 class="t_nav"><span>我听闻最美的故事，是公主死去了，屠龙的少年还在燃烧。</span><a href="index.jsp" class="n1">网站首页</a><a href="#" class="n2">关于我</a></h1>
    <div class="news_infos">
        <ul>
            <p>沈峰，男，一个90后草根程序猿！17年入行。一直潜心锻炼编程技术，一边工作一边积累经验，分享一些个人编程经验。<br />
                <br />
                正式编程将近一年时间，期间有很多的不容易，但是都没有放弃过。入了这一行，就深深的喜欢上它。对我来说编程是生活的一部分，不可缺少。<br />
                <br />
                主攻的编程语言是Java，其次是Python，PHP也有所接触，最近在学习GO语言。当写累了一门编程语言的时候，不妨学习一下不同的编程语言。<br />
                <br />
                自从入了这一行，也交到了不少朋友。我的个人微信号 sf804937921。QQ编程爱好者尬聊群：785114607。</p>
            <br />
            <h2>About my blog</h2>
            &nbsp;
            <p>域 名：www.nocontrolsf.com 创建于2018年05月17日&nbsp;</p>
            <br />
            <p>服务器：腾讯云服务器&nbsp;&nbsp;<a href="https://cloud.tencent.com/?fromSource=gwzcw.234976.234976.234976" target="_blank"><span style="color:#FF0000;"><strong>前往腾讯云官网购买&gt;&gt;</strong></span></a></p>
            <br />
            <p>备案号：苏ICP备18026830号</p>
        </ul>
    </div>
    <div class="sidebar">
        <div class="about">
            <p class="avatar"> <img src="img/avatar.jpg" alt=""> </p>
            <p class="abname">NoControl | 沈峰</p>
            <p class="abposition">自由程序员</p>
            <p class="abtext"> 一个90后草根程序猿！17年入行。一直潜心研究编程技术，一边工作一边积累经验，分享一些个人成长经历，以及工作心得。 </p>
        </div>
        <div class="weixin">
            <h2 class="hometitle">微信关注</h2>
            <ul>
                <img src="img/wx.jpg">
            </ul>
        </div>
    </div>
</div>
<footer>
    <p>Design by <a href="#" target="_blank">NoControl</a> <a href="#">苏ICP备18026830号</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
