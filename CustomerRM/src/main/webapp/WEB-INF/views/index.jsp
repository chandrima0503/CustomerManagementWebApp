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
<title>Customer Relationship Management</title>
</head>
<body style="background-color: #FEFBE7">

		<div class ="title" style="background-color:#F7CCAC">
			<div class="container">
				<h2>Customer RelationShip Management</h2>
				<hr>
			</div>
		</div>
		
		<div class="container">
		<form action="/CustRelManagement/books/search"
		class="form-inline">
		<a href="/CustRelManagement/custrshipmgmt/showFormforAdd"
		class="btn btn-primary btn-sm mb-3"> Add customer </a>
		</form>
		
		<table class="table table-bordered table-striped">
		<thead class="thead dark" style ="background-color: #F7CCAC">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>E-Mail</th>
					<th>Action</th>
				</tr>
		</thead>
		
		<tbody>
				<c:forEach items="${customers}" var="tempCustomer">
				<tr>
					<td><c:out value="${tempCustomer.firstName}" /></td>
					<td><c:out value="${tempCustomer.lastName}" /></td>
					<td><c:out value="${tempCustomer.email}" /></td>
					<td>
						<a href="/CustRelManagement/custrshipmgmt/showFormforUpdate?id=${tempCustomer.id}"
						class="btn btn-info btn-sm"> Update </a><a> | </a>
						<a href="/CustRelManagement/custrshipmgmt/delete?id=${tempCustomer.id}"
						class="btn btn-danger btn-sm" onClick="if (!(confirm('Are you sure you want to delete customer ${tempCustomer.firstName}?'))) return false">
						Delete</a>
					</td>					
					
				</tr>
				</c:forEach>
		</tbody>
		</table>
		</div>
		

</body>
</html>