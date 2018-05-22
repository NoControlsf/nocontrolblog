<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/19
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>最新文章_NoControl个人博客</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <style type="text/css">
        #tagsList {position:relative; width:450px; height:450px; margin: 150px auto 0;  }
        #tagsList a {position:absolute; top:0px; left:0px; font-family: Microsoft YaHei; color: white; font-weight:bold; text-decoration:none; padding: 3px 6px; text-shadow: #226bf5 0 0 10px; }
        #tagsList a:hover { color:white; letter-spacing:2px; text-shadow: #FF0000  0 0 10px;}
    </style>


    <script src='js/jquery-2.1.1.min.js'></script>
    <script src="js/jquery.easyfader.min.js"></script>
    <script src="js/conn.js"></script>
    <script src="js/nav.js"></script>
    <%--<script type="text/javascript" src="js/tags.js"></script>--%>
    <script src="js/scrollReveal.js"></script>
    <!--[if lt IE 9]>
    <script src="js/modernizr.js"></script>
    <![endif]-->
    <script src="homepage.js"></script>
</head>
<body>
<%--系统根目录--%>
<input id="txtRootPath" type="hidden" value="<%=request.getContextPath()%>"/>
<header>
    <!--menu begin-->
    <div class="menu">
        <nav class="nav" id="topnav">
            <h1 class="logo"><a href="index.jsp">NoControl博客</a></h1>
            <li><a href="#">最新文章</a></li>
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
    <!--banner begin-->
    <div class="picsbox">
        <div class="banner">
            <div id="ban" class="fader">
                <li class="slide" ><a href="#" target="_blank"><img src="img/banner01.jpg"><span class="imginfo">别让这些闹心的套路，毁了你的网页设计!</span></a></li>
                <li class="slide" ><a href="#" target="_blank"><img src="img/banner02.jpg"><span class="imginfo">网页中图片属性固定宽度，如何用js改变大小</span></a></li>
                <li class="slide" ><a href="#" target="_blank"><img src="img/banner03.jpg"><span class="imginfo">个人博客，属于我的小世界！</span></a></li>
                <div class="fader_controls">
                    <div class="page prev" data-target="prev">&lsaquo;</div>
                    <div class="page next" data-target="next">&rsaquo;</div>
                    <ul class="pager_list">
                    </ul>
                </div>
            </div>
        </div>
        <!--banner end-->
        <div class="toppic">
            <li> <a href="#" target="_blank"> <i><img src="img/toppic01.jpg"></i>
                <h2>别让这些闹心的套路，毁了你的网页设计!</h2>
                <span>学无止境</span> </a> </li>
            <li> <a href="#" target="_blank"> <i><img src="img/zd01.jpg"></i>
                <h2>个人博客，属于我的小世界！</h2>
                <span>学无止境</span> </a> </li>
        </div>
    </div>
    <div class="blank"></div>
    <!--blogsbox begin-->
    <div class="blogsbox" id="bloglist"></div>
    <!--blogsbox end-->
    <div class="sidebar">
        <div class="cloud">
            <h2 class="hometitle">标签云</h2>
            <div id="tagsList" style="width: 300px;height: 300px;margin-top: 0px;">
            </div>

        </div>
        <div class="zhuanti">
            <h2 class="hometitle">特别推荐</h2>
            <ul id="orderbylike"></ul>
        </div>
        <div class="tuijian">
            <h2 class="hometitle">点击排行</h2>
            <ul class="tjpic" id="tjpic"></ul>
            <ul class="sidenews" id="sidenews"></ul>
        </div>

        <div class="links">
            <h2 class="hometitle">友情链接</h2>
            <ul>
                <li><a href="http://www.yangqq.com" target="_blank">杨青博客</a></li>
                <li><a href="http://www.yangqq.com" target="_blank">D设计师博客</a></li>
                <li><a href="http://www.yangqq.com" target="_blank">优秀个人博客</a></li>
            </ul>
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
    <p>Design by <a href="#" target="_blank">NoControl个人博客</a> <a href="#">苏ICP备18026830号</a></p>
</footer>
</body>
</html>
