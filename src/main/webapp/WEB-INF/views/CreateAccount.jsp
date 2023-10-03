<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREATE ADMIN ACCOUNT</title>
<style>
html,body {
    background-image: url("https://cdn.wallpapersafari.com/12/61/HzKbDM.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    padding: 20px;
    width: 300px;
}

.header {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
    color: #333;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    font-weight: bold;
}

.form-group input[type="text"],
.form-group input[type="password"] {
    width: 95%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.submit-button {
    text-align: center;
    margin-top: 20px;
}

/* Rainbow hover effect styles for the 5th button */
.submit-button input[type="submit"] {
    background-color: #007BFF;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.submit-button input[type="submit"]:hover {
    background-image: linear-gradient(to right, #E7484F, #E7484F 16.65%, #F68B1D 16.65%, #F68B1D 33.3%, #FCED00 33.3%, #FCED00 49.95%, #009E4F 49.95%, #009E4F 66.6%, #00AAC3 66.6%, #00AAC3 83.25%, #732982 83.25%, #732982 100%, #E7484F 100%);
    animation: slidebg 2s linear infinite;
    color: white;
}

@keyframes slidebg {
    to {
        background-position: 20vw;
    }
}
</style>
</head>
<body>
<div class="container">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOjXY44xj2kDrEwinLBEsObi_d-A57IoxIS8eWI3UfYK4WK8oapJJiVTcb8eM5cLJc-r8&usqp=CAU" 
    style="height: 150px; width: 150px; margin-left:25%;">
    <div class="header">
       Create Admin
    </div>
    <form action="createNewAdmin" method="post">
        <div class="form-group">
            <label for="user">UserName:</label>
            <input type="text" name="userName" placeholder=" Email / Contact No" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="password" placeholder="Password" required>
        </div>
        <div class="submit-button">
            <input type="submit" value="CREATE_ACCOUNT">
        </div>
    </form>
    <%if(msg!=null){ %>
    <p style="text-align: center; color: lightcyan; margin-top: 30px;"><%= msg %></p>
    <%} %>
</div>
</body>
</html>
