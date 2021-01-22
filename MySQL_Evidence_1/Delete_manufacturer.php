<?php
//server connection
$db_connect = new mysqli("localhost", "root", "", "company");

// isset() function checks whether a variable is set, which means that it has to be declared and is not NULL. 
if (isset($_POST['delete'])) {
  $id = $_POST['name'];
  // mysql query
  $sql_selectID = "DELETE FROM manufacturer WHERE id = '$id'";
  if ($db_connect->query($sql_selectID)) {
    $msg = "Successfully Deleted";
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Delete Manufacturer</title>
</head>

<body>
  <?php if (isset($msg)) {
    echo "<p>" . $msg . "</p>";
  } ?>
  <!-- Form -->
  <center>
    <section style="background: gray; width:30%; padding:10px 10px 50px 10px" >
      <form action="" method="post">
        <label><b>Select Manufacturer Name : </b></label></br> </br>
        <select name="name" id="sel">
          <option>Select</option>
          <?php
          // mysql query
          $sql = "SELECT * FROM manufacturer";
          $data  = $db_connect->query($sql);
          while ($row = $data->fetch_assoc()) { ?>
            <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
          <?php }; ?>
        </select>
        <input type="submit" value="Delete" name="delete">
      </form>
    </section>
  </center>
</body>
</html>