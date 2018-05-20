<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/19
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
  <meta charset="UTF-8">
  <title>nocontrolblog</title>
  <%--<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">--%>
  <link rel="stylesheet" href="css/style.css">
  <link href="css/base.css" rel="stylesheet">
  <link href="css/index.css" rel="stylesheet">
  <link href="css/m.css" rel="stylesheet">

  <script src='js/jquery-2.1.1.min.js'></script>
  <%--<script src='js/nav.js'></script>
  <script src='js/menu.js'></script>--%>
  <script src="js/index.js"></script>

</head>

<body>
<%--顶部栏--%>

<!--menu begin-->
<div class="menu" style="height: 13%">
  <nav class="nav" id="topnav">
    <h1 class="logo"><a href="#">NoControl博客</a></h1>
    <li><a href="homepage.jsp">最新文章</a></li>
    <li><a href="study.jsp">学无止境</a></li>
    <li><a href="#">二次元那些事</a></li>
    <li><a href="life.jsp">慢生活</a></li>
    <li><a href="time.jsp">时间轴</a></li>
    <li><a href="#">留言</a></li>
    <li><a href="about.jsp">关于我</a></li>
    <!--search begin-->
    <%--<div id="search_bar" class="search_bar">
      <form  id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
        <input class="input" placeholder="想搜点什么呢..." type="text" name="keyboard" id="keyboard">
        <input type="hidden" name="show" value="title" />
        <input type="hidden" name="tempid" value="1" />
        <input type="hidden" name="tbname" value="news">
        <input type="hidden" name="Submit" value="搜索" />
        <span class="search_ico"></span>
      </form>
    </div>--%>
    <!--search end-->
  </nav>
</div>
<!--menu end-->


<%--主界面--%>
<div id="mainbg">
<div class="slider-container">
  <div class="slider-control left inactive"></div>
  <div class="slider-control right"></div>
  <ul class="slider-pagi"></ul>
  <div class="slider">
    <div class="slide slide-0 active">
      <div class="slide__bg"></div>
      <div class="slide__content">
        <svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
          <path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
        </svg>
        <div class="slide__text">
          <h2 class="slide__text-heading"><a href="study.jsp" style="color: white">学无止境</a></h2>
          <p class="slide__text-desc">努力是不会背叛自己的，虽然梦想会背叛。 努力不一定能实现梦想，但是曾经努力过的事实却足以安慰自己。 ——大老师 《我的青春恋爱物语果然有问题》</p>
          <a class="slide__text-link" href="study.jsp">Link start</a>
        </div>
      </div>
    </div>
    <div class="slide slide-1 ">
      <div class="slide__bg"></div>
      <div class="slide__content">
        <svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
          <path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
        </svg>
        <div class="slide__text">
          <h2 class="slide__text-heading"><a href="life.jsp" style="color: white">慢生活</a></h2>
          <p class="slide__text-desc">一个不成熟的人的标志是他愿意为了某个理由而轰轰烈烈地死去，而一个成熟的人的标志是他愿意为了某个理由而谦恭的活下去。
            ——塞林格《麦田里的守望者》</p>
          <a class="slide__text-link" href="life.jsp">Link start</a>
        </div>
      </div>
    </div>
    <div class="slide slide-2">
      <div class="slide__bg"></div>
      <div class="slide__content">
        <svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
          <path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
        </svg>
        <div class="slide__text">
          <h2 class="slide__text-heading">二次元那些事</h2>
          <p class="slide__text-desc">人什么时候才会死？被子弹贯穿心脏的时候？不对！得了不治之症的时候？不对！喝下毒蘑菇汤的时候？不对！是被人遗忘的时候！ ——《海贼王》</p>
          <a class="slide__text-link">Link start</a>
        </div>
      </div>
    </div>
    <div class="slide slide-3">
      <div class="slide__bg"></div>
      <div class="slide__content">
        <svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
          <path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
        </svg>
        <div class="slide__text">
          <h2 class="slide__text-heading"><a href="about.jsp" style="color: white">关于我</a></h2>
          <p class="slide__text-desc">一个90后草根程序猿！17年入行。一直潜心研究编程技术，一边工作一边积累经验，分享一些个人成长经历，以及工作心得。</p>
          <a class="slide__text-link" href="about.jsp">Link start</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!--<script src='http://www.5iweb.com.cn/statics/js/jquery.1.7.1.min.js'></script>-->
</div>
<footer>
  <p>Design by <a href="#" target="_blank">NoControl个人博客</a> <a href="#">苏ICP备18026830号</a></p>
</footer>
</body>
</html>
