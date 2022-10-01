<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer List </title>
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
  <a style="padding:20px; margin-left:60px;" href="showCustomerForm" class="btn btn-dark">Add Customer</a>
  </div>
 <div class="container">
             
  <table class="table table-dark">
    <thead>
      <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Action</th>
      </tr>
    </thead>
    <c:forEach var="customer" items="${customers}" varStatus="c">
    <tbody>
      <tr>
        <td>${customer.firstName}</td>
        <td>${customer.lastName}</td>
        <td>${customer.email}</td>
        <td><a href="update?id=${customer.id}" class="btn btn-success">Update</a> 
        <a href="delete?id=${customer.id}" class="btn btn-danger"
        onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a></td>
        
      </tr>
    </tbody>
    </c:forEach>
  </table>
</div>
</body>
</html>
