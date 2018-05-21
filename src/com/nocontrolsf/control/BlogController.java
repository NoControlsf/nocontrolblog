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

}
