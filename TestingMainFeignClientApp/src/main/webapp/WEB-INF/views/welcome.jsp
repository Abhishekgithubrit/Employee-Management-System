<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Congratulations Page Design By WebJourney - Html Template
</title>
<!-- FontAwesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.congratulation-wrapper {
	max-width: 550px;
	margin-inline: auto;
	-webkit-box-shadow: 0 0 20px #f3f3f3;
	box-shadow: 0 0 20px #f3f3f3;
	padding: 90px 90px;
	background-color: #fff;
	border-radius: 10px;
}

.congratulation-contents.center-text .congratulation-contents-icon {
	margin-inline: auto;
}

.congratulation-contents-icon {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	height: 100px;
	width: 100px;
	background-color: #65c18c;
	color: #fff;
	font-size: 50px;
	border-radius: 50%;
	margin-bottom: 30px;
}

.congratulation-contents-title {
	font-size: 32px;
	line-height: 36px;
	margin: -6px 0 0;
}

.congratulation-contents-para {
	font-size: 16px;
	line-height: 24px;
	margin-top: 15px;
}

.btn-wrapper {
	display: block;
}

.cmn-btn.btn-bg-1 {
	background: #6176f6;
	color: #fff;
	border: 2px solid transparent;
	border-radius: 3px;
	text-decoration: none;
	padding: 5px;
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
	<%
	String loginId = request.getParameter("loginid");
	String password = request.getParameter("password");
	%>
	<!-- Congratulations area start -->
	<div class="congratulation-area text-center mt-5">
		<div class="container">
			<div class="congratulation-wrapper">
				<div class="congratulation-contents center-text">
					<div class="congratulation-contents-icon">
						<i class="fas fa-check"></i>
					</div>
					<h4 class="congratulation-contents-title">Welcome! You
						Are Login Successfully</h4>
					<p class="congratulation-contents-para">Your account is ready
						to get work.</p>
					
					<p class="congratulation-contents-para">
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col">No</th>
								<th scope="col">Name</th>
								<th scope="col">EmailID</th>
								<th scope="col">Password</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td> <p>${employeeName}</p></td>
								<td><%=loginId%></td>
								<td><%=password%></td>
						</tbody>
					</table>
					</p>

					<div class="btn-wrapper mt-4">
						<a href="/" class="cmn-btn btn-bg-1"> Go to Home </a>
					</div>
				</div>
			</div>
		</div>
	</div>







	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>