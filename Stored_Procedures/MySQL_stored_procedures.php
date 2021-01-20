<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$db_connect = new mysqli("localhost", "root", "", "evidence_mysql");
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
    <title>MySQL Stored Procedures</title>
    <!-- Bootstrap CDN-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>

<body>
    <?php
    // $_SERVER is global veriable
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        extract($_POST);
        // Store procequre query
        $sql = "CALL user_data('$name', '$email', '$phone')";
        $data = $db_connect->query($sql);

        if ($db_connect->affected_rows > 0) {
            echo ("Data insert success");
        }
    }
    ?>
    <!-- Form for data input -->
    <h3 style="text-align: center;">MySQL Stored Procedures</h3>
    <center>
        <form action="" method="post">
            Name : <br>
            <input type="text" name="name"><br> </br>
            Email : <br>
            <input type="text" name="email"><br> </br>
            Phone : <br>
            <input type="text" name="phone"><br> </br>
            <input type="submit" name="submit" value="Get Procedure">
        </form>
    </center>
</body>

</html>