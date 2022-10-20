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
<%! String cid=null;
    ResultSet set=null;

%>
<%
    Connection con= ConnectionDB.getConnectioinstance();
    PreparedStatement pre=con.prepareStatement("select * from courseindex where courseid=?");
    pre.setString(1,cid);
    set=pre.executeQuery();
%>
<%= set %>
<%
    while (set.next()) {
%>
<%= set.getString(1) %>
<%= set.getString(2) %>
<%= set.getString(3) %>

<%
    }
%>

</body>


</html>
