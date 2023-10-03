<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #17252A;
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
ul {
	display: flex;
	justify-content: flex-end;
	align-items: center;
	height: 50px;
	background-color: CurrentColor;
	list-style: none;
	margin: 0;
	padding: 0;
	border: 2px solid yellow;
}

li {
	margin: 0;
	padding: 0;
}

li a {
	text-decoration: none;
	color: #fff;
	padding: 5px 15px;
	transition: background-color 0.3s ease;
	border: 2px solid honeydew;
	border-radius: 5px;
	margin-right: 25px;
	background-color: firebrick;
	box-shadow: 2px 1px 3px magenta;
}

li:not(:last-child) a {
	margin-right: 50px;
}

li a:hover {
	background-color: #161B40;
}

/* Animation effect for p */
#p {
  margin-right:75px;
  font-size: 0.8em; /* Adjust the font size as needed */
  font: bold 2.5vw/1.6 'Signika', sans-serif;
  user-select: none;
  text-align: center; /* Center the text horizontally */
  line-height: 0px; /* Set the line height to 15px */
}

#p span {
  display: inline-block;
  animation: float .2s ease-in-out infinite;
}

@keyframes float {
  0%, 100% { transform: none; }
  33% { transform: translateY(-1px) rotate(-2deg); }
  66% { transform: translateY(1px) rotate(2deg); }
}

#p:hover span {
  animation: bounce .6s;
}

@keyframes bounce {
  0%, 100% { transform: translate(0); }
  25% { transform: rotateX(20deg) translateY(2px) rotate(-3deg); }
  50% { transform: translateY(-20px) rotate(3deg) scale(1.1); }
}

#p span:nth-child(4n) {
  color: hsl(50, 75%, 55%);
  text-shadow: 1px 1px hsl(50, 75%, 45%), 2px 2px hsl(50, 45%, 45%), 3px 3px hsl(50, 45%, 45%), 4px 4px hsl(50, 75%, 45%);
}

#p span:nth-child(4n-1) {
  color: hsl(135, 35%, 55%);
  text-shadow: 1px 1px hsl(135, 35%, 45%), 2px 2px hsl(135, 35%, 45%), 3px 3px hsl(135, 35%, 45%), 4px 4px hsl(135, 35%, 45%);
}

#p span:nth-child(4n-2) {
  color: hsl(155, 35%, 60%);
  text-shadow: 1px 1px hsl(155, 25%, 50%), 2px 2px hsl(155, 25%, 50%), 3px 3px hsl(155, 25%, 50%), 4px 4px hsl(140, 25%, 50%);
}

#p span:nth-child(4n-3) {
  color: hsl(30, 65%, 60%);
  text-shadow: 1px 1px hsl(30, 45%, 50%), 2px 2px hsl(30, 45%, 50%), 3px 3px hsl(30, 45%, 50%), 4px 4px hsl(30, 45%, 50%);
}

#p span:nth-child(2) { animation-delay: 0.05s; }
#p span:nth-child(3) { animation-delay: 0.1s; }
#p span:nth-child(4) { animation-delay: 0.15s; }
#p span:nth-child(5) { animation-delay: 0.2s; }
#p span:nth-child(6) { animation-delay: 0.25s; }
#p span:nth-child(7) { animation-delay: 0.3s; }
#p span:nth-child(8) { animation-delay: 0.35s; }
#p span:nth-child(9) { animation-delay: 0.4s; }
#p span:nth-child(10) { animation-delay: 0.45s; }
#p span:nth-child(11) { animation-delay: 0.5s; }
#p span:nth-child(12) { animation-delay: 0.55s; }
#p span:nth-child(13) { animation-delay: 0.6s; }
#p span:nth-child(14) { animation-delay: 0.65s; }

</style>
</head>
<body>

	<div>
		<ul>
			<p id="p"><span>C</span><span>A</span><span>R</span><span> </span> <span>D</span><span>E</span><span>K</span><span>H</span><span>O</span><span> </span><span>-</span><span> </span><span>M</span><span>V</span><span>C</span></p>
			<li><a href="./home">HOME</a></li>
			<li><a href="./add">ADD CAR</a></li>
			<li><a href="./search">SEARCH CAR</a></li>
			<li><a href="./remove">REMOVE CAR</a></li>
			<li><a href="./update">UPDATE CAR</a></li>
			<li><a href="./logout">LOGOUT</a></li>
		</ul>
	</div>

</body>
</html>
