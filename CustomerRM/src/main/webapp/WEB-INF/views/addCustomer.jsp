<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>Save Customer</title>
</head>
<body style= "background-color: #FEFBE7">

	<div class="background-color: #F7CCAC">
		<div class = "container">
			<h2>Customer Relationship Management</h2>
			<hr>
		</div>
	</div>
	
	<div class="container">
		<p class="h4 mb-4">Customer</p>
		
		<form action = "/CustRelManagement/custrshipmgmt/save" method = "POST">
		
			<input type="hidden" name="id" value="${customer.id}"/>
			
			<div class="form-inline">
				<input type="text" name="firstName" value="${customer.firstName}"
					class = "form-control mb-4 col-4" placeholder = "First Name">
					
			</div>
			<div class="form-inline">
				<input type="text" name="lastName" value="${customer.lastName}"
					class = "form-control mb-4 col-4" placeholder = "Last Name">
					
			</div>
			<div class="form-inline">
				<input type="text" name="email" value="${customer.email}"
					class = "form-control mb-4 col-4" placeholder = "E-Mail">
					
			</div>
			
			<button type = "submit" class="btn btn-info col-2">Save</button>
		</form>
		
		<hr>
		<a href="/CustRelManagement/custrshipmgmt/list" class = "btn btn-primary">Back to Customer List</a>
	</div>

</body>
</html>