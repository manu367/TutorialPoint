<%--
  Created by IntelliJ IDEA.
  User: patha
  Date: 14-10-2022
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>admin-panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.css">
    <link rel="stylesheet" href="static_folder/css/Navbar-Centered-Links-icons.css">
    <link rel="stylesheet" href="static_folder/css/Search-Input-responsive.css">
    <style>
        .from-image{
            display: none;
        }
        .category{
            width: 550px;
            height: 500px;
            margin-left: 450px;
            padding: 20px;
            text-transform: uppercase;
            position: absolute;
            top: 90px;
            left: 0;
            border-radius: 20px;
            background-color: white;
            box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
        }
        .course{
            margin-top: 20px;
        }
        .images{display: none;}
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>

<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/tutorialpoint"
                   user="root"  password="root"/>
<sql:query dataSource="${db}" var="rs">
    SELECT * FROM tutorialpoint.courses;
</sql:query>
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid container-md">
    <div class="row mb-4 mt-4 p-2 border-bottom border-dark">

        <div class="col-lg-2  ">
            <div class="text-black h5 ">Add Courses</div>
        </div>
        <div class="col-lg-3 offset-5 ">
            <div><button class="btn btn-outline-danger float-end" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Add</button></div>
        </div>
    </div>
    <div class="row ">
        <div class="col-10 offset-1">
            <table class="table table-hover " id="mytable">
                <thead >
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">Course Name</th>
                    <th scope="col">Course Type</th>
                    <th scope="col">Images</th>
                    <th scope="col">Operations</th>
                </tr>
                </thead>
                <tbody id="mytable1">
               <c:forEach var="table" items="${rs.rows}">
                <tr>
                    <th scope="row"><c:out value="${table.c_id}"/></th>
                    <td><c:out value="${table.c_ename}"/></td>
                    <td><c:out value="${table.c_Teype}"/></td>
                    <td><img alt="" src="static_folder/images/<c:out value="${table.image}"/>"  width="50" height="50" class="img-thumbnail img-fluid"></td>
                    <td>
                        <form action="index" method="post" class="d-inline-flex">
                            <input type="hidden" name="courseid" value="<c:out value="${table.c_id}"/>">
                            <button type="submit" class="btn btn-outline-primary">Edit</button>
                        </form>
                        <button class="btn btn-warning">Delete</button>
                    </td>

                </tr>
            </c:forEach>
                </tbody>
            </table>

        </div>
    </div>

</div>



<!-- model-->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog  modal-xl">
        <form action="" id="myfrom">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid p-md-2">
                        <div class="text-center from-image" id="imgClick"><img src="static_folder/images/waiting.gif" alt="" class="img-fluid img-thumbnail" height="300" width="300" id="success"></div>
 <!--/hide  row on click -->      <div class="row" id="row">
                            <div class="col-md-4" id="thumnail">
                                <img src="static_folder/images/login.jpg" alt="" class="img-fluid img-thumbnail px-lg-1" >
                            </div>
                            <div class="col-md-7 offset-md-1 p-2" >

                                <div class="input-group mb-3 mt-md-4" id="group">
                                    <input type="text" class="form-control" placeholder="course id" disabled id="courseid" name="id">
                                    <button class="btn btn-outline-primary" type="button" id="buttonaddon2">Click</button>
                                </div>
                                <div class=" mt-md-4">
                                    <input type="text" class="form-control" placeholder="Course name" name="cname" id="course">

                                </div>
                                <select class="form-select  mt-md-4" name="ctype" aria-label="Default select example" id="type">
                                    <option selected>Select Course Type</option>
                                    <option value="Teachincal">Teachincal</option>
                                    <option value="Non-teachnical">Non-teachnical</option>
                                    <option value="Treading teachnologies">Treading teachnologies</option>
                                    <option value="Prepartion">Prepartion</option>
                                    <option value="graducation">B-Teach/BCA/MCA</option>
                                    <option value="cloud">Cloud Teachnology</option>
                                    <option value="Testing">Testing</option>
                                    <option value="Databases">Databases</option>
                                    <option value="FrontEnd">FrontEnd Teachnology</option>
                                    <option value="OfficeTools">Office Tools</option>
                                    <option value="Populer">Populer</option>
                                    <option value="Graphics">Graphics/Animation</option>
                                    <option value="Interview">Interview</option>
                                    <option value="Projects">Projects</option>
                                    <option value="Articals">Articals</option>
                                    <option value="others">others</option>

                                </select>
                                <div class="input-group  mt-md-4">
                                    <input type="file" class="form-control" id="inputGroupFile04" accept="image/png,image/gif" name="file">
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="reset" class="btn btn-secondary" id="close" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" id="cl">Save</button>
                </div>
            </div>
        </form>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<script src="static_folder/javascript/bs-init.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.js"></script>
<script src="static_folder/javascript//Lightbox-Gallery.js"></script>
<script src="static_folder/javascript/confetti.js"></script>
</body>
<script src="static_folder/javascript/addJavascript.js"></script>
</html>
