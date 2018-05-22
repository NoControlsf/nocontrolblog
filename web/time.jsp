<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/20
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>时间轴_NoControl个人博客</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.easyfader.min.js"></script>
    <script src="js/conn.js"></script>
    <script src="js/nav.js"></script>
    <script src="js/scrollReveal.js"></script>
    <script src="time.js"></script>
    <%--<script src="js/page.js"></script>--%>

    <!--[if lt IE 9]>
    <script src="js/modernizr.js"></script>
    <![endif]-->
</head>
<body>
<%--系统根目录--%>
<input id="txtRootPath" type="hidden" value="<%=request.getContextPath()%>"/>
<header>
    <!--menu begin-->
    <div class="menu">
        <nav class="nav" id="topnav">
            <h1 class="logo"><a href="index.jsp">NoControl博客</a></h1>
            <li><a href="homepage.jsp">最新文章</a></li>
            <li><a href="study.jsp">学无止境</a></li>
            <li><a href="#">二次元那些事</a></li>
            <li><a href="life.jsp">慢生活</a></li>
            <li><a href="#">时间轴</a></li>
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
<div class="pagebg timer"> </div>
<div class="container">
    <h1 class="t_nav"><span>时光飞逝，机会就在我们眼前，何时找到了灵感，就要把握机遇，我们需要智慧和勇气去把握机会。</span><a href="index.jsp" class="n1">网站首页</a><a href="#" class="n2">时间轴</a></h1>
    <div class="timebox">
        <ul id="list" style="display:none;"></ul>
        <ul id="list2">
        </ul>

        <%--<script src="js/page2.js"></script>--%>
    </div>
</div>

<footer>
    <p>Design by <a href="#" target="_blank">NoControl个人博客</a> <a href="#">苏ICP备18026830号</a></p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>
