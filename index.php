<?php
  session_start();
  require_once "pdo.php";
  $Vote = "Nouveau";
  $UserListData;
  $usr = $pdo2->query("SELECT user_id, user_first_name, user_seconde_name, phone_number, Adresse, Region FROM Useres");
  $UsersList = $usr->fetchAll(PDO::FETCH_ASSOC);
  if (isset($_POST['Nom']) && isset($_POST['Prenom']) ) {
    foreach ($UsersList as $key => $value) {
      if ($value["user_first_name"] == $_POST['Prenom'] ) {
        if ($value["user_seconde_name"] == $_POST['Nom']) {
          $Vote = "Ancien";
            }
      }}
    if ($Vote == "Ancien") {
      $_SESSION["error"] = " لا يمكن التصويت عدة مرات , سبق لصاحب هذه المعلومات المشاركة!";
      $__SESSION["Login"] = "Fail";
      header('Location: index.php');
      return;
    }  elseif ($Vote == "Nouveau") {
        $_SESSION["Nom"] = $_POST['Nom'];
        $_SESSION["Prenom"] = $_POST['Prenom'];
        $_SESSION["Telephone"] = $_POST['Telephone'];
        $_SESSION["Addresse"] = $_POST['Addresse'];
        $_SESSION["Region"] = $_POST['Region'];
        $_SESSION["Login"] = "success";
        header('Location: VotePage.php');
        return;
      }
  }
 ?>
<html lang="ar" dir="ltr">
  <head>
    <meta charset="utf-8">
    <script type="text/javascript" src="jquery.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <title>الولوج لصفحة التصويت أجي نفهمو</title>
  </head>
  <body>
    <main>
      <div class="header">
        <div class="logoLogin">
          <img src="Aji_Nfahmou/logo.png" id="imgLogo">
        </div>
         </div>
      <bdo dir="rtl">
      <h1 style="font-family: 'Amiri', serif;">
          أهلا بكم في صفحة  <span>أجي نفهمو</span>
        </h1>
    <div class="presentation">
      المرجو التسجيل من أجل التصويت (لا يسمح بالتصويت لأكثر من مرة واحدة)
    </div>
    </bdo>
</main>
    <?php
    if (isset($_SESSION["error"]) ) {
      echo ('<bdo dir="rtl" style="color:red"><p><h3>'.$_SESSION["error"]."</h3></p></bdo>\n");
      unset($_SESSION["error"]);
    }
     ?>
     <form class="Formulaire" action="" method="POST">
       <div class=""><bdo dir="rtl">
         <p><label for = 'Nom'>الإسم العائلي: </label>
         <input type="text" name="Nom" value="" required ></p>
         <p><label for ='Prenom'> الإسم الشخصي: </label>
         <input type="text" name="Prenom" value="" required ></p>
          <p><label for ='Telephone'>الهاتف :</label>
          <input type="text" name="Telephone" value="" pattern="^(?:0|\(?\+212\)?\s?|00212\s?)[1-79](?:[\.\-\s"></p>
          <p><label for ='Region'>الجهة : </label><select name="Region" >
                    <option value= "الجهات" > إختر الجهة:</option>
                    <option value="طنجة تطوان الحسيمة">طنجة تطوان الحسيمة</option>
                    <option value="الشرق">الشرق</option>
                    <option value="فاس مكناس">فاس مكناس</option>
                    <option value="الرباط سلا القنيطرة">الرباط سلا القنيطرة</option>
                    <option value="بني ملال خنيفرة">بني ملال خنيفرة</option>
                    <option value="الدار البيضاء سطات">الدار البيضاء سطات</option>
                    <option value="مراكش آسفي">مراكش آسفي</option>
                    <option value="درعة تافيلالت">درعة تافيلالت</option>
                    <option value="سوس ماسة">سوس ماسة</option>
                    <option value="كلميم واد نون">كلميم واد نون</option>
                    <option value="العيون الساقية الحمراء">العيون الساقية الحمراء</option>
                    <option value="الداخلة وادي الذهب">الداخلة وادي الذهب</option>
                  </select>
 </p>
        </bdo></div>
       <bdo dir="rtl"><p> <input type="submit" name="" value="تسجيل">
       <a href="index.php">إلغاء</a></p></bdo>
     </form>

  </body>
</html>
