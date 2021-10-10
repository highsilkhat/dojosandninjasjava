<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
</head>
<body>

<h1> <c:out value="${ dojo.name }"/> Location Ninjas</h1>

<table class="table table-striped">
	<tr>
		<th>
		First Name
		</th>
		
		<th>
		Last Name
		</th>
		
		<th>
		Age
		</th>
		
	</tr>
<tbody>

<c:forEach var="ninja" items="${ dojo.ninjas }">
<tr>
	<td>
	<c:out value="${ ninja.firstName }"/>
	</td>
	
	<td>
	<c:out value="${ ninja.lastName }"/>
	</td>
	
	<td>
	<c:out value="${ ninja.age }"/>
	
</c:forEach>

</tbody>

</body>
</html>