/**
 * Created by Administrator on 2018/5/21.
 */
$(function () {
    //标签
    var radius = 120;
    var dtr = Math.PI/180;
    var d=300;
    var mcList = [];
    var active = false;
    var lasta = 1;
    var lastb = 1;
    var distr = true;
    var tspeed=1;
    var size=250;

    var mouseX=0;
    var mouseY=0;

    var howElliptical=1;

    var aA=null;
    var oDiv=null;
    //标签结束

    stdstart();
    labelstart();


});

function stdstart() {
    var basePath = $("#txtRootPath").val();
    var content="";
    $.ajax({
        url:basePath + "/MyBlog/getStudyArticleList"
        ,method:"post"
        ,dataType: "JSON"
        //,contentType:"application/x-www-form-urlencoded"
        //参数
        ,data: {
            labelid: '',
            classificationid: 'cla2'
        }
        ,success: function(data) {
            //遍历返回的JsonArray
            //console.log(data);
            if(data != null){
                var temp = data;
                $.each(temp,function(index,temp){
                    if (temp['imglist'].length == 0){
                        content += "<div class='blogs' data-scroll-reveal='enter bottom over 1s' >" +
                            "<h3 class='blogtitle'><a href='info.jsp?article_id=" + temp['article_id'] + "' target='_blank'>" + temp['article_title'] + "</a></h3>" +
                            "<p class='blogtext'>" + temp['content_validity'] + "</p>" +
                            "<div class='bloginfo'>" +
                            "<ul>"+
                            "<li class='author'><a href='#'>" + temp['author'] + "</a></li>"+
                            "<li class='lmname'><a href='#'>" + temp['classification_name'] + "</a></li>" +
                            "<li class='timer'>" + temp['release_time'] + "</li>" +
                            "<li class='view'>" + temp['read_num'] + "已阅读</li>" +
                            "<li class='like'>" + temp['like_num'] + "</li>" +
                            "</ul>" +
                            "</div>" +
                            "</div>";
                    }else {
                        content += "<div class='blogs' data-scroll-reveal='enter bottom over 1s' >"+
                            "<h3 class='blogtitle'><a href='info.jsp?article_id=" + temp['article_id'] + "' target='_blank'>" + temp['article_title'] + "</a></h3>"+
                            "<span class='bplist'><a href='info.jsp?article_id=" + temp['article_id'] + "' title=''>";

                        /*"<li><img src='img/avatar.jpg' alt=''></li>" +
                         "<li><img src='img/toppic02.jpg' alt=''></li>" +
                         "<li><img src='img/banner01.jpg' alt=''></li>" +*/
                        for(var i = 0; i<temp['imglist'].length;i++){
                            content += "<li><img src='" + temp['imglist'][i]['img_path'] + "' alt=''></li>";
                        }
                        content +=   "</a></span>" +
                            "<p class='blogtext'>" + temp['content_validity'] + "</p>" +
                            "<div class='bloginfo'>" +
                            "<ul>" +
                            "<li class='author'><a href='#'>" + temp['author'] + "</a></li>" +
                            "<li class='lmname'><a href='#'>" + temp['classification_name'] + "</a></li>" +
                            "<li class='timer'>" + temp['release_time'] + "</li>" +
                            "<li class='view'><span>" + temp['read_num'] + "</span>已阅读</li>" +
                            "<li class='like'>" + temp['like_num'] + "</li>" +
                            "</ul>" +
                            "</div>" +
                            "</div>";
                    }
                });
                //动态将li 写入ul
                document.getElementById("bloglist").innerHTML=content;
            }
        }
    });
}


