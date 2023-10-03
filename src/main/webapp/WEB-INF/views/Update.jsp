<%@page import="java.util.List"%>
<%@page import="com.jspiders.cardekho_case_study_mvc.pojo.CarPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String msg=(String)request.getAttribute("msg");
List<CarPOJO> carList = (List) request.getAttribute("carList");
CarPOJO carPojo = (CarPOJO) request.getAttribute("car");
%>
<jsp:include page="Navbar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE CAR DETAILS</title>
<style type="text/css">
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

.login-container p {
	text-align: center;
	color: lightcyan;
	margin-top: 40px;
}

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
</style>

</head>
<body>
<div align="center" class="login-container">
		<h2
			style="text-align: center; color: green; text-shadow: 1px 1px 1px white; font-size: 24px; margin-bottom: 20px;">UPDATE
			CAR DETAILS</h2>
	<form action="updateCar" method="post">
			<table>
				<tr>
					<td><label for="carID">Enter ID:</label></td>
					<td><input type="text" id="carID" name="carID" required></td>
				</tr>
			</table>
			
<input type="submit" value="SELECT" id="btn1"
				style="background: linear-gradient(to right, #E7484F, #E7484F 16.65%, #F68B1D 16.65%, #F68B1D 33.3%, #FCED00 33.3%, #FCED00 49.95%, #009E4F 49.95%, #009E4F 66.6%, #00AAC3 66.6%, #00AAC3 83.25%, #732982 83.25%, #732982 100%); background-size: 200% 100%; color: #fff; font-style: italic; cursor: pointer; padding: 7px 22px; border: 1px solid white; border-radius: 10px; animation: gradient-animation 4s linear infinite; transition: all 0.3s ease; box-shadow: 1px 1px 5px blue;"
				onmouseover=" this.style.backgroundPosition = 'right center'; this.style.color = '#fff';"
				onmouseout=" this.style.backgroundPosition = 'left center'; this.style.color = '#fff';" />
	</form>
	</div>
	<%
	if (msg != null) {
	%>
	<p style="margin-top: 20px; color: cyan; text-align: center;"><%=msg%></p>
	<%
	}
	%>
	
	<%
	if (carPojo != null) {
	%>
	<div style="font-family: Arial, sans-serif;">
	<form action="updatingCar" method="post" style="width: 300px; height: 366px; margin: 0 auto; color: white; background: linear-gradient(to right, #267871, #8B2030); padding: 20px; box-shadow: 0px 6px 22px cornsilk; border-radius: 10px;">
			
					<label for="carID">Car ID:</label>
					<label style="width: 95%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 50%; background-color: darkred; color: white; text-align: center;"><%=carPojo.getCarID()%></label>
					<input type="text" name="carID" hidden=true	value=<%=carPojo.getCarID()%> >
					<label style="color: pink; font-size: 14px; font-style: italic;">YOU CAN'T CHANGE CAR ID</label> <br> <br>
				
					<label for="carName">Car Name:</label>
					<input type="text" required name="carName" style="width: 95%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 3px; background-color: darkred; color: white; text-align: center; -webkit-text-fill-color: white !important; transition: background-color 5000s ease-in-out 0s; background: darkred !important;" value=<%=carPojo.getCarName()%>>
				
					<label for="brandName">Brand Name:</label>
					<input type="text" required name="brandName" style="width: 95%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 3px; background-color: darkred; color: white; text-align: center; -webkit-text-fill-color: white !important; transition: background-color 5000s ease-in-out 0s; background: darkred !important;" value=<%=carPojo.getBrandName()%>>
				
					<label for="fuelType">Fuel Type:</label>
					<input type="text" required name="fuelType"	style="width: 95%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 3px; background-color: darkred; color: white; text-align: center; -webkit-text-fill-color: white !important; transition: background-color 5000s ease-in-out 0s; background: darkred !important;" value=<%=carPojo.getFuelType()%>>
				
					<label for="price">Price:</label>
					<input type="text" required name="price" style="width: 95%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 3px; background-color: darkred; color: white; text-align: center; -webkit-text-fill-color: white !important; transition: background-color 5000s ease-in-out 0s; background: darkred !important;" value=<%=carPojo.getPrice()%>>
				
				
			<div class="center-button" style="text-align: center;">
				<input type="submit" value="UPDATE" id="btn1"
					style="background: linear-gradient(to right, red, orange, yellow, green, blue, indigo, red); background-size: 200% 100%; font-style: italic; color: darkblue; cursor: pointer; padding: 7px 22px; border: 1px solid white; border-radius: 10px; animation: gradient-animation 2s linear infinite; transition: all 0.3s ease; box-shadow: 1px 1px 5px blue;"
					onmouseover=" this.style.backgroundPosition = 'right center'; this.style.color = '#fff'; "
					onmouseout=" this.style.backgroundPosition = 'left center'; this.style.color = 'darkblue';" />
			</div>
	</form>
	</div>
	<%
	} else {
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
		<%
		for (CarPOJO car : carList) {
		%>
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
	<%
	}
	%>
	
</body>
</html>