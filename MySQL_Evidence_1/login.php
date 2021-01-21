<!-- Server connect -->
<?php
$db_connect = new mysqli("localhost", "root", "", "company");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login with Validation</title>
</head>
<body>
  <?php
  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $pass = $_POST['password'];
    // sql
    $sql = "SELECT * FROM users WHERE username = '$username' and password = '$pass'";
    $db_connect->query($sql);

    if ($db_connect->affected_rows > 0) {
      echo "Successfully Login";
    } else {
      echo "user name password don't match, Please enter correct";
    }
  }
  ?>
  <center>
    <form action="#" method="post">
      <h2>Login Form</h2>
      <label for="username">User Name :</label>
      <span><input type="text" name="username" placeholder="User Name"><br></span> </br>
      <label for="username">Password :</label>
      <span><input type="text" name="password" placeholder="Password"><br></span></br>
      <input type="submit" name="btn" value="Login">
    </form>
  </center>
</body>
</html>