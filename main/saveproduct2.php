<?php
session_start();
include('../connect.php');

$serviceName = $_POST['serviceName'];
$productCode = $_POST['productCode'];
$department = $_POST['department'];
$price = $_POST['price'];
$creditPrice = $_POST['creditPrice'];
 
// query
$sql = "INSERT INTO services (product_name,product_code,department,price,c_price) VALUES (:a,:b,:c,:d,:e)";
$q = $db->prepare($sql);

$q->execute(array(':a'=>$serviceName,':b'=>$productCode,':c'=>$department,':d'=>$price,':e'=>$creditPrice));
header("location: services.php");


?>