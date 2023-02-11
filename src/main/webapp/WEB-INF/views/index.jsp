   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<body>

<header>
	<h1>Pizza Shop</h1>
</header>

<div class="specialPizza">

	<h3>Check Out Our Specialty Pizza</h3>
	<ul class="specialtyList">
		<li><a href="/specialPizza?type=Vegan%20Vally&price=12.15">Vegan Vally</a></li>
		<li><a href="/specialPizza?type=Meaty%20Madness&price=17.05">Meaty Madness</a></li>
		<li><a href="/specialPizza?type=Pepperoni%20Paradise&price=15.20">Pepperoni Paradise</a></li>
	</ul>

</div>

<div class="buildYourOwn">
	<h3>Build your Own</h3>
	<a href="/form">Build your own!</a>
	
</div>

<a href="/review">Review</a>

</body>
</html>