<%--
  Created by IntelliJ IDEA.
  User: patha
  Date: 14-10-2022
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="staticFolder/phone.css">
  <link rel="stylesheet" href="staticFolder/laptop.js.css">
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"> </script>
</head>

<body>
<jsp:include page="nav/header.jsp"></jsp:include>

<div class="mt-2">
  <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="staticFolder/images/software2.webp" class="d-block w-100" alt="..." width="400" height="400">
      <div class="carousel-caption d-none d-md-block " style="background-color: rgba(238,229,229,0.7);color: black;letter-spacing: 1px;font-family: 'Arial Black',sans-serif,'Segoe UI';" >
        <h5 class="text-dark h1">Bug fixing</h5>
        <p class=" h3" >we are privide us , services</p>
        <p class=" h3" >Contact no: 6395896677</p>
        <p class=" h3" >Email : pathakmanu174@gmail.com</p>

      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="staticFolder/images/code23.jpg" class="d-block w-100" alt="..." width="400" height="400">
      <div class="carousel-caption d-none d-md-block" style="background-color: rgba(238,229,229,0.4);color: black;letter-spacing: 1px;font-family: 'Arial Black',sans-serif,'Segoe UI';">
        <h5 class="text-dark h1">Software Texting Training</h5>
        <p class="text-dark h3" >JavaTech4U provide testing training with Exprience Teacher</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="staticFolder/images/coding.jpg" class="d-block w-100" alt="..." width="400" height="400">
      <div class="carousel-caption d-none d-md-block" style="background-color: rgba(238,229,229,0.7);color: black;letter-spacing: 1px;font-family: 'Arial Black',sans-serif,'Segoe UI';">
        <h5 class="text-dark h1 text-start">First slide label</h5>
        <p class="text-dark h3" >Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="staticFolder/images/software.jpg" class="d-block w-100" alt="..." width="400" height="400">
      <div class="carousel-caption d-none d-md-block" style="background-color: rgba(238,229,229,0.7);color: black;letter-spacing: 1px;font-family: 'Arial Black',sans-serif,'Segoe UI';">
        <h5 class="text-dark h1" >First slide label</h5>
        <p class="text-dark h3" >Some representative placeholder content for the first slide.</p>
      </div>
    </div>

    <div class="carousel-item">
      <img src="staticFolder/images/sideview.webp" class="d-block w-100" alt="..." width="400" height="400">
      <div class="carousel-caption d-none d-md-block" style="background-color: rgba(238,229,229,0.7);color: black;letter-spacing: 1px;font-family: 'Arial Black',sans-serif,'Segoe UI';">
        <h5 class="text-dark h1">First slide label</h5>
        <p class="text-dark h3" >Some representative placeholder content for the first slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>


<jsp:include page="content/main.jsp"></jsp:include>
<jsp:include page="services/services.jsp"></jsp:include>
<jsp:include page="footer/footer.jsp"></jsp:include>






</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="staticFolder/Main.js"></script>

</html>