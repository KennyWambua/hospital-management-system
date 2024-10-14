<?php
session_start();
include('connect.php');

$b = $_POST['name'];

$d = $_POST['price'];
$k = $_POST['c_price'];
$z = $_POST['form'];

$f = $_POST['qty'];
$i = $_POST['level'];
 
// query
$sql = "INSERT INTO ccn_inventory (product_name,price,c_price,form,qty,level) VALUES (:b,:d,:k,:z,:f,:i)";
$q = $db->prepare($sql);

$q->execute(array(':b'=>$b,':d'=>$d,':k'=>$k,':z'=>$z,':f'=>$f,':i'=>$i));
header("location: services.php");


?>