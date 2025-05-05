<?php
 $host = 'dpg-d0cfcj6uk2gs738mamd0-a';          
$db   = 'database_3qhp';      
$user = 'database_3qhp_user';      
$pass = 'XDlQhcomymh3Ppq0Mpmx0ShfG1rVg9CF';      
$charset = 'utf8mb4';

$dsn = "pgsql:host=$host;port=5432;dbname=$db";

$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,  
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,        
    PDO::ATTR_EMULATE_PREPARES   => false,                   
];

try {
    $conn = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
    throw new \PDOException($e->getMessage(), (int)$e->getCode());
}

?>
