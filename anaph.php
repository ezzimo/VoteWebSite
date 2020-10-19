<?php
require_once "pdo.php";


$stmt = $pdo2->query("SELECT picture_id, picture_link FROM Pictures");
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<html>
<head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, intial-scale=1.0"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
<title>Aji_Nfahmou</title>
<style></style></head><body>
  <div class="container main">
        <h1>#Aji_Nfahmou</h1>
        <div class="img-box">
    <?php
    foreach ( $rows as $row ) {
      $img_id = $row['picture_id'];
      $img_src = $row['picture_link'];
      echo ("<div class= \"img-block\">");
      echo ("<img src=".$img_src." alt = ".$img_id." width=\"400\" height=\"260\" />\n");
      echo ("</div>");

      }
?>
</div>
</div>
  <div class="container main">
<p>Add A New User</p>
<form method="post">
<p>Name:
<input type="text" name="name" size="40"></p>
<p>Email:
<input type="text" name="email"></p>
<p>Password:
<input type="password" name="password"></p>
<p><input type="submit" value="Add New"/></p>
</form>
</div>
</body>
