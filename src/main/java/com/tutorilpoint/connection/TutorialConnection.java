package com.tutorilpoint.connection;


import java.sql.Connection;
import java.sql.DriverManager;

interface Data{
    String CLASSURL="com.mysql.cj.jdbc.Driver";
    String URL="jdbc:mysql://localhost:3306/tutorialpoint";
    String USER="root";
    String PASSWORD="root";
}

public class TutorialConnection implements Data {

    private TutorialConnection(){}

    public final static synchronized Connection getConnectioinstance()  {
        Connection con=null;
        try {
            Class.forName(CLASSURL);
            con= DriverManager.getConnection(URL,USER,PASSWORD);
        }catch (Exception e){
            e.printStackTrace();
        }
        return con;
    }



}
