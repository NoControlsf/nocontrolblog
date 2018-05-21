package com.nocontrolsf.bean;

/**
 * Created by Administrator on 2018/5/21.
 */
public class Artimg {
    private String img_id;
    private String img_name;
    private String img_path;
    private String article_id;
    private String classification_id;
    private String release_time;

    public String getImg_id() {
        return img_id;
    }

    public void setImg_id(String img_id) {
        this.img_id = img_id;
    }

    public String getImg_name() {
        return img_name;
    }

    public void setImg_name(String img_name) {
        this.img_name = img_name;
    }

    public String getImg_path() {
        return img_path;
    }

    public void setImg_path(String img_path) {
        this.img_path = img_path;
    }

    public String getArticle_id() {
        return article_id;
    }

    public void setArticle_id(String article_id) {
        this.article_id = article_id;
    }

    public String getClassification_id() {
        return classification_id;
    }

    public void setClassification_id(String classification_id) {
        this.classification_id = classification_id;
    }

    public String getRelease_time() {
        return release_time;
    }

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    @Override
    public String toString() {
        return "Artimg{" +
                "img_id='" + img_id + '\'' +
                ", img_name='" + img_name + '\'' +
                ", img_path='" + img_path + '\'' +
                ", article_id='" + article_id + '\'' +
                ", classification_id='" + classification_id + '\'' +
                ", release_time='" + release_time + '\'' +
                '}';
    }
}
