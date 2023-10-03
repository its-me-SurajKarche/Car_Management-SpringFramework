<%@page import="java.util.List"%>
<%@page import="com.jspiders.cardekho_case_study_mvc.pojo.CarPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="Navbar.jsp"></jsp:include>
<%
String msg = (String) request.getAttribute("msg");
List<CarPOJO> carList = (List<CarPOJO>) request.getAttribute("carList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SEARCH CAR DETAILS</title>

<style type="text/css">
select:hover {
    background-color: black;
    color: white;
    border-radius: 9px;
            
        }
 select{
 		 text-align: center;
       color: white;
       background-color: maroon;
       border-radius: 5px;
       border: 2px solid chartreuse;
       height: 27px;
       margin-bottom: 25px;
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

.login-container {
	background: linear-gradient(to right, #267871, #8B2030);
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2), 0px 10px 20px
		rgba(0, 0, 0, 0.3), 0px 30px 60px 1px rgba(0, 0, 0, 0.5);
	border-radius: 31px;
	padding: 20px;
	width: 307px;
	height: 256px;
	text-align: center;
	color: white;
	margin: 0 auto; 
	margin-top: 20px; 
}

.login-container fieldset {
	border: none;
}

.login-container table {
	margin: 20px 0;
}

.login-container input[type="text"],label1 {
	border: 1px solid white	;
    background: darkred;
    border-radius:25px;
    box-shadow: 1px 0px 2px blue;
    width: 70%;
    height:24px;
    color: white;
    font-size: 1em;
    outline: forestgreen;
    margin-top:7px;
    margin-bottom: 0;
    text-align: center;
}
.login-container input[type="text"]::placeholder {
    
    font-style: italic; /* Change the placeholder text color to white */
}
.login-container input[type="submit"] {
	margin-top: p{  
text-align: center;
	color: lightcyan;
	margin-top: 40px;
}

.login-container p {
	text-align: center;
	color: lightcyan;
	margin-top: 40px;
}

@keyframes gradient-animation { 
0% {
	background-position: 200% 0;
}
100%{
background-position:-200% 0;
}
}

</style>
 <script>
        function updateLabel() {
            var select = document.getElementById("option");
            var label = document.getElementById("label1");
            var selectedOption = select.options[select.selectedIndex].text;
            label.textContent = "ENTER " + selectedOption;
        }
        // Function to set the initial label text
        window.onload = function() {
            updateLabel();
        };
    </script>
</head>
<body>
<div align="center" class="login-container">
		<h2	style="text-align: center; color: green; text-shadow: 1px 1px 1px white; font-size: 24px; margin-bottom: 20px;">SEARCH CAR</h2>
	<form action="searchCar" method="post">
			<label style="color: darkturquoise; font-weight: bold;"  for="option">SEARCH CAR BY</label>
	 <select name="option" id="option"  onchange="updateLabel()" >
        <option value="carID" >CAR ID</option>
        <option value="carName">CAR NAME</option>
        <option value="brandName">BRAND NAME</option>
        <option value="fuelType">FUEL TYPE</option>
        <option value="price">PRICE</option>
    </select>
    
    <br> <br>
    <label id="label1" for="opt"> </label> 
    <input type="text" id="opt" name="optionValue" placeholder="Enter value here" required><br> <br> 
    <input type="submit" value="SEARCH" id="btn1"
				style="background: linear-gradient(to right, #E7484F, #E7484F 16.65%, #F68B1D 16.65%, #F68B1D 33.3%, #FCED00 33.3%, #FCED00 49.95%, #009E4F 49.95%, #009E4F 66.6%, #00AAC3 66.6%, #00AAC3 83.25%, #732982 83.25%, #732982 100%); background-size: 200% 100%; color: #fff; font-style: italic; cursor: pointer; padding: 7px 22px; border: 1px solid white; border-radius: 10px; animation: gradient-animation 4s linear infinite; transition: all 0.3s ease; box-shadow: 1px 1px 5px blue;"
				onmouseover=" this.style.backgroundPosition = 'right center';this.style.color = '#fff';"
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
</body>
</html>