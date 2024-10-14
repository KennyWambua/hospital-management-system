<?php
session_start();
include('connect.php');
$a = $_POST['product_name'];

$b = $_POST['price'];

// query
$sql = "INSERT INTO operations (product_name,price) VALUES (:a,:b)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b));
header("location: operationlist.php");


?>