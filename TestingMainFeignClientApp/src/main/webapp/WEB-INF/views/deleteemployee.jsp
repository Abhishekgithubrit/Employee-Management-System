<!--  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About page</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
    *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
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
header .media-icons{
  display: flex;
  flex-direction: column;
  position: absolute;
  right: 40px;
  bottom: 40px;
}
.media-icons a{
 margin-top: 8px;
 font-size: 20px;
 font-weight: 500;
 text-decoration: none;
 opacity: 0.7;
 color: #2c3350;
 transition: all 0.3s ease;
}
.media-icons a:hover{
 opacity: 1;
}
.text{
	margin: -20px 0 0 -30px;
}
.content .girl img{
  position: absolute;
  height: 85%;
  bottom: 0;
  right: 5px;
  background-color: white;
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
					<li><a href="/insertemployee">Insert Emp</a></li>
					<li><a href="/deleteemployee">Delete Emp</a></li>
					<li><a href="/updateemployee">Update Emp</a></li>
					<li><a href="/employeedata">Display Emp</a></li>
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
	</div>
     <div class="girl">
       <img src="https://media.istockphoto.com/id/1019406468/photo/yong-business-man-or-corporate-employee-isolated-on-grey-background-classical-formal-wear.jpg?s=170667a&w=0&k=20&c=jGblVGBajzkBQnef89ol7Udkwo0Ni1wRot63WinTTF0=" alt="">
     </div>
     </div>
</body>
</html> -->

<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Simple Website Design | CodingLab </title>
    <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <style>
	   @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
header{
  height: 100vh;
  width: 100%;
  background: url("images/background.png") no-repeat;
  background-position: center;
}
::selection{
  background: #a3f5ec;
}
header nav{
  position: fixed;
  width: 100%;
  left: 0;
  top: 0;
  z-index: 12;
}
.navbar{
  width: 90%;
  display: flex;
  margin: 20px auto 0 auto;
  align-items: center;
  justify-content: space-between;
}
  header nav .logo{
  height: 80px;
  width: 150px;
}
.logo img{
  height: 100%;
  width: 100%;
  object-fit: contain;
}
nav .menu{
  display: flex;
}
nav .menu li{
  list-style: none;
  margin: 0 10px;
}
nav .menu a{
  color: #2c3e50;
  font-size: 17px;
  font-weight: 500;
  text-decoration: none;
}
nav .menu a:hover{
  color: #000;
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

header .media-icons{
  display: flex;
  flex-direction: column;
  position: absolute;
  right: 40px;
  bottom: 40px;
}
.media-icons a{
 margin-top: 50px;
 font-size: 20px;
 font-weight: 500;
 text-decoration: none;
 opacity: 0.7;
 color: #2c3350;
 transition: all 0.3s ease;
}
.media-icons a:hover{
 opacity: 1;
}
.text{
	margin: -20px 0 0 -30px;
}
 html {
  height: 100%;
}
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: white;
}

.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03e9f4);
  animation: btn-anim1 1s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}

.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #03e9f4);
  animation: btn-anim2 1s linear infinite;
  animation-delay: .25s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  animation: btn-anim3 1s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  animation: btn-anim4 1s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
}
.card {
  background-color: var(--background);
  display: block;
  width: 300px;
  min-height: 90px;
  border: 3px solid var(--primary);
  padding: 15px;
  margin: calc(50vh - 30px) auto 0 auto;
  box-shadow: 10px -10px 0 -3px var(--background), 10px -10px var(--green),
        20px -20px 0 -3px var(--background), 20px -20px var(--yellow), 
        30px -30px 0 -3px var(--background), 30px -30px var(--orange), 
        40px -40px 0 -3px var(--background), 40px -40px var(--red); 
  transition: box-shadow 1s, top 1s, left 1s;
  position: relative;
  top: 0;
  left: 0;
  cursor: pointer;
}

.card:hover {
  top: -40px;
  left: 40px;
  box-shadow: 0 0 0 -3px var(--background), 0 0 0 0 var(--green),
      0 0 0 -3px var(--background), 0 0 0 0  var(--yellow),
      0 0 0 -3px var(--background), 0 0 0 0  var(--orange),
      0 0 0 -3px  var(--background), 0 0 0 0  var(--red);
}









:root {
  --primary: #555BFF;
  --secondary: #22D2A0;
  --background: white;
  --green: #1FC11B;
  --yellow: #FFD913;
  --orange: #FF9C55;
  --red: #FF5555;
} 

*{
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

body {
  background-image: radial-gradient(var(--secondary) 30%, var(--background) 30%);
  background-size: 2px 3px;
  font-family: "Archivo", sans-serif;
  color: var(--primary);
}

.card p {
  font-size: 11px;
  text-transform: uppercase;
  letter-spacing: 0.5px;
  margin-bottom: 10px;
}

.card h2 {
  font-size: 14px;
  font-family: "Archivo Black", "Archivo", sans-serif;
  font-weight: normal;
}

 

 

   </style>
<body>
 <header>
   <nav>
   <div class="navbar">
     <div class="logo">
      <img src="https://1000logos.net/wp-content/uploads/2017/12/NEC-logo.jpg" alt="">
     </div>
     <ul class="menu">
      <li><a href="/">Home</a></li>
       <li><a href="/insertemployee">Insert Emp</a></li>
					<li><a href="/deleteemployee">Delete Emp</a></li>
					<li><a href="/updateemployee">Update Emp</a></li>
					<li><a href="/employeedata">Display Emp</a></li>
      </ul>
      <div class="search-box">
        <input type="text" placeholder="Search here...">
        <a href="#"><i class="fas fa-search"></i></a>
      </div>
   </div>
   </nav> 
   </div>
   <div class="login-box">
  <h2>Delete Employee</h2>
  <form action="/deletedata" method="post">
    <div class="user-box">
      <input type="number" name="id" required="true">
      <label>Delete Emp By EmpID</label>
    </div>
    <a href="#">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
     <input type="submit">
    </a>
	      
  </form>
</div>
   
   <div class="media-icons">
   
   <link href="https://fonts.googleapis.com/css?family=Archivo+Black&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Archivo:700&display=swap" rel="stylesheet">


<div class="card">
  <p>
    Similar post
  </p>
  <h2>
    <h1>${data}</h1>
  </h2>
</div>
    <a href="#"><i class="fab fa-twitter"></i></a>
    <a href="#"><i class="fab fa-linkedin-in"></i></a>
    <a href="#"><i class="fab fa-pinterest"></i></a>
  </div>
 </header>
 
</body>
</html>
