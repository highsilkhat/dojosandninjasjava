<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     
      <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Ninja</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
</head>
<body>

<h1>New Ninja</h1>

<form:form action="/ninja/post" method="post" modelAttribute="ninja">

<p>
	<form:select path="dojo">
		<c:forEach var="dojo" items="${ dojos }">
			<form:option value="${ dojo.id }">${dojo.name }</form:option>
		</c:forEach>
	</form:select>

<p>
	<form:label class= "form-label" path = "FirstName">First Name</form:label>
	<form:errors path= "firstName"/>
	<form:input class= "form-control" path="firstName"/>
	
</p>
<p>

	<form:label class= "form-label" path = "lastName">Last Name</form:label>
	<form:errors path= "lastName"/>
	<form:input class= "form-control" path="lastName"/>
</p>
<p>
	<form:label class= "form-label" path = "age">Age</form:label>
	<form:errors path= "age"/>
	<form:input class= "form-control" path="age" type="number"/>
</p>

<input type="submit" class="btn btn-primary" value="Create"/>

</form:form>

</body>
</html>