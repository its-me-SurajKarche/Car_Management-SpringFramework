<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="Navbar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<style type="text/css">
body{
background-color: white;
}
body::after {
	content: "";
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	border: 2px solid red;
	z-index: -1;
}
#container {
	height: 420px;
	width: 100vw;
	background-image:
		url("https://media.formula1.com/image/upload/content/dam/fom-website/manual/Misc/2021-Master-Folder/F1%202021%20LAUNCH%20RENDERING%20(2).jpg.transform/9col/image.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	display: flex;
}

#container2 {
	height: 100vh;
	width: 100vw;
	background-color: white;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.same {
	height: 300px;
	width: 400px;
	border-radius: 5px;
	
}

#content1 {
	background-color: brown;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

#content2 {
	background-color: #1A4645;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

#content3 {
	background-color: #003049;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

#self {
	background-color: #003049;
	margin:0 auto;
	width: 500px;
	height: 400px;
	margin-top:-200px;
	background-image:url("https://cdn.pixabay.com/photo/2017/05/11/11/15/workplace-2303851_640.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

#other-divs {
	display: flex;
}

#content1, #content2, #content3 {
	margin: -760px 100px 0px 0px;
	margin-left: 90px;
}

h3{
text-align:center;
}
ol li,h3{
color: white;
}
</style>
</head>
<body>
	<div id="container"></div>
	<div id="container2"></div>
	<div id="other-divs">
		<div class="same" id="content1">
		<h3>RULES TO USE APPLICATION</h3>
		<ol>
				<li>Acceptance of Terms</li><br>
				<li>Admin Creation</li><br>
				<li>Password Security</li><br>
				<li>Security Precautions</li><br>
				<li>Accessibility</li><br>
				<li>Community Guidelines</li>
				
		</ol>
		</div>
		<div class="same" id="content2">
		<h3>FEATURES OF APPLICATION</h3>
		<ol>
				<li>Admin Registration and Authentication</li><br>
				<li>Add Functionality</li><br>
				<li>Search Functionality</li><br>
				<li>Update Functionality</li><br>
				<li>Remove Functionality</li><br>
				<li>Strict Security</li>
				
		</ol>
		</div>
		<div class="same" id="content3">
		<h3>FUTURE SCOPE</h3>
		<ol>
				<li>Mobile Application Development</li><br>
				<li>Multi-language Support</li><br>
				<li>Enhanced User Authentication</li><br>
				<li>Monetization Strategies</li><br>
				<li>Machine Learning for Recommendations</li>
				
		</ol>
		</div>
	</div>
	<div class="same" id="self"></div>
</body>
</html>
