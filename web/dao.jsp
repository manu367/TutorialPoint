<%@ page import="java.sql.Connection" %>
<%@ page import="com.tutorilpoint.connection.TutorialConnection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: patha
  Date: 21-10-2022
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    try{
        Connection con= TutorialConnection.getConnectioinstance();
        PreparedStatement pre= con.prepareStatement("SELECT * FROM tutorialpoint.courses");
        ResultSet set= pre.executeQuery();
        while(set.next()){
            String cid=set.getString(1);
            String cname=set.getString(2);
            String cType=set.getString(3);
            String image=set.getString(4);

        }
    }catch (Exception e){
        e.printStackTrace();
    }

%>
