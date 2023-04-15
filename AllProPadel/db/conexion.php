<?php
/* Conexion a la BBDD */
$servername = "localhost";
$dbname = "db_emails";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$servername; dbname=$dbname", $username, $password);
    $conn -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "<p id='loginConexion' style='color:green;'>@ $dbname</p>";
}
catch(PDOException $e){
    echo "<h1>Conexion a la BBDD <b> $dbname </b> fallida</h1>".$e->getMessage();
}


?>