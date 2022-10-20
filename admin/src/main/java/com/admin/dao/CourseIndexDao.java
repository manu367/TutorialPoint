package com.admin.dao;

import com.admin.Bean.ConurseIndex;
import com.database.ConnectionDB.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;

public final class CourseIndexDao {
    private CourseIndexDao(){}

    public final static synchronized int saveCourseindex(ConurseIndex bean){
        int a=0;
        Connection con=null;
        con= ConnectionDB.getConnectioinstance();
        if(con != null){
            try{
                PreparedStatement pre= con.prepareStatement("insert into courseindex values (?,?,?)");
                pre.setString(1,bean.getCourseid());
                pre.setString(2, bean.getCourseindex_id());
                pre.setString(3, bean.getIndexname());
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
//        ConurseIndex index=new ConurseIndex();
//        index.setCourseid("5639");
//        index.setCourseindex_id("python7895");
//        index.setIndexname("Introduction");
//
//        System.out.println(CourseIndexDao.saveCourseindex(index));
//    }
}
