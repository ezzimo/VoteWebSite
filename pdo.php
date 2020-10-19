<?php
$pdo2 = new PDO('mysql:host=localhost;port=3307;dbname=Anaph',
         'root', 'Linux123');
$pdo2->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
