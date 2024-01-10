<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>An About Us Page | CoderGirl</title>
<!---Custom Css File!--->
<link rel="stylesheet" href="style.css">
</head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
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

.about-us {
	height: 100vh;
	width: 100%;
	padding: 90px 0;
	background: white;
}

.pic {
	height: 400px;
	width: 302px;
}

.about {
	width: 1130px;
	max-width: 85%;
	margin: 0 auto;
	display: flex;
	align-items: center;
	justify-content: space-around;
}

.text {
	width: 540px;
}

.text h2 {
	font-size: 90px;
	font-weight: 600;
	margin-bottom: 10px;
}

.text h5 {
	font-size: 22px;
	font-weight: 500;
	margin-bottom: 20px;
}

span {
	color: #4070f4;
}

.text p {
	font-size: 18px;
	line-height: 25px;
	letter-spacing: 1px;
}

.data {
	margin-top: 30px;
}

.hire {
	font-size: 18px;
	background: #4070f4;
	color: #fff;
	text-decoration: none;
	border: none;
	padding: 8px 25px;
	border-radius: 6px;
	transition: 0.5s;
}

.hire:hover {
	background: #000;
	border: 1px solid #4070f4;
}

nav .search-box{
  position: relative;
  height: 40px;
  width: 250px;
}
.search-box input[type="text"]{
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
.search-box a{
  position: absolute;
  top: 50%;
  left: 10px;
  font-size: 20px;
  color: #2c3350;
  transform: translateY(-50%);
  border-right: 2px solid #2c3350;
  padding: 0 5px 0 0;
}
</style>
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
	<section class="about-us">
		<div class="about">
			<img
				src="https://thumbs.dreamstime.com/b/cool-businessman-standing-grey-young-background-69427138.jpg"
				class="pic">
			<div class="text">
				<h2>About <span>NEC</span></h2>
				<h5>
					NEC Corporation India Pvt Ltd. & <span>IT Services and IT
						Consulting New Delhi, New Delhi 80K followers 5K-10K employees</span>
				</h5>
				<p>NEC Corporation India NEC is a leader in the integration of
					IT and network technologies and brings more than 100 years of
					expertise in technological innovation to provide solutions for
					empowering people, businesses and society. Headquartered in Japan,
					NEC started operations in India in the 1950s.</p>
				<div class="data">
					<a
						href="https://www.linkedin.com/company/nec-corporation-india/?originalSubdomain=in"
						class="hire">More</a>
				</div>
			</div>
		</div>
	</section>
</body>
</html>