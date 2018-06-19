<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/18
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <meta charset="UTF-8">
    <title>二次元那些事_NoControl个人博客</title>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">--%>
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">

    <link rel="stylesheet" href="css/erciyuanstyle.css">

    <script src='js/jquery-2.1.1.min.js'></script>


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
        <li><a href="gbook.jsp">留言</a></li>
        <li><a href="about.jsp">关于我</a></li>
    </nav>
</div>
<!--menu end-->


<%--主界面--%>
<div class="cont s--inactive">
    <!-- cont inner start -->
    <div class="cont__inner">
        <!-- el start -->
        <div class="el">
            <div class="el__overflow">
                <div class="el__inner">
                    <div class="el__bg"></div>
                    <div class="el__preview-cont">
                        <h2 class="el__heading">bangumi</h2>
                    </div>
                    <div class="el__content">
                        <div class="el__text">Whatever</div>
                        <div class="el__close-btn"></div>
                    </div>
                </div>
            </div>
            <div class="el__index">
                <div class="el__index-back">番剧</div>
                <div class="el__index-front">
                    <div class="el__index-overlay" data-index="番剧">番剧</div>
                </div>
            </div>
        </div>
        <!-- el end -->
        <!-- el start -->
        <div class="el">
            <div class="el__overflow">
                <div class="el__inner">
                    <div class="el__bg"></div>
                    <div class="el__preview-cont">
                        <h2 class="el__heading">novel</h2>
                    </div>
                    <div class="el__content">
                        <div class="el__text">Whatever</div>
                        <div class="el__close-btn"></div>
                    </div>
                </div>
            </div>
            <div class="el__index">
                <div class="el__index-back">轻小说</div>
                <div class="el__index-front">
                    <div class="el__index-overlay" data-index="轻小说">轻小说</div>
                </div>
            </div>
        </div>
        <!-- el end -->
        <!-- el start -->
        <div class="el">
            <div class="el__overflow">
                <div class="el__inner">
                    <div class="el__bg"></div>
                    <div class="el__preview-cont">
                        <h2 class="el__heading">music</h2>
                    </div>
                    <div class="el__content">
                        <div class="el__text">Whatever</div>
                        <div class="el__close-btn"></div>
                    </div>
                </div>
            </div>
            <div class="el__index">
                <div class="el__index-back">轻音乐</div>
                <div class="el__index-front">
                    <div class="el__index-overlay" data-index="轻音乐">轻音乐</div>
                </div>
            </div>
        </div>
        <!-- el end -->
        <!-- el start -->
        <div class="el">
            <div class="el__overflow">
                <div class="el__inner">
                    <div class="el__bg"></div>
                    <div class="el__preview-cont">
                        <h2 class="el__heading">card</h2>
                    </div>
                    <div class="el__content">
                        <div class="el__text">Whatever</div>
                        <div class="el__close-btn"></div>
                    </div>
                </div>
            </div>
            <div class="el__index">
                <div class="el__index-back">小卡片</div>
                <div class="el__index-front">
                    <div class="el__index-overlay" data-index="小卡片">小卡片</div>
                </div>
            </div>
        </div>
        <!-- el end -->
        <!-- el start -->
        <div class="el">
            <div class="el__overflow">
                <div class="el__inner">
                    <div class="el__bg"></div>
                    <div class="el__preview-cont">
                        <h2 class="el__heading">game</h2>
                    </div>
                    <div class="el__content">
                        <div class="el__text">Whatever</div>
                        <div class="el__close-btn"></div>
                    </div>
                </div>
            </div>
            <div class="el__index">
                <div class="el__index-back">游戏</div>
                <div class="el__index-front">
                    <div class="el__index-overlay" data-index="游戏">游戏</div>
                </div>
            </div>
        </div>
        <!-- el end -->
    </div>
    <!-- cont inner end -->
</div>

<script src="js/erciyuanstyle.js"></script>

<footer>
    <p>Design by <a href="about.jsp" target="_blank">NoControl</a> <a href="#">苏ICP备18026830号</a></p>
</footer>
</body>
</html>
