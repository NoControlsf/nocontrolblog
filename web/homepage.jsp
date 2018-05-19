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
    <script src='js/jquery-2.1.1.min.js'></script>
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
            <li><a href="#">最新文章</a></li>
            <li><a href="#">学无止境</a></li>
            <li><a href="#">二次元那些事</a></li>
            <li><a href="#">慢生活</a></li>
            <li><a href="#">时间轴</a></li>
            <li><a href="#">留言</a></li>
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
    <div class="blogsbox">
        <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="/" target="_blank">别让这些闹心的套路，毁了你的网页设计!</a></h3>
            <span class="blogpic"><a href="/" title=""><img src="img/toppic01.jpg" alt=""></a></span>
            <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a href="/">杨青</a></li>
                    <li class="lmname"><a href="/">学无止境</a></li>
                    <li class="timer">2018-5-13</li>
                    <li class="view"><span>34567</span>已阅读</li>
                    <li class="like">9999</li>
                </ul>
            </div>
        </div>
        <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="/" target="_blank">帝国cms 首页或者列表页 实现图文不同样式调用方法</a></h3>
            <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！...</p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a href="/">杨青</a></li>
                    <li class="lmname"><a href="/">学无止境</a></li>
                    <li class="timer">2018-5-13</li>
                    <li class="view">4567已阅读</li>
                    <li class="like">9999</li>
                </ul>
            </div>
        </div>
        <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
            <h3 class="blogtitle"><a href="/" target="_blank">别让这些闹心的套路，毁了你的网页设计!</a></h3>
            <span class="bplist"><a href="/" title="">
      <li><img src="img/avatar.jpg" alt=""></li>
      <li><img src="img/toppic02.jpg" alt=""></li>
      <li><img src="img/banner01.jpg" alt=""></li>
      </a></span>
            <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
            <div class="bloginfo">
                <ul>
                    <li class="author"><a href="/">杨青</a></li>
                    <li class="lmname"><a href="/">学无止境</a></li>
                    <li class="timer">2018-5-13</li>
                    <li class="view"><span>34567</span>已阅读</li>
                    <li class="like">9999</li>
                </ul>
            </div>
        </div>

    </div>
    <!--blogsbox end-->
    <div class="sidebar">
        <div class="zhuanti">
            <h2 class="hometitle">特别推荐</h2>
            <ul>
                <li> <i><img src="img/banner03.jpg"></i>
                    <p>帝国cms调用方法 <span><a href="/">阅读</a></span> </p>
                </li>
                <li> <i><img src="img/b04.jpg"></i>
                    <p>5.20 我想对你说 <span><a href="/">阅读</a></span></p>
                </li>
                <li> <i><img src="img/b05.jpg"></i>
                    <p>个人博客，属于我的小世界！ <span><a href="/">阅读</a></span></p>
                </li>
            </ul>
        </div>
        <div class="tuijian">
            <h2 class="hometitle">点击排行</h2>
            <ul class="tjpic">
                <i><img src="img/toppic01.jpg"></i>
                <p><a href="/">别让这些闹心的套路，毁了你的网页设计</a></p>
            </ul>
            <ul class="sidenews">
                <li> <i><img src="img/toppic01.jpg"></i>
                    <p><a href="/">别让这些闹心的套路</a></p>
                    <span>2018-05-13</span> </li>
                <li> <i><img src="img/toppic02.jpg"></i>
                    <p><a href="/">给我模板PSD源文件，我给你设计HTML！</a></p>
                    <span>2018-05-13</span> </li>
                <li> <i><img src="img/v1.jpg"></i>
                    <p><a href="/">别让这些闹心的套路，毁了你的网页设计</a></p>
                    <span>2018-05-13</span> </li>
                <li> <i><img src="img/v2.jpg"></i>
                    <p><a href="/">给我模板PSD源文件，我给你设计HTML！</a></p>
                    <span>2018-05-13</span> </li>
            </ul>
        </div>
        <div class="cloud">
            <h2 class="hometitle">标签云</h2>
            <ul>
                <a href="/">陌上花开</a> <a href="/">校园生活</a> <a href="/">html5</a> <a href="/">SumSung</a> <a href="/">青春</a> <a href="/">温暖</a> <a href="/">阳光</a> <a href="/">三星</a><a href="/">索尼</a> <a href="/">华维荣耀</a> <a href="/">三星</a> <a href="/">索尼</a>
            </ul>
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
        <div class="guanzhu" id="float">
            <h2 class="hometitle">关注我 么么哒！</h2>
            <ul>
                <li class="github"><a href="#" target="_blank"><span>GitHub</span>NoControl的GitHub</a></li>
                <li class="qq"><a href="#" target="_blank"><span>QQ号</span>804937921</a></li>
            </ul>
        </div>

    </div>
</article>
<footer>
    <p>Design by <a href="#" target="_blank">NoControl个人博客</a> <a href="#">苏ICP备18026830号</a></p>
</footer>
</body>
</html>
