<%--
  Created by IntelliJ IDEA.
  User: patha
  Date: 14-10-2022
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!----- dashboard-->
<div class="container mt-4 mb-5">
  <div class="row">
    <div class="col-md-3">
      <div class="card"  style="background-image: url('./static_folder/images/package.png'); background-position:center center; background-repeat: no-repeat;">

        <div class="card-body text-center">
          <h4 class="card-title">No. of product</h4>
          <p class="card-text" style="visibility: hidden;">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio,
            dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
            metus.</p>
          <h4>No. of add Products</h4>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card"  style="background-image: url('./static_folder/images/sold.png'); background-position:center center; background-repeat: no-repeat;">
        <div class="card-body text-center">
          <h4 class="card-title">Sold Product</h4>
          <p class="card-text" style="visibility: hidden;">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio,
            dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
            metus.</p>
          <h4>No or Sold Product</h4>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card"
           style="background-image: url('./static_folder/images/reviews.png'); background-position:center center; background-repeat: no-repeat;">
        <img class="card-img-top w-100 d-block">
        <div class="card-body text-center">
          <h4 class="card-title">Reviews</h4>
          <p class="card-text" style="visibility: hidden;">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio,
            dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
            metus.</p>
          <button class="btn btn-outline-primary" type="button">Reviews  <span class="badge text-bg-danger">4</span> </button>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card"
           style="background-image: url('./static_folder/images/cash.png'); background-repeat: no-repeat; background-position:center center;">
        <img src="" class="card-img-top w-100 d-block">
        <div class="card-body text-center">
          <h4 class="card-title">Revinued </h4>
          <p class="card-text" style="visibility: hidden;">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio,
            dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget
            metus.</p>
          <h4>Cash</h4>
        </div>
      </div>
    </div>
  </div>
</div>

<!--- opertaions -->
<div class="container mt-5 mb-3">
  <div class="row">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">Product</h4><hr>
          <h6 class="text-muted card-subtitle mb-2">Add Product</h6>

          <p class="card-text">add the e-commerce product and display to web app</p>
          <a class="btn btn-dark card-link" href="add">Add</a>

        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">Delete</h4><hr>
          <h6 class="text-muted card-subtitle mb-2">Delete Products</h6>
          <p class="card-text">If you want to delete some product whose added you</p>
          <a class="btn btn-dark card-link" href="./addView/test.jsp">Delete</a>

        </div>
      </div>
    </div>
  </div>
</div>
<div class="container mt-3">
  <div class="row">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">View</h4><hr>
          <h6 class="text-muted card-subtitle mb-2">View all products</h6>
          <p class="card-text">if you are see of your product who's add you click <b><q>View button</q></b>
            <br> and you can activate and deactivate to your products</p>
          <a class="btn btn-dark  card-link" href="ViewProduct">View</a>

        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">Update</h4><hr>
          <h6 class="text-muted card-subtitle mb-2">Update Products</h6>
          <p class="card-text">update your products using product id or product name <br>
            and update product images also.
          </p>
          <a class="btn btn-dark card-link" href="updateProduct">Update</a>

        </div>
      </div>
    </div>
  </div>
</div>

