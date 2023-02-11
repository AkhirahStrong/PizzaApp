<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
   
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>  Insert title here</title>
</head>

<body>
	
	
	<h1>Thank you for your review!</h1>
	
	<p>Your Name: <c:out value="${name}"/></p>
	
	<p>Comment: <c:out value="${comment}"/></p>
	
	<p>Rating: <c:out value="${rating}"/></p>
	
	<a href="/">Back to Homepage</a>
</body>
</html>