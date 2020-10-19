<?php
require_once "pdo.php";
$SuccessMessage = "المرجو تسجيل الدخول";
if ( isset($_POST['Prenom']) && isset($_POST['password'])  ) {
    $sql = "SELECT Nom FROM Admins
        WHERE Prenom = :Pr AND Mot_de_passe = :pw";
    $stmt = $pdo2->prepare($sql);
    $stmt->execute(array(
        ':Pr' => $_POST['Prenom'],
        ':pw' => $_POST['password']));
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
   if ( $row === FALSE ) {
     $SuccessMessage = "المرجو تصحيح المعلومات";
   } else {
      $SuccessMessage = "تم تسجيل الدخول بنجاح";
   }
}
?>
<p><bdo dir="rtl"><h2 style="color:green;"><?php  echo ($SuccessMessage);  ?></h2></bdo></bdo> </p>
<form method="post">
<p>Prenom:
<input type="text" size="40" name="Prenom"></p>
<p>Password:
<input type="password" size="40" name="password"></p>
<p><input type="submit" value="Login"/>
<a href="<?php echo($_SERVER['PHP_SELF']);?>">Refresh</a></p>
</form>
