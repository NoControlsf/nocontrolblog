/**
 * Created by Administrator on 2018/5/21.
 */
$(function () {

    increaseViewCount();
    docinfo();
    orderbylikestart();
    orderbyreadstart();
    //labelstart();


    //点赞功能
    $("#likebtn").click(function () {
        var basePath = $("#txtRootPath").val();
        if($.cookie("likeId") == undefined){
            var likeidarr =[];
        }else {
            var likeidarr = $.cookie("likeId").split(',');
        }
        if($.inArray($("#article_id").val(), likeidarr) == -1) {
            $.ajax({
                async: false,
                type:"POST",
                url:basePath + "/MyBlog/article/likeup",
                data: {articleId:$("#article_id").val()},
                dataType:"text",
                success:function (data) {
                    $(".likeCount").html(data);
                    layer.tips("谢谢点赞！","#likebtn");

                    $.cookie(
                        "likeId",
                        $.cookie("likeId") + ',' + $("#article_id").val(),//需要cookie写入的业务
                        {
                            "path":"/" //cookie的默认属性
                        }
                    );
                },
                error:function()
                {
                    //alert("获取数据出错!");
                }
            });
        }else {
            layer.tips("点赞过快喽！","#likebtn");
        }
    });



});
//正文
function docinfo() {
    var basePath = $("#txtRootPath").val();
    var article_id = $("#article_id").val();
    var content="";
    $.ajax({
        url:basePath + "/MyBlog/getArticleInfo"
        ,method:"post"
        ,dataType: "JSON"
        //,contentType:"application/x-www-form-urlencoded"
        //参数
        ,data: {
            articleid: article_id
        }
        ,success: function(data) {
            //遍历返回的JsonArray
            //console.log(data);
            if(data != null){
                $("#article_title").text(data['article_title']);
                $("#author").text(data['author']);
                $("#classification_name").text(data['classification_name']);
                $("#release_time").text(data['release_time']);
                $(".viewCount").text(data['read_num']);
                $(".likeCount").text(data['like_num']);
                var temp = data['labellist'];
                if(temp.length!=0){
                    $.each(temp,function(index,temp){
                        content += "<a>" + temp['label_name'] + "</a> &nbsp;";
                    });
                    //动态将a 写入div
                    document.getElementById("labellist").innerHTML=content;
                }
                document.getElementById("content_validity").innerHTML="<strong>简介</strong>"+data['content_validity'];
                document.getElementById("content").innerHTML=data['content'];
            }
        }
    });
}

//特别推荐
function orderbylikestart() {
    var basePath = $("#txtRootPath").val();
    var content="";
    $.ajax({
        url:basePath + "/MyBlog/getArticleListOrderByLike"
        ,method:"post"
        ,dataType: "JSON"
        //,contentType:"application/x-www-form-urlencoded"
        //参数
        ,data: {
            classificationid: ''
        }
        ,success: function(data) {
            //遍历返回的JsonArray
            //console.log(data);
            if(data != null){
                var temp = data;
                $.each(temp,function(index,temp){
                    if (temp['imglist'].length == 0){
                        content += "<li><i><img src='img/banner02.jpg' width='305' height='184'></i>"+
                            "<p>" + temp['article_title'] + "<span><a href='info.jsp?article_id=" + temp['article_id'] + "'>阅读</a></span></p>"+
                            "</li>";
                    }else {
                        content += "<li><i><img src='" + temp['imglist'][0]['img_path'] + "' width='305' height='184'></i>"+
                            "<p>" + temp['article_title'] + "<span><a href='info.jsp?article_id=" + temp['article_id'] + "'>阅读</a></span></p>"+
                            "</li>";
                    }
                });
                //动态将li 写入ul
                document.getElementById("orderbylike").innerHTML=content;
            }
        }
    });
}


//点击排行
function orderbyreadstart() {
    var basePath = $("#txtRootPath").val();
    var content="";
    $.ajax({
        url:basePath + "/MyBlog/getArticleListOrderByRead"
        ,method:"post"
        ,dataType: "JSON"
        //,contentType:"application/x-www-form-urlencoded"
        //参数
        ,data: {
            classificationid: ''
        }
        ,success: function(data) {
            //遍历返回的JsonArray
            //console.log(data);
            if(data != null){
                var temp = data;
                if (temp[0]['imglist'].length == 0){
                    var c = "<i><img src='img/toppic01.jpg' width='304' height='173'></i>"+
                        "<p><a href='info.jsp?article_id=" + temp[0]['article_id'] + "'>" + temp[0]['article_title'] + "</a></p>";
                    document.getElementById("tjpic").innerHTML=c;
                }else {
                    var c = "<i><img src='" + temp[0]['imglist'][0]['img_path'] + "' width='304' height='173'></i>"+
                        "<p><a href='info.jsp?article_id=" + temp[0]['article_id'] + "'>" + temp[0]['article_title'] + "</a></p>";
                    document.getElementById("tjpic").innerHTML=c;
                }
                for(var i= 1; i<temp.length;i++){
                    if (temp[i]['imglist'].length == 0){
                        content += "<li><i><img src='img/toppic01.jpg'></i>"+
                            "<p><a href='info.jsp?article_id=" + temp[i]['article_id'] + "'>" + temp[i]['article_title'] + "</a></p>"+
                            "<span>"+ temp[i]['release_time'] +"</span></li>";
                    }else {
                        content += "<li><i><img src='" + temp[i]['imglist'][0]['img_path'] + "'></i>"+
                            "<p><a href='info.jsp?article_id=" + temp[i]['article_id'] + "'>" + temp[i]['article_title'] + "</a></p>"+
                            "<span>"+ temp[i]['release_time'] +"</span></li>";
                    }
                }
                //动态将li 写入ul
                document.getElementById("sidenews").innerHTML=content;
            }
        }
    });
}

//浏览量统计
function increaseViewCount() {
    var basePath = $("#txtRootPath").val();
    console.log($("#article_id").val());
    if($.cookie("viewId") == undefined){
        var viewidarr = [];
    }else {
        var viewidarr = $.cookie("viewId").split(',');
    }

    if($.inArray($("#article_id").val(), viewidarr) == -1) {
        $.ajax({
            async: false,
            type:"POST",
            url:basePath + "/MyBlog/article/view",
            data: {articleId:$("#article_id").val()},
            dataType:"text",
            success:function (data) {
                $(".viewCount").html(data);
                $.cookie(
                    "viewId",
                    $.cookie("viewId") + ',' + $("#article_id").val(),//需要cookie写入的业务
                    {
                        "path":"/" //cookie的默认属性
                    }
                );
            },
            error:function()
            {
                //alert("获取数据出错!");
            }
        });
    }
}

