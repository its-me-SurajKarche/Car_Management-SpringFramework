<%@page import="com.jspiders.cardekho_case_study_mvc.pojo.CarPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%CarPOJO carPojo=(CarPOJO)request.getAttribute("car"); %>
<%
List<CarPOJO> carList = (List) request.getAttribute("carList");
%>
<%
String msg = (String) request.getAttribute("msg");
%>
<jsp:include page="Navbar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REMOVE CAR DETAILS</title>

<style type="text/css">

/*TABLE STRUCTURE EDITING*/
@import
	url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700');

:root {
	--base-spacing-unit: 24px;
	--half-spacing-unit: calc(var(--base-spacing-unit)/2);
	--color-alpha: #1772FF;
	--color-form-highlight: #EEEEEE;
}

.custom-table {
	margin-top: 20px;
	width: 70%;
	border-radius: 7px;
	border: 1px solid var(--color-form-highlight);
}

.custom-table tr:nth-of-type(odd) {
	background: grey;
}

.custom-table tr:nth-of-type(even) {
	background: pink;
}

.custom-table th, .custom-table td {
	flex: 1 1 20%;
	text-align: center;
}

.custom-table th {
	height: 38px;
	text-transform: uppercase;
	background-color: black;
	color: white;
}

.login-container {
	background: linear-gradient(to right, #267871, #8B2030);
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2), 0px 10px 20px
		rgba(0, 0, 0, 0.3), 0px 30px 60px 1px rgba(0, 0, 0, 0.5);
	border-radius: 31px;
	padding: 20px;
	width: 300px;
	height: 158px;
	text-align: center;
	color: white;
	margin: 0 auto; /* Center the container horizontally */
	margin-top: 20px; /* Adjust the top margin as needed */
}

.login-container table {
	margin: 20px 0;
}

.login-container input[type="text"] {
	border: none;
	background: none;
	box-shadow: 0px 2px 0px 0px white;
	width: 100%;
	color: white;
	font-size: 1em;
	outline: none;
	margin-bottom: 0;
}

.login-container input[type="submit"] {
	margin-top: p{    
text-align: center;
	color: lightcyan;
	margin-top: 40px;
}

p {
	text-align: center;
	color: lightcyan;
	margin-top: 40px;
}

#btn1 {
	position: relative;
	cursor: pointer;
	margin-top: 10px;
	color: #fff;
	font-size: 10px;
	background: linear-gradient(54.7deg, #960ead 12%, #0ad8c7 100%);
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
	border: NONE;
	border-radius: 24px;
	padding: 8px 14px;
	transition: background 0.9s ease-in-out, box-shadow 0.9s ease-in-out;
}

#btn1:hover {
	background: linear-gradient(54.7deg, #0ad8c7 12%, #960ead 100%);
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px
		rgba(0, 0, 0, 0.23);
}

@
keyframes gradient-animation { 0% {
	background-position: 200% 0;
}
100
%
{
background-position
:
-200%
0;
}
}
</style>

</head>
<body>
<div class="login-container">
		<h2
			style="text-align: center; color: green; text-shadow: 1px 1px 1px white; font-size: 24px; margin-bottom: 20px;">REMOVE CAR DETAILS</h2>
	<form action="removeCar" method="post">

			
			<table>
				<tr>
					<td><label for="carID">Enter ID:</label></td>
					<td><input type="text" id="carID" name="carID" required></td>
				</tr>
			</table>
				<div class="center-button">
				<input type="submit" value="REMOVE" id="btn1"
					style="background: linear-gradient(to right, red, orange, yellow, green, blue, indigo, red); background-size: 200% 100%; font-style: italic; color: darkblue; cursor: pointer; padding: 7px 22px; border: 1px solid white; border-radius: 10px; animation: gradient-animation 2s linear infinite; transition: all 0.3s ease; box-shadow: 1px 1px 5px blue;"
					onmouseover=" this.style.backgroundPosition = 'right center'; this.style.color = '#fff';"
					onmouseout="this.style.backgroundPosition = 'left center';this.style.color = 'darkblue';" />
				</div>			
		</form>
		</div>
		
	<%if(carPojo!=null){ %>
	<div class="center-table">
		<table id="data" align="center" class="custom-table">
		<tr>
			<th>Car ID</th>
			<th>Car Name</th>
			<th>Brand Name</th>
			<th>Fuel Type</th>
			<th>Price</th>
		</tr>
		<tr>
			<td><%=carPojo.getCarID() %></td>
			<td><%=carPojo.getCarName() %></td>
			<td><%=carPojo.getBrandName() %></td>
			<td><%=carPojo.getFuelType() %></td>
			<td><%=carPojo.getPrice() %></td>
		</tr>
	</table>
	</div>
	<%} %>
	
	<%
	if (msg != null) {
	%>
	<p style="margin-top: 20px; color: cyan; text-align: center;"><%=msg%></p>
	<%
	}
	%>
	<%
	if (carList != null) {
		
	%>
	<div class="center-table">
		<table id="data" align="center" class="custom-table">
			<tr>
			<th>Car ID</th>
			<th>Car Name</th>
			<th>Brand Name</th>
			<th>Fuel Type</th>
			<th>Price</th>
			</tr>
		<% for (CarPOJO car : carList) {%>
		<tr>
			<td><%=car.getCarID()%></td>
			<td><%=car.getCarName()%></td>
			<td><%=car.getBrandName()%></td>
			<td><%=car.getFuelType()%></td>
			<td><%=car.getPrice()%></td>
		</tr>
	
	<%
	}
	}
	%>
	</table>
	</div>
</body>
</html>