function labelstart() {
    var basePath = $("#txtRootPath").val();
    var content="";
    $.ajax({
        url:basePath + "/MyBlog/getStudyLabelList"
        ,method:"post"
        ,dataType: "JSON"
        //,contentType:"application/x-www-form-urlencoded"
        //参数
        ,data: {
            classificationid: 'cla2'
        }
        ,success: function(data) {
            //遍历返回的JsonArray
            //console.log(data);
            if(data != null){
                var temp = data;
                $.each(temp,function(index,temp){
                    content += "<a title='" + temp ['label_name'] + "'><span onclick=\"tagsSearch('" + temp ['label_id'] + "')\">" + temp['label_name'] + "</span></a>";
                });
                //动态将li 写入ul
                document.getElementById("tagsList").innerHTML=content;
                //标签开始
                var i=0;
                var oTag=null;

                oDiv=document.getElementById('tagsList');

                aA=oDiv.getElementsByTagName('a');

                for(i=0;i<aA.length;i++)
                {
                    oTag={};

                    oTag.offsetWidth=aA[i].offsetWidth;
                    oTag.offsetHeight=aA[i].offsetHeight;

                    mcList.push(oTag);
                }

                sineCosine( 0,0,0 );

                positionAll();

                oDiv.onmouseover=function ()
                {
                    active=true;
                };

                oDiv.onmouseout=function ()
                {
                    active=false;
                };

                oDiv.onmousemove=function (ev)
                {
                    var oEvent=window.event || ev;

                    mouseX=oEvent.clientX-(oDiv.offsetLeft+oDiv.offsetWidth/2);
                    mouseY=oEvent.clientY-(oDiv.offsetTop+oDiv.offsetHeight/2);

                    mouseX/=5;
                    mouseY/=5;
                };

                setInterval(update, 30);
                //标签结束
            }
        }
    });
}

//标签开始
function update()
{
    var a;
    var b;

    if(active)
    {
        a = (-Math.min( Math.max( -mouseY, -size ), size ) / radius ) * tspeed;
        b = (Math.min( Math.max( -mouseX, -size ), size ) / radius ) * tspeed;
    }
    else
    {
        a = lasta * 0.98;
        b = lastb * 0.98;
    }

    lasta=a;
    lastb=b;

    if(Math.abs(a)<=0.01 && Math.abs(b)<=0.01)
    {
        return;
    }

    var c=0;
    sineCosine(a,b,c);
    for(var j=0;j<mcList.length;j++)
    {
        var rx1=mcList[j].cx;
        var ry1=mcList[j].cy*ca+mcList[j].cz*(-sa);
        var rz1=mcList[j].cy*sa+mcList[j].cz*ca;

        var rx2=rx1*cb+rz1*sb;
        var ry2=ry1;
        var rz2=rx1*(-sb)+rz1*cb;

        var rx3=rx2*cc+ry2*(-sc);
        var ry3=rx2*sc+ry2*cc;
        var rz3=rz2;

        mcList[j].cx=rx3;
        mcList[j].cy=ry3;
        mcList[j].cz=rz3;

        per=d/(d+rz3);

        mcList[j].x=(howElliptical*rx3*per)-(howElliptical*2);
        mcList[j].y=ry3*per;
        mcList[j].scale=per;
        mcList[j].alpha=per;

        mcList[j].alpha=(mcList[j].alpha-0.6)*(10/6);
    }

    doPosition();
    depthSort();
}

function depthSort()
{
    var i=0;
    var aTmp=[];

    for(i=0;i<aA.length;i++)
    {
        aTmp.push(aA[i]);
    }

    aTmp.sort
    (
        function (vItem1, vItem2)
        {
            if(vItem1.cz>vItem2.cz)
            {
                return -1;
            }
            else if(vItem1.cz<vItem2.cz)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }
    );

    for(i=0;i<aTmp.length;i++)
    {
        aTmp[i].style.zIndex=i;
    }
}

function positionAll()
{
    var phi=0;
    var theta=0;
    var max=mcList.length;
    var i=0;

    var aTmp=[];
    var oFragment=document.createDocumentFragment();

    for(i=0;i<aA.length;i++)
    {
        aTmp.push(aA[i]);
    }

    aTmp.sort
    (
        function ()
        {
            return Math.random()<0.5?1:-1;
        }
    );

    for(i=0;i<aTmp.length;i++)
    {
        oFragment.appendChild(aTmp[i]);
    }

    oDiv.appendChild(oFragment);

    for( var i=1; i<max+1; i++){
        if( distr )
        {
            phi = Math.acos(-1+(2*i-1)/max);
            theta = Math.sqrt(max*Math.PI)*phi;
        }
        else
        {
            phi = Math.random()*(Math.PI);
            theta = Math.random()*(2*Math.PI);
        }

        mcList[i-1].cx = radius * Math.cos(theta)*Math.sin(phi);
        mcList[i-1].cy = radius * Math.sin(theta)*Math.sin(phi);
        mcList[i-1].cz = radius * Math.cos(phi);

        aA[i-1].style.left=mcList[i-1].cx+oDiv.offsetWidth/2-mcList[i-1].offsetWidth/2+'px';
        aA[i-1].style.top=mcList[i-1].cy+oDiv.offsetHeight/2-mcList[i-1].offsetHeight/2+'px';
    }
}

