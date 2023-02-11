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
	
	<h1>Build Your Own Pizza</h1>
	<form id= "customForm" action="/showForm-submit" method = "get">
		<p>
			<label for="size">Select Size</label>
			<select name="size" >
			  <option value="Small">Small</option>
			  <option value="Medium">Medium</option>
			  <option value="Large">Large</option>
			  <option value="New-York-Style">New York Style</option>
			</select>
		</p>
		
		<p>
			<label for="quantity">How Many Toppings?</label>
			<input type="number" id="quantity" name="quantity" min="1" max="10">
		</p>
		
		<ul>
		<c:forEach var="list" items="${list}" >
			<li>${list}</li>
		</c:forEach>	
		</ul>
			
		
			
		<p>
			<input type="checkbox" id=" glutenfree" name=" glutenfree" value="crust">
  			<label for="glutenfree"> Gluten-Free Crust? ($2.00 extra)</label>
		</p>
		
		<p>
			<label for="instructions">Special Instructions (Optional)</label><br>
			<textarea id="instructions" name="instructions" rows="4" cols="50"></textarea>
		</p>
			
		<p>
			<input type="submit" form="customForm" value="Calculate Price"/>
			
			<a href="/">Never Mind</a>
		</p>
	</form> 
	
</body>
</html>