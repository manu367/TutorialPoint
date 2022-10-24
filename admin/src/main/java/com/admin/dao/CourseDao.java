package com.admin.dao;

import com.admin.Bean.Course;
import com.database.ConnectionDB.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public final class CourseDao {

    private CourseDao(){}
    public final synchronized static int savecourseData(Course bean){
        System.out.println(bean.getImages()+bean.getC_ename()+bean.getC_Teype()+bean.getC_id());
        int a=0;
        Connection con=null;
        con=ConnectionDB.getConnectioinstance();
        if(con != null){
            try{
                PreparedStatement pre= con.prepareStatement("insert into courses values (?,?,?,?)");
                pre.setString(1,bean.getC_id());
                pre.setString(2, bean.getC_ename());
                pre.setString(3, bean.getC_Teype());
                pre.setString(4, bean.getImages());

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

    public final synchronized static int deletecourseData(String indexid){
        Connection con=ConnectionDB.getConnectioinstance();
        try {
           PreparedStatement pre=con.prepareStatement("DELETE  FROM course WHERE courseindex_id=?");
           pre.setString(1,indexid);
           int a=pre.executeUpdate();
           if(a!=0){
               //success
           }else{
               //fail
           }
        } catch (SQLException e) {
            throw new RuntimeException(e);

        }
        return 1;
    }

}
