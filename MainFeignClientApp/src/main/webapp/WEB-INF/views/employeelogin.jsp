<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>employee login</title>
</head>
<body>
    <h1>This is the Employee login page.</h1>
    
    <form action = "/employeelogin" method="post">
		Enter the Login id of the employee : 
		<input type = "text" name = "loginid">
		
		Enter the password:
		<input type = "text" name="password"> 
		
		<input type="submit">
	</form>
	
	<h1>${employee}</h1>

	
</body>
</html>