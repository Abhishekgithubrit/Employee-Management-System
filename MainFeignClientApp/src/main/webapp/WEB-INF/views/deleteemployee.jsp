<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About page</title>
</head>
<body>
    <h1>Hello this is delete employee page.</h1>
    <br>
    
    <form action="/deletedata" method="post">
    	Enter the id of the employee : 
		<input type = "number" name = "id">

		<input type="submit">
    </form>
    
    <h1>${data}</h1>
</body>
</html>