<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% String msg=(String)request.getAttribute("msg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN LOGIN</title>

<link href="https://fonts.googleapis.com/css?family=Assistant:400,700"
	rel="stylesheet">
<style>
body {
	background: #17252A;
	font-family: Assistant, sans-serif;
	display: flex;
	min-height: 100vh;
	margin: 0;
	justify-content: center;
	align-items: center;
}

.login-container {
	color: white;
	background: linear-gradient(to right, #267871, #8B2030);
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2), 0px 10px 20px
		rgba(0, 0, 0, 0.3), 0px 30px 60px 1px rgba(0, 0, 0, 0.5);
	border-radius: 31px;
	padding: 20px;
	width: 300px;
	height: 300px;
	text-align: center;
}

.login .head .company {
	font-size: 2.2em;
	margin-bottom: 20px;
}

.login .form {
	text-align: left;
}

.login .form input[type="text"], .login .form input[type="password"] {
	border: none;
	background: none;
	box-shadow: 0px 2px 0px 0px white;
	width: 100%;
	color: white;
	font-size: 1em;
	outline: none;
	margin-bottom: 30px;
}

.login .form input[type="text"]::placeholder, .login .form input[type="password"]::placeholder
	{
	color: #D3D3D3;
}



input#userName.text {
	margin-top: 22px;
	padding: 7px;
	border-radius: 8px;
}

.password {
	margin-top: 22px;
	padding: 7px;
	border-radius: 8px;
}


body::after {
	content: "";
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	border: 2px solid yellow;
	z-index: -1;
}

.form {
	width: 100%;
	height: 100;
}
a{

color:blue;
font-style: italic;
border-radius: 5px;
}
/* Style for the button */
input[type="submit"] {
    background-color: darkred;
    color: white;
    padding: 8px 41px;
    border: 1px solid white;
    border-radius: 8px;
    cursor: pointer;
    margin-top: 26px;
    margin-bottom: 19px;
    box-shadow: 1px 1px 5px blue;
    transition: background-image 3s linear, color 3s linear;
}

/* Hover effect */
input[type="submit"]:hover {
    background-image: linear-gradient(to right, red, orange, yellow, green, blue, indigo, red);
    animation: slidebg 3s linear infinite;
    color: white;
}

/* Keyframes for animation */
@keyframes slidebg {
    to {
        background-position: 20vw;
    }
}

</style>

</head>
<body>

	<div class="login-container">
		<div class="head">
			<h1 class="company">ADMIN LOGIN</h1>
		</div>
		<div class="form">
			<form action="login" method="post">
				<input type="text" placeholder="User Name" class="text" id="userName" name="userName"><br>
				<input type="password" placeholder="Password" class="password" name="password"><br>
				<div class="center-button">
				<input type="submit" value="LOGIN">
			</div>
			</form>
			<label style="margin-left: -84px;">Click here to </label>
			<a href="./createAdmin">CREATE_ACCOUNT</a>

		</div>

  <!--<meta http-equiv="refresh" content="5;url=login";>  -->
  <% if (msg != null) { %>
  <p style="text-align: center; color: lightcyan; margin-top: -356px;"><%= msg %></p>
<% } %>
		
	</div>

	
</body>
</html>