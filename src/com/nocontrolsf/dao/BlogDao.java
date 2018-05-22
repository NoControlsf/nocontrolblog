package com.nocontrolsf.dao;

import com.nocontrolsf.bean.Article;
import com.nocontrolsf.bean.Artimg;
import com.nocontrolsf.bean.Label;
import com.nocontrolsf.service.BlogService;
import com.nocontrolsf.util.JdbcUtil;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/5/21.
 */
@Repository
public class BlogDao implements BlogService {

    @Override
    public List<Article> getStdArtList(String labelid, String classificationid) {
        List<Article> list = new ArrayList<Article>();
        JdbcUtil jdbcUtil=new JdbcUtil();
        Connection conn=jdbcUtil.getConnection();
        StringBuffer sb=new StringBuffer();
        sb.append("  SELECT article_id, article_title, author_id, author, content_validity, release_time, read_num, like_num, classification_name FROM articles_list  ");
        if (classificationid != ""){
            sb.append(" where classification_id = '");
            sb.append(classificationid);
            sb.append("' ");
            if (labelid != ""){
                sb.append(" and label_id_list like '%");
                sb.append(labelid);
                sb.append("%' ");
            }
        }else if(labelid != ""){
            sb.append(" where label_id_list  like '%");
            sb.append(labelid);
            sb.append("%' ");
        }
        sb.append(" order by release_time desc; ");

        try {
            Statement st = conn.createStatement();
            ResultSet rs=st.executeQuery(sb.toString());
            //将结果集转换成键值对存放到列表中

            while(rs.next()){
                Article arttemp = new Article(rs.getString("article_id"), rs.getString("article_title"),
                        rs.getString("author_id"), rs.getString("author"), rs.getString("content_validity"),
                        rs.getString("release_time"), rs.getInt("read_num"), rs.getInt("like_num"), rs.getString("classification_name"));
                String article_id = rs.getString("article_id");
                Statement st1 = conn.createStatement();
                ResultSet rstmp=st1.executeQuery("select img_path from art_img_list where article_id = '" +article_id + "' limit 3; ");
                List<Artimg> imglist = new ArrayList<Artimg>();
                while(rstmp.next()){
                    Artimg imgtmp = new Artimg();
                    imgtmp.setImg_path(rstmp.getString("img_path"));
                    imglist.add(imgtmp);
                }
                arttemp.setImglist(imglist);
                list.add(arttemp);
            }

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<Label> getStdLabelList(String classificationid) {
        List<Label> list = new ArrayList<>();
        JdbcUtil jdbcUtil=new JdbcUtil();
        Connection conn=jdbcUtil.getConnection();
        StringBuffer sb=new StringBuffer();
        sb.append("select label_id, label_name from label_list ");
        if (classificationid != ""){
            sb.append(" where classification_id='");
            sb.append(classificationid);
            sb.append("' ");
        }
        sb.append(" order by update_time desc; ");
        try {
            Statement st = conn.createStatement();
            ResultSet rs=st.executeQuery(sb.toString());
            //将结果集转换成键值对存放到列表中
            while(rs.next()){
                Label labeltmp = new Label(rs.getString("label_id"), rs.getString("label_name"));
                list.add(labeltmp);
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public Article getArtInfo(String articleid) {
        JdbcUtil jdbcUtil=new JdbcUtil();
        Connection conn=jdbcUtil.getConnection();
        StringBuffer sb=new StringBuffer();
        sb.append("  SELECT article_id, article_title, author_id, author, content, content_validity, release_time,update_time, read_num, like_num, classification_id, label_id_list, classification_name FROM articles_list  ");
        sb.append(" where article_id = '");
        sb.append(articleid);
        sb.append("'; ");

        try {
            Statement st = conn.createStatement();
            ResultSet rs=st.executeQuery(sb.toString());
            //将结果集转换成键值对存放到列表中

            while(rs.next()){
                Article arttemp = new Article(rs.getString("article_id"), rs.getString("article_title"),
                        rs.getString("author_id"), rs.getString("author"),rs.getString("content"), rs.getString("content_validity"),
                        rs.getString("release_time"),rs.getString("update_time"), rs.getInt("read_num"), rs.getInt("like_num"),
                        rs.getString("classification_id"),rs.getString("label_id_list"), rs.getString("classification_name"));
                String[] label_id_list = rs.getString("label_id_list").split(",");
                List<Label> labels = new ArrayList<>();
                for (int i = 0;i<label_id_list.length;i++){
                    Statement st1 = conn.createStatement();
                    ResultSet rstmp=st1.executeQuery("select label_name from label_list where label_id = '" +label_id_list[i] + "';");
                    while(rstmp.next()){
                        Label label = new Label();
                        label.setLabel_name(rstmp.getString("label_name"));
                        labels.add(label);
                    }
                }
                arttemp.setLabellist(labels);
                return arttemp;
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
