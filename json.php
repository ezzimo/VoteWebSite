<?php
require_once "pdo.php";
//sleep(3);

//selction des données du tableau Pictures
$stmt = $pdo2->query("SELECT picture_id, picture_link FROM Pictures");
// affecté les données au variable
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
// encodé les données en format JSON
//Même travail pour le tableau Users
$usr = $pdo2->query("SELECT user_id, user_first_name, user_seconde_name, phone_number, Adresse, Region FROM Useres");
$human = $usr->fetchAll(PDO::FETCH_ASSOC);
$Data = array('PicturesData' => $rows, 'UsersData' => $human);
echo (json_encode($Data, JSON_PRETTY_PRINT));
 ?>
