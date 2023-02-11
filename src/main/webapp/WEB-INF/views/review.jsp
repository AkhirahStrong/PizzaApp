
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Leave a Review</h1>
<form method="get" action="/reviewSubmit">
		<p>
			<label for="name">Your Name</label>
			<input type="text" id="name" name="name" min="1" max="10">
		</p>

		<p>
			<label for="comment">Special Instructions (Optional)</label><br>
			<textarea id="comment" name="comment" rows="4" cols="50"></textarea><br>
		</p>
		
<h1>Rating</h1>
		<p>
			<input type="radio" name="rating" value="5" required> 5 (best) -
		<input type="radio" name="rating" value="4"> 4 -
		<input type="radio" name="rating" value="3"> 3 -
		<input type="radio" name="rating" value="2"> 2 -
		<input type="radio" name="rating" value="1"> 1 (worst)<br><br>
		</p>

<input type="submit" >
<a href="/">Never Mind</a>

</form>

</body>
</html>