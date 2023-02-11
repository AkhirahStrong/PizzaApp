
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<body>

	<h1>Your <c:out value="${size}"/> Pizza</h1>
	
	
	<p>Size: <c:out value="${size}"/></p>
	
	<p>Toppings: <c:out value="${quantity}"/></p>
	
	<p>Gluten-Free Crust: <c:out value="${glutenfree}"/></p>
	
	<p>Specialty Instructions: <c:out value="${instructions}"/></p>
	
	<p>Price: $<c:out value="${price}"/></p>
	
	
	
	
	
	<a href = "/form">Would you like to build another pizza?</a><br>
	<a href = "/"> Back to Homepage</a>




</body>
</html>