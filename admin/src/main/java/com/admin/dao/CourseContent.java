package com.admin.dao;

import com.admin.Bean.ConurseIndex;
import com.database.ConnectionDB.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;

public final class CourseContent {
    private CourseContent(){}

    public final static synchronized int savecouseContent(com.admin.Bean.CourseContent bean){
        int a=0;
        Connection con=null;
        con= ConnectionDB.getConnectioinstance();
        if(con != null){
            try{
                PreparedStatement pre= con.prepareStatement("insert into coursecontent values (?,?,?)");
                pre.setString(1,bean.getCourseindex_id());
                pre.setString(2, bean.getContentid());
                pre.setString(3, bean.getContent());
                int update=pre.executeUpdate();
                if(update !=0){
                    a=3;
                }else{
                    a=4;
                }

            }catch (Exception e){
                a=2;
                e.printStackTrace();
            }

        }else {
            a=1;
        }
        return a;
    }

//    public static void main(String[] args) {
//        com.admin.Bean.CourseContent c=new com.admin.Bean.CourseContent();
//        c.setCourseindex_id("python7895");
//        c.setContentid("111");
//        c.setContent("There might be quite large databases stored on your server. In such cases, you can use the LIKE expression along with the MySQL SHOW TABLES command. This way, you will only see a filtered list of tables instead of looking through all of them:");
//
//        System.out.println(CourseContent.savecouseContent(c));
//    }
}
