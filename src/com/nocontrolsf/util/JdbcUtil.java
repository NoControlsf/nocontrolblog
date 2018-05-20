package com.nocontrolsf.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * Created by Administrator on 2017/6/28.
 */
public class JdbcUtil {
    String driver = null;
    String url=null;
    String username=null;
    String password=null;
    //配置文件
    public void getCon(String file) throws IOException{
        Properties pro =new Properties();
        InputStream in=JdbcUtil.class.getClassLoader().getResourceAsStream(file);
        pro.load(in);
        //String driver = (String) pro.get("driver");
        driver = pro.getProperty("driver");
        url=pro.getProperty("url");
        username=pro.getProperty("username");
        password=pro.getProperty("password");
    }
    //连接数据库
    public Connection getConnection(){
        Connection conn=null;
        JdbcUtil md=new JdbcUtil();
        try {
            md.getCon("resources/jdbc.properties");
            Class.forName(md.driver);
            conn= DriverManager.getConnection(md.url, md.username, md.password);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return conn;
    }

}
