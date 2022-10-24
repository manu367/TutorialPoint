package com.admin.dao;

import com.admin.savecoursedata.CourseDataSave;
import com.database.ConnectionDB.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

public class CourseDataSaveDao {
    public static int SUCCESS=1;
    public static int ERROR=2;
    public static  int EXCEPTION=3;
    public static final  int getsaveData(String indexid,String content){
        int get=0;
        Connection con=ConnectionDB.getConnectioinstance();
        System.out.println(con);
       try{
           char ch=content.charAt(2);
           int a=((new Random().nextInt(9999999)*2)+99)+2;
           System.out.println(a);

           //randomly generate contentindex id at runtime
           String contentindex=ch+""+a+content.substring(content.length()-5);
           System.out.println(contentindex);

           PreparedStatement pre= con.prepareStatement("insert into coursecontent values(?,?,?)");
           pre.setString(1,indexid);
           pre.setString(2,contentindex);
           pre.setString(3,content);
           int update=pre.executeUpdate();
           if(update!=0){
               System.out.println("hello");
               get=1;
           }else{
               System.out.println("bye");
               get=2;
           }


       }catch (Exception e){
           get=3;
           e.printStackTrace();
       }
       return get;

    }



}
