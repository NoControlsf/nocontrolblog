package com.nocontrolsf.service;

import com.nocontrolsf.bean.Article;
import com.nocontrolsf.bean.Label;

import java.util.List;

/**
 * Created by Administrator on 2018/5/21.
 */
public interface BlogService {
    /**
     * 学习文章列表
     * @param labelid
     * @param classificationid
     * @return
     */
    public List<Article> getStdArtList(String labelid, String classificationid);

    /**
     * 标签列表
     * @param classificationid
     * @return
     */
    public List<Label> getStdLabelList(String classificationid);

    /**
     * 文章搜索
     * @param articleid
     * @return
     */
    public Article getArtInfo(String articleid);

    /**
     * 特别推荐
     * @param classificationid
     * @return
     */
    public List<Article> getArtOBL(String classificationid);

    /**
     * 点击排行
     * @param classificationid
     * @return
     */
    public List<Article> getArtOBR(String classificationid);
    /**
     * 时间轴
     * @param classificationid
     * @return
     */
    public List<Article> getArtOBT(String classificationid);

    /**
     * 首页慢生活和学无止境推荐文章图片
     * @param classificationid
     * @return
     */
    public Article getHomeArticle(String classificationid);

}
