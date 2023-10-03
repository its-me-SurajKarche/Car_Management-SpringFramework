<%@page import="com.jspiders.cardekho_case_study_mvc.pojo.CarPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="Navbar.jsp"></jsp:include>
<%
CarPOJO pojo = (CarPOJO) request.getAttribute("car");
%>
<%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD CAR DETAILS</title>
<style>
body {
	font-family: Arial, sans-serif;
}

form {
	width: 300px;
	height: 366px;
	margin: 0 auto;
	color: white;
	background: linear-gradient(to right, #267871, #8B2030);
	border-radius: 5px;
	padding: 20px;
	box-shadow: 0px 6px 22px cornsilk;
	border-radius: 20px;
}

h2 {
	text-align: center;
	color: green;
	text-shadow: 1px 1px 1px white;
	font-size: 24px;
	margin-bottom: 20px;
	font-size: 24px;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="text"], input[type="number"] {
	width: 95%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	background-color: darkred;
	color: white;
	text-align: center;
}

.center-button {
	text-align: center;
}

input:-webkit-autofill {
	-webkit-text-fill-color: white !important;
	transition: background-color 5000s ease-in-out 0s;
	background: darkred !important;
}

p {
	text-align: center;
	color: lightcyan;
	margin-top: 40px;
}
</style>
</head>
<body>
<h2>ADD CAR DETAILS</h2>
	<form action="addCar" method="post">
			<label for="carName">Car Name:</label>
			<input type="text" name="carName" id="carName" required>
			
					<label for="brandName">Brand Name:</label>
					<input type="text" name="brandName" id="brandName" required >
				
					<label for="fuelType">Fuel Type:</label>
					<input type="text" name="fuelType" id="fuelType" required>
	
					<label for="price">Price:</label>
					<input type="text" name="price" id="price" required>
			<div class="center-button">
				<input type="submit" value="ADD_CAR" id="btn1"
					style="background: linear-gradient(to right, red, orange, yellow, green, blue, indigo, red); background-size: 200% 100%; font-style: italic; color: darkblue; cursor: pointer; padding: 7px 22px; border: 1px solid white; border-radius: 10px; animation: gradient-animation 2s linear infinite; transition: all 0.3s ease; box-shadow: 1px 1px 5px blue;"
					onmouseover="
    this.style.backgroundPosition = 'right center';
    this.style.color = '#fff';
  "
					onmouseout="
    this.style.backgroundPosition = 'left center';
    this.style.color = 'darkblue';
  " />
			</div>
	</form>
	<%
		if (msg != null) {
		%>
		<!-- <meta http-equiv="refresh" content="2;url=add"> -->
		<p><%=msg%></p>
		<%
		}
		%>
</body>
</html>