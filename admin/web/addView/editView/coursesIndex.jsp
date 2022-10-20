<%@ page import="com.database.ConnectionDB.ConnectionDB" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style>

    .containermanu{
        min-height: 700px;
    }
</style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
<%! String cid=null;
ResultSet set=null;

%>
<%
    response.setContentType("text/html");
    if(request.getMethod().equalsIgnoreCase("post")){
      cid=request.getParameter("courseid");
    }else{
        response.getWriter().println("not accepable value");
    }
   Connection con=ConnectionDB.getConnectioinstance();
   PreparedStatement pre=con.prepareStatement("select * from courseindex where courseid=?");
   pre.setString(1,cid);
    set=pre.executeQuery();
%>


<jsp:include page="/header.jsp"></jsp:include>
<div class="container-fluid mt-3 mb-4 ">
    <div class="container">
        <div class="row mb-4 mt-4 p-2 border-bottom border-dark">

            <div class="col-lg-2  ">
                <div class="text-black h5 ">Add Courses</div>
            </div>
            <div class="col-lg-3 offset-5 ">
                <div><button class="btn btn-outline-danger float-end" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Add index</button></div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-10 offset-1">
            <div class="containermanu container">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Course id</th>
                        <th scope="col">Index id</th>
                        <th scope="col">Index Name</th>
                        <th scope="col">Update</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        while(set.next())
                        {
                    %>
                    <tr>
                        <th scope="row"><%= cid %></th>
                        <th scope="row"><%= set.getString("courseindex_id")%></th>
                        <td><%= set.getString("indexname")%></td>
                        <td><%= set.getString("courseid")%></td>
                        <td>
                            <form action="edit" method="post" class="d-inline-flex">
                                <input type="hidden" name="courseid" value="<%= set.getString("courseid")%>">
                                <button type="submit" class="btn btn-outline-primary">Edit</button>
                            </form>
                            <a class="btn btn-danger" href="update">Update</a>

                        </td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>


<!--|model|-->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Add Course Indexes</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Auotgenerated id" disabled id="indexid">
                    <button class="btn btn-outline-secondary" type="button" id="buttonindex">Click</button>

                </div>
                <div>
                    <input type="text" name="" id="" class="form-control" placeholder="Course index name">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Save</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>



</body>

<script src="static_folder/javascript/courseindex.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</html>
