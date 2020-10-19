<?php
session_start();
require_once "pdo.php";

if ( isset($_POST['Info']['User Info= ']) && isset($_POST['Info'][" voted "])) {
    $sql = "INSERT INTO Useres (user_first_name, user_seconde_name, phone_number, Adresse, Region)
            VALUES (:user_first_name, :user_seconde_name, :phone_number, :Adresse, :Region);
            INSERT INTO Vote (picture_id, user_id) VALUES  (:ImgId1, (SELECT user_id FROM
             Useres WHERE (user_first_name = :user_first_name AND user_seconde_name = :user_seconde_name)));
            INSERT INTO Vote (picture_id, user_id) VALUES (:ImgId2, (SELECT user_id FROM
             Useres WHERE (user_first_name = :user_first_name AND user_seconde_name = :user_seconde_name)));
            INSERT INTO Vote (picture_id, user_id) VALUES (:ImgId3, (SELECT user_id FROM
             Useres WHERE (user_first_name = :user_first_name AND user_seconde_name = :user_seconde_name)));";
    echo("<pre>\n".$sql."\n</pre>\n");
    $stmt = $pdo2->prepare($sql);
    $stmt->execute(array(
        ':user_first_name'   => $_POST['Info']['User Info= ']['Prenom'],
        ':user_seconde_name' => $_POST['Info']['User Info= ']['Nom'],
        ':phone_number'      => $_POST['Info']['User Info= ']['Telephone'],
        ':Adresse'           => $_POST['Info']['User Info= ']['addresse'],
        ':Region'            => $_POST['Info']['User Info= ']['Region'],
        ':ImgId1'            => $_POST['Info'][" voted "][0],
        ':ImgId2'            => $_POST['Info'][" voted "][1],
        ':ImgId3'            => $_POST['Info'][" voted "][2]));
        header("UserLogin.php");
}
print_r($_POST['Info'][" voted "]);
print_r($_POST['Info']['User Info= '])
 ?>
