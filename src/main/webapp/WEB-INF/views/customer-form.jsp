<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Form </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <div class="container-fluid p-3 my-3" style="background-color:orange;">
  <h1 style="text-color:black;" >Customer Relationship Management</h1>
  </div>
  <div class="container-fluid p-3 my-3">
  </div>
  <div class="container">
  <h4>Save Customer</h4>
  <form action="save" method="post">
    <div class="form-group">
      <input type="hidden" class="form-control" id="id"  name="id" value="${customer.id}">
    </div>
    <div class="form-group">
      <label for="firstName">First Name:</label>
      <input type="text" class="form-control" id="firstName" placeholder="Enter first name" name="firstName" value="${customer.firstName}">
    </div>
     <div class="form-group">
      <label for="lastName">Last Name:</label>
      <input type="text" class="form-control" id="lastName" placeholder="Enter last name" name="lastName" value="${customer.lastName}">
    </div>
     <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="${customer.email}">
    </div>
    <button type="submit" class="btn btn-primary">Save</button>
  </form>
</div>
</body>
</html>
