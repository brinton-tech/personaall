<?php
// $server = 'sql104.ezyro.com';
// $db_name = 'ezyro_35396599_laundry';
// $user_name = 'ezyro_35396599';
// $user_password = '2dbfe44a431a1e';

// $conn = new PDO($db_name, $user_name, $user_password);

$db_name = 'mysql:host=localhost;dbname=laundry_db';
$user_name = 'root';
$user_password = '';

$conn = new PDO($db_name, $user_name, $user_password);

?>