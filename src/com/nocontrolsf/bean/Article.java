package com.nocontrolsf.bean;

import java.util.List;

/**
 * Created by Administrator on 2018/5/21.
 */
public class Article {
    private String article_id;
    private String article_title;
    private String author_id;
    private String author;
    private String content;
    private String content_validity;
    private String release_time;
    private String update_time;
    private int read_num;
    private int like_num;
    private String classification_id;
    private String label_id_list;
    private String classification_name;
    private List<Artimg> imglist;
    private List<Label> labellist;

    public List<Label> getLabellist() {
        return labellist;
    }

    public void setLabellist(List<Label> labellist) {
        this.labellist = labellist;
    }

    public List<Artimg> getImglist() {
        return imglist;
    }

    public void setImglist(List<Artimg> imglist) {
        this.imglist = imglist;
    }

    public String getArticle_id() {
        return article_id;
    }

    public void setArticle_id(String article_id) {
        this.article_id = article_id;
    }

    public String getArticle_title() {
        return article_title;
    }

    public void setArticle_title(String article_title) {
        this.article_title = article_title;
    }

    public String getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(String author_id) {
        this.author_id = author_id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContent_validity() {
        return content_validity;
    }

    public void setContent_validity(String content_validity) {
        this.content_validity = content_validity;
    }

    public String getRelease_time() {
        return release_time;
    }

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    public String getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(String update_time) {
        this.update_time = update_time;
    }

    public int getRead_num() {
        return read_num;
    }

    public void setRead_num(int read_num) {
        this.read_num = read_num;
    }

    public int getLike_num() {
        return like_num;
    }

    public void setLike_num(int like_num) {
        this.like_num = like_num;
    }

    public String getClassification_id() {
        return classification_id;
    }

    public void setClassification_id(String classification_id) {
        this.classification_id = classification_id;
    }

    public String getLabel_id_list() {
        return label_id_list;
    }

    public void setLabel_id_list(String label_id_list) {
        this.label_id_list = label_id_list;
    }

    public String getClassification_name() {
        return classification_name;
    }

    public void setClassification_name(String classification_name) {
        this.classification_name = classification_name;
    }

    public Article(String article_id, String article_title, String author_id, String author, String content_validity, String release_time, int read_num, int like_num, String classification_name) {
        this.article_id = article_id;
        this.article_title = article_title;
        this.author_id = author_id;
        this.author = author;
        this.content_validity = content_validity;
        this.release_time = release_time;
        this.read_num = read_num;
        this.like_num = like_num;
        this.classification_name = classification_name;
    }

    public Article(String article_id, String article_title, String author_id, String author,String content, String content_validity, String release_time,String update_time, int read_num, int like_num, String classification_id,String label_id_list, String classification_name) {
        this.article_id = article_id;
        this.article_title = article_title;
        this.author_id = author_id;
        this.author = author;
        this.content = content;
        this.content_validity = content_validity;
        this.release_time = release_time;
        this.update_time = update_time;
        this.read_num = read_num;
        this.like_num = like_num;
        this.classification_id = classification_id;
        this.label_id_list = label_id_list;
        this.classification_name = classification_name;
    }

    public Article() {
    }

    @Override
    public String toString() {
        return "Article{" +
                "article_id='" + article_id + '\'' +
                ", article_title='" + article_title + '\'' +
                ", author_id='" + author_id + '\'' +
                ", author='" + author + '\'' +
                ", content='" + content + '\'' +
                ", content_validity='" + content_validity + '\'' +
                ", release_time='" + release_time + '\'' +
                ", update_time='" + update_time + '\'' +
                ", read_num=" + read_num +
                ", like_num=" + like_num +
                ", classification_id='" + classification_id + '\'' +
                ", label_id_list='" + label_id_list + '\'' +
                ", classification_name='" + classification_id + '\'' +
                ", imglist=" + imglist +
                '}';
    }
}
