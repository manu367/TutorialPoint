<%--
  Created by IntelliJ IDEA.
  User: patha
  Date: 15-10-2022
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <style>

    </style>
    <script src="https://cdn.ckeditor.com/4.20.0/full-all/ckeditor.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<%!  String c_index_id=null;
%>
<%
     c_index_id=request.getParameter("courseindexid");
    System.out.println(c_index_id);
%>
<jsp:include page="/header.jsp"></jsp:include>

<div class="container mt-5" id="hidebtn">
    <div class="row">
        <div class="col-6 offset-4"><div id="link" class="mx-5"><a href="courseindex" class="btn btn-outline-warning"> << Back to page</a></div></div>
    </div>
</div>

<div id="edt" class="container-fluid mt-3 mb-4 ">
    <div class="row">
        <div class="col-10 offset-1">
            <div class="containermanu container mb-4 mt-3">
                <div class="row">
                    <div class="col-12" >
                        <textarea name="editor1" ></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-8 offset-2 mt-3">
                        <button class="btn btn-outline-success float-start" id="savedata">Save</button>
                        <button class="btn btn-danger float-end">Cancel</button>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div id="contentid" style="visibility: hidden"><%= c_index_id %></div>

</body>
<script src="static_folder/javascript/sweetalert.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
    $(document).ready(()=>{
        let cke=CKEDITOR.replace( 'editor1' );
        let contentid=document.getElementById("contentid");
        let contentvalue=contentid.innerHTML;
        $("#hidebtn").hide();
        $("#savedata").click(()=>{

            let data=cke.getData();
            let data1=data;
            console.log(""+data1);
            console.log(data)
            //alert("clcick");
            console.log("editor value ="+data1);
            console.log("index value"+contentvalue);
            $.post("CourseDataSave",{
                editordata:data,
                indexid:contentvalue
            },(data,status)=>{
                alert("ho gya");
            });
            $( document ).ajaxComplete(function() {
                $("#edt").hide();
                $("#hidebtn").show();
            });

            $( document ).ajaxError(function( event, jqxhr, settings, thrownError ) {
                if ( settings.url == "CourseDataSave" ) {
                    alert("error found");
                }});

        });
    });
</script>
</html>
