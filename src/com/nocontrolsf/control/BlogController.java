package com.nocontrolsf.control;

import com.nocontrolsf.bean.Article;
import com.nocontrolsf.bean.Label;
import com.nocontrolsf.service.BlogService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2018/5/21.
 */
@Controller
@RequestMapping(value = "/MyBlog", method = RequestMethod.POST)
public class BlogController {

    @Resource
    BlogService blogService;

    //加载学无止境
    @RequestMapping(value = "/getStudyArticleList", method = RequestMethod.POST)
    @ResponseBody
    public List<Article> getStdArtList(HttpServletRequest request){
        String labelid = request.getParameter("labelid");
        String classificationid = request.getParameter("classificationid");
        List<Article> list = blogService.getStdArtList(labelid, classificationid);
        return list;
    }

    //加载学无止境标签
    @RequestMapping(value = "/getStudyLabelList", method = RequestMethod.POST)
    @ResponseBody
    public List<Label> getStdLabelList(HttpServletRequest request){
        String classificationid = request.getParameter("classificationid");
        List<Label> list = blogService.getStdLabelList(classificationid);
        return list;
    }

    //加载文章内容
    @RequestMapping(value = "/getArticleInfo", method = RequestMethod.POST)
    @ResponseBody
    public Article getArtInfo(HttpServletRequest request){
        String articleid = request.getParameter("articleid");
        Article article = blogService.getArtInfo(articleid);
        return article;
    }

    //加载特别推荐
    @RequestMapping(value = "/getArticleListOrderByLike", method = RequestMethod.POST)
    @ResponseBody
    public List<Article> getArticleListOrderByLike(HttpServletRequest request){
        String classificationid = request.getParameter("classificationid");
        List<Article> list = blogService.getArtOBL(classificationid);
        return list;
    }

    //加载点击排行
    @RequestMapping(value = "/getArticleListOrderByRead", method = RequestMethod.POST)
    @ResponseBody
    public List<Article> getArticleListOrderByRead(HttpServletRequest request){
        String classificationid = request.getParameter("classificationid");
        List<Article> list = blogService.getArtOBR(classificationid);
        return list;
    }

    //加载时间轴
    @RequestMapping(value = "/getArticleListOrderByTime", method = RequestMethod.POST)
    @ResponseBody
    public List<Article> getArticleListOrderByTime(HttpServletRequest request){
        String classificationid = request.getParameter("classificationid");
        List<Article> list = blogService.getArtOBT(classificationid);
        return list;
    }


    //加载首页慢生活和学无止境推荐文章图片
    @RequestMapping(value = "/getHomeArt", method = RequestMethod.POST)
    @ResponseBody
    public Article getHomeArt(HttpServletRequest request){
        String classificationid = request.getParameter("classificationid");
        Article article = blogService.getHomeArticle(classificationid);
        return article;
    }

    //点赞数增加
    @RequestMapping(value = "/article/likeup",method = {RequestMethod.POST})
    @ResponseBody
    public Integer increaseLikeCount(HttpServletRequest request)
            throws Exception {
        String articleId = request.getParameter("articleId");
        int articleCount = blogService.getArticleLikeCount(articleId);
        blogService.setArticleLikeCount(articleId,articleCount + 1);
        return articleCount+1;
    }

    //文章访问量数增加
    @RequestMapping(value = "/article/view",method = {RequestMethod.POST})
    @ResponseBody
    public Integer increaseViewCount(HttpServletRequest request)
            throws Exception {
        String articleId = request.getParameter("articleId");
        int articleCount = blogService.getArticleViewCount(articleId);
        blogService.setArticleViewCount(articleId,articleCount + 1);
        return articleCount+1;
    }

}