function doPosition()
{
    var l=oDiv.offsetWidth/2;
    var t=oDiv.offsetHeight/2;
    for(var i=0;i<mcList.length;i++)
    {
        aA[i].style.left=mcList[i].cx+l-mcList[i].offsetWidth+'px';
        aA[i].style.top=mcList[i].cy+t-mcList[i].offsetHeight+'px';

        aA[i].style.fontSize=Math.ceil(12*mcList[i].scale/2)+8+'px';

        aA[i].style.filter="alpha(opacity="+100*mcList[i].alpha+")";
        aA[i].style.opacity=mcList[i].alpha;
    }
}

function sineCosine( a, b, c)
{
    sa = Math.sin(a * dtr);
    ca = Math.cos(a * dtr);
    sb = Math.sin(b * dtr);
    cb = Math.cos(b * dtr);
    sc = Math.sin(c * dtr);
    cc = Math.cos(c * dtr);
}
//标签结束

function tagsSearch(label_id){
    var basePath = $("#txtRootPath").val();
    var content="";
    $.ajax({
        url:basePath + "/MyBlog/getStudyArticleList"
        ,method:"post"
        ,dataType: "JSON"
        //,contentType:"application/x-www-form-urlencoded"
        //参数
        ,data: {
            labelid: label_id,
            classificationid: ''
        }
        ,success: function(data) {
            //遍历返回的JsonArray
            //console.log(data);
            if(data != null){
                var temp = data;
                $.each(temp,function(index,temp){
                    if (temp['imglist'].length == 0){
                        content += "<div class='blogs' data-scroll-reveal='enter bottom over 1s' >" +
                            "<h3 class='blogtitle'><a href='info.jsp?article_id=" + temp['article_id'] + "' target='_blank'>" + temp['article_title'] + "</a></h3>" +
                            "<p class='blogtext'>" + temp['content_validity'] + "</p>" +
                            "<div class='bloginfo'>" +
                            "<ul>"+
                            "<li class='author'><a href='#'>" + temp['author'] + "</a></li>"+
                            "<li class='lmname'><a href='#'>" + temp['classification_name'] + "</a></li>" +
                            "<li class='timer'>" + temp['release_time'] + "</li>" +
                            "<li class='view'>" + temp['read_num'] + "已阅读</li>" +
                            "<li class='like'>" + temp['like_num'] + "</li>" +
                            "</ul>" +
                            "</div>" +
                            "</div>";
                    }else {
                        content += "<div class='blogs' data-scroll-reveal='enter bottom over 1s' >"+
                            "<h3 class='blogtitle'><a href='info.jsp?article_id=" + temp['article_id'] + "' target='_blank'>" + temp['article_title'] + "</a></h3>"+
                            "<span class='bplist'><a href='info.jsp?article_id=" + temp['article_id'] + "' title=''>";

                        /*"<li><img src='img/avatar.jpg' alt=''></li>" +
                         "<li><img src='img/toppic02.jpg' alt=''></li>" +
                         "<li><img src='img/banner01.jpg' alt=''></li>" +*/
                        for(var i = 0; i<temp['imglist'].length;i++){
                            content += "<li><img src='" + temp['imglist'][i]['img_path'] + "' alt=''></li>";
                        }
                        content +=   "</a></span>" +
                            "<p class='blogtext'>" + temp['content_validity'] + "</p>" +
                            "<div class='bloginfo'>" +
                            "<ul>" +
                            "<li class='author'><a href='#'>" + temp['author'] + "</a></li>" +
                            "<li class='lmname'><a href='#'>" + temp['classification_name'] + "</a></li>" +
                            "<li class='timer'>" + temp['release_time'] + "</li>" +
                            "<li class='view'><span>" + temp['read_num'] + "</span>已阅读</li>" +
                            "<li class='like'>" + temp['like_num'] + "</li>" +
                            "</ul>" +
                            "</div>" +
                            "</div>";
                    }
                });
                //动态将li 写入ul
                document.getElementById("bloglist").innerHTML=content;
            }
        }
    });
}