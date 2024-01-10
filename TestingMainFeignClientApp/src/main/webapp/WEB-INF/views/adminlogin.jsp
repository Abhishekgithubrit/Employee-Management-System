<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<title>admin login</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Cambria;
}

html, body {
	display: grid;
	height: 100vh;
	place-items: center;
	font-family: Cambria;
}

.main_div {
	width: 365px;
	background: #fff;
	padding: 30px;
	border-radius: 5px;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.15);
}

.main_div .title {
	text-align: center;
	font-size: 30px;
	font-weight: 600;
}

.main_div .social_icons {
	margin-top: 20px;
	display: flex;
	justify-content: center;
}

.social_icons a {
	display: block;
	height: 45px;
	width: 100%;
	line-height: 45px;
	text-align: center;
	border-radius: 5px;
	font-size: 20px;
	color: #fff;
	text-decoration: none;
	transition: all 0.3s linear;
}

.social_icons a span {
	margin-left: 5px;
	font-size: 18px;
}

.social_icons a:first-child {
	margin-right: 5px;
	background: #4267B2;
}

.social_icons a:first-child:hover {
	background: #375695;
}

.social_icons a:last-child {
	margin-left: 5px;
	background: #1DA1F2;
}

.social_icons a:last-child:hover {
	background: #0d8bd9;
}

form {
	margin-top: 25px;
}

form .input_box {
	height: 50px;
	width: 100%;
	position: relative;
	margin-top: 15px;
}

.input_box input {
	height: 100%;
	width: 100%;
	outline: none;
	border: 1px solid lightgrey;
	border-radius: 5px;
	padding-left: 45px;
	font-size: 17px;
	transition: all 0.3s ease;
}

.input_box input:focus {
	border-color: #be2edd;
}

.input_box .icon {
	position: absolute;
	top: 50%;
	left: 20px;
	transform: translateY(-50%);
	color: grey;
}

form .option_div {
	margin-top: 5px;
	display: flex;
	justify-content: space-between;
}

.option_div .check_box {
	display: flex;
	align-items: center;
}

.option_div span {
	margin-left: 5px;
	font-size: 16px;
	color: #333;
}

.option_div .forget_div a {
	font-size: 16px;
	color: #be2edd;
}

.button input {
	padding-left: 0;
	background: #be2edd;
	color: #fff;
	border: none;
	font-size: 20px;
	font-weight: 500;
	cursor: pointer;
	transition: all 0.3s linear;
}

.button input:hover {
	background: #a720c5;
}

form .sign_up {
	text-align: center;
	margin-top: 25px;
}

.sign_up a {
	color: #be2edd;
}

form a {
	text-decoration: none;
}

form a:hover {
	text-decoration: underline;
}

header nav {
	position: fixed;
	width: 100%;
	left: 0;
	top: 0;
	z-index: 12;
}

.navbar {
	width: 90%;
	display: flex;
	margin: 20px auto 0 auto;
	align-items: center;
	justify-content: space-between;
}

header nav .logo {
	height: 80px;
	width: 150px;
}

.logo img {
	height: 100%;
	width: 100%;
	object-fit: contain;
}

nav .menu {
	display: flex;
}

nav .menu li {
	list-style: none;
	margin: 0 10px;
}

nav .menu a {
	color: #2c3e50;
	font-size: 17px;
	font-weight: 500;
	text-decoration: none;
}

nav .menu a:hover {
	color: #000;
}

nav .search-box {
	position: relative;
	height: 40px;
	width: 250px;
}

.search-box input[type="text"] {
	position: absolute;
	font-size: 18px;
	height: 100%;
	width: 100%;
	border-radius: 8px;
	outline: none;
	color: #2c3350;
	border: 2px solid #2c3350;
	background: #f2f2f2;
	padding: 0 10px 0 40px;
}

.search-box a {
	position: absolute;
	top: 50%;
	left: 10px;
	font-size: 20px;
	color: #2c3350;
	transform: translateY(-50%);
	border-right: 2px solid #2c3350;
	padding: 0 5px 0 0;
}

header .media-icons {
	display: flex;
	flex-direction: column;
	position: absolute;
	right: 40px;
	bottom: 40px;
}

.media-icons a {
	margin-top: 8px;
	font-size: 20px;
	font-weight: 500;
	text-decoration: none;
	opacity: 0.7;
	color: #2c3350;
	transition: all 0.3s ease;
}

.media-icons a:hover {
	opacity: 1;
}

.text {
	margin: -20px 0 0 -30px;
}

</style>
</head>
<body>
	<header>
		<nav>
			<div class="navbar">
				<div class="logo">
					<img
						src="https://1000logos.net/wp-content/uploads/2017/12/NEC-logo.jpg"
						alt="">
				</div>
				<ul class="menu">
					<li><a href="/">Home</a></li>
					<li><a href="/employeeregister">Register</a></li>
					<li><a href="/contact">contect</a></li>
					<li><a href="/admin">Admin Login</a></li>
					<li><a href="/employee">Employee Login</a></li>
				</ul>
				<div class="search-box">
					<input type="text" placeholder="Search here..."> <a
						href="#"><i class="fas fa-search"></i></a>
				</div>
			</div>
		</nav>
		<div class="media-icons">
			<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
				class="fab fa-twitter"></i></a> <a href="#"><i
				class="fab fa-linkedin-in"></i></a> <a href="#"><i
				class="fab fa-pinterest"></i></a>
		</div>
	</header>
	<div class="main_div">
		<div class="title">Admin Login</div>
		<div class="social_icons">
			<a href="#"><i class="fab fa-facebook-f"></i> <span>Facebook</span></a>
			<a href="#"><i class="fab fa-twitter"></i><span>Twitter</span></a>
		</div>
		<form action="/adminlogin" method="post">
			<div class="input_box">
				<input type="text" name="loginid" value="${loginid}"
					placeholder="Email ID" / required="required">
				<div class="icon">
					<i class="fas fa-user"></i>
				</div>
			</div>
			<div class="input_box">
				<input type="password" name="password" value="${password}"
					placeholder="Password" / required="required">
				<div class="icon">
					<i class="fas fa-lock"></i>
				</div>
			</div>
			<div class="option_div">
				<div class="check_box">
					<input type="checkbox"> <span>Remember me</span>
				</div>
				<div class="forget_div">
					<a href="#">Forgot password?</a>
				</div>
			</div>
			<span style="color: red;" th:if="${adminNotFound}">${errorMessage}</span>
			<div class="input_box button">
				<input type="submit" value="Login">
			</div>
			<div class="sign_up">
				Not a member? <a href="/adminregister">Signup now</a>
			</div>
		</form>
	</div>
</body>
</html>

