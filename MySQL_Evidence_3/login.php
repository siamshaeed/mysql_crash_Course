<?php 
	$conn = new mysqli("localhost", "root", "", "mycompany");
	if($_SERVER['REQUEST_METHOD']=="POST"){
		$username = $_POST['username'];
		$password = $_POST['password'];
		$password = md5($password);
		$sql = "SELECT * FROM users WHERE username='$username' AND password='$password' ";
		$result = $conn->query($sql);
		if($result->num_rows > 0){
			echo "Login Successfully !!";
		}
		else{
			echo "User Name or Password Invalid !!";
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
</head>
<body>
	<form action="" method="post">
		<h2>Log In</h2>
		<table>
			<tr>
				<td>User Name: </td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</body>
</html>