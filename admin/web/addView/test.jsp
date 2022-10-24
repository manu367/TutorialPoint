<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.database.ConnectionDB.ConnectionDB" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection con=ConnectionDB.getConnectioinstance();
    PreparedStatement pre= con.prepareStatement("SELECT * FROM tutorialpoint.courseindex");
%>

<%
    ResultSet set= pre.executeQuery();
%>
<%-- while start --%>
<%
    while(set.next())
    {
%>
<%= set.getString(1) %>
<%= set.getString(2) %>
<%= set.getString(3) %>
<br>

<%
    }
%>
</body>


</html>
