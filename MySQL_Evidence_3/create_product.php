<?php 
	$conn = new mysqli("localhost", "root", "", "mycompany");
	if($_SERVER['REQUEST_METHOD']=="POST"){
		$product_name = $_POST['product_name'];
		$product_details = $_POST['product_details'];
		$product_price = $_POST['product_price'];
		
		$sql = "CALL insert_products('$product_name', '$product_details', '$product_price')";
		$conn->query($sql);
		if($conn->affected_rows > 0){
			echo "Product Inserted Successfully !!";
		}
		else{
			echo "Something Wrong !!";
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Create Product</title>
</head>
<body>
	<form action="" method="post">
		<h2>Create Product</h2>
		<table>
			<tr>
				<td>Product Name: </td>
				<td><input type="text" name="product_name"></td>
			</tr>
			<tr>
				<td>Product Details: </td>
				<td><textarea name="product_details"></textarea></td>
			</tr>
			<tr>
				<td>Product Price</td>
				<td><input type="number" name="product_price"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</body>
</html>