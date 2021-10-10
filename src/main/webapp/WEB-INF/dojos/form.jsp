<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Dojo</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
</head>
<body>

<h1>New Dojo</h1>

<form:form action="/dojo/post" method="post" modelAttribute="dojo">

<p>
	<form:label class= "form-label" path="name">Name</form:label>
	<form:errors path="name"/>
	<form:input class= "form-control" path="name"/>
	
</p>
	
<input type="submit" class="btn btn-primary" value="Create"/>


</form:form>


</body>
</html>