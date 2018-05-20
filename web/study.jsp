<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/20
  Time: 1:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>学无止境_NoControl个人博客</title>
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
    <%--<script src="js/nav.js"></script>--%>
    <script type="text/javascript" src="js/tags.js"></script>
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
            <li><a href="#">学无止境</a></li>
            <li><a href="#">二次元那些事</a></li>
            <li><a href="life.jsp">慢生活</a></li>
            <li><a href="time.jsp">时间轴</a></li>
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
<div class="pagebg sh"></div>
<div class="container">
    <h1 class="t_nav"><span>不要轻易放弃。学习成长的路上，我们长路漫漫，只因学无止境。 </span><a href="index.jsp" class="n1">网站首页</a><a href="#" class="n2">学无止境</a></h1>

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
        <div class="cloud">
            <h2 class="hometitle">标签云</h2>
            <div id="tagsList" style="width: 300px;height: 300px;margin-top: 0px">
                <a title="Java">Java</a>
                <a title="Python">Python</a>
                <a title="JS">JS</a>
                <a title="CSS">CSS</a>
                <a title="html5">html5</a>
                <a title="mysql">mysql</a>
                <a title="MongoDB">MongoDB</a>
                <a title="Redis">Redis</a>
                <a title="爬虫">爬虫</a>
                <a title="网页设计">网页设计</a>
                <a title="Spring">Spring</a>
                <a title="Linux">Linux</a>
                <a title="Django">Django</a>
                <a title="PHP">PHP</a>
                <a title="thinkPHP">thinkPHP</a>
                <a title="web插件">web插件</a>
                <a title="文字特效">文字特效</a>
                <a title="图片特效">图片特效</a>
                <a title="瀑布流">瀑布流</a>
                <a title="网友蘑菇">网友蘑菇</a>
            </div>

        </div>
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
                <li class="github"><a href="https://github.com/NoControlsf" target="_blank"><span>GitHub</span>NoControl的GitHub</a></li>
                <li class="qq"><a><span>QQ号</span>804937921</a></li>
            </ul>
        </div>

    </div>
</div>
</div>

<footer>
    <p>Design by <a href="#" target="_blank">NoControl个人博客</a> <a href="#">苏ICP备18026830号</a></p>
</footer>
</body>
</html>
