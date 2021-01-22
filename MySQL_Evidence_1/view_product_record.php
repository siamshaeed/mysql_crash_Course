<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$db_connect = new mysqli("localhost", "root", "", "company");
// Check connection
if ($db_connect == false) {
  // The die() function prints a message and exits the current script.
  die("ERROR : Could not connect server" . $db_connect->connect_error);
} else {
  // echo "Connection successully" . $db_connect->server_info;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>View All Product</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
  <section style="width: 45%; margin: 0 auto; text-align: center">
    <table class="table table-bordered table-striped table-hover text-center">
      <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>manufacturer_id</th>
      </tr>
      <?php
      echo ("<h3>View all product by product table</h3>");
      // sql query
      $sql = "SELECT  product.id, name, price, manufacturer_id  FROM product WHERE price>5000";
      $result = $db_connect->query($sql);
      while ($row = $result->fetch_assoc()) { ?>
        <tr>
          <td><?php echo $row['id'] ?></td>
          <td><?php echo $row['name'] ?></td>
          <td><?php echo $row['price'] ?></td>
          <td><?php echo $row['manufacturer_id'] ?></td>
        </tr>
      <?php } ?>
    </table>
  </section>
</body>
</html>