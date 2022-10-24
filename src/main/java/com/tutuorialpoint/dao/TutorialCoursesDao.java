package com.tutuorialpoint.dao;

import com.tutorilpoint.connection.TutorialConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TutorialCoursesDao {
    public static final ArrayList<String> arrlist=new ArrayList<String>();

    public static final synchronized void getCourses(){

         try{
             Connection con= TutorialConnection.getConnectioinstance();
             System.out.println(con);
             PreparedStatement pre= con.prepareStatement("SELECT * FROM tutorialpoint.courses");
             ResultSet set= pre.executeQuery();
             while(set.next()){
                 String cid=set.getString(1);
                 String cname=set.getString(2);
                 String cType=set.getString(3);
                 String image=set.getString(4);


                 System.out.println(cid+cname+cType+image);

             }
         }catch (Exception e){
             e.printStackTrace();
         }
    }

    public static void main(String[] args) {

       TutorialCoursesDao.getCourses();
    }
}
