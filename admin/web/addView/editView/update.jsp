<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.ckeditor.com/4.20.0/full-all/ckeditor.js"></script>
    <style>
        .containermanu{
            min-height: 700px;
        }
    </style>
</head>
<body>

<jsp:include page="/header.jsp"></jsp:include>
<div class="container-fluid mt-3 mb-4 ">
    <div class="row">
        <div class="col-10 offset-1">
            <div class="containermanu container mb-4 mt-3">
                <div class="row">
                    <div class="col-12">
                        <textarea name="editor1"></textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-8 offset-2 mt-3">
                        <button class="btn btn-outline-success float-start">Save</button>
                        <button class="btn btn-danger float-end">Cancel</button>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
<script>
    var cke=CKEDITOR.replace( 'editor1' );
    cke.setData("hello bro how are you");
</script>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</html>
