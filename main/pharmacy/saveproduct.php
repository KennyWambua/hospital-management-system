<?php
session_start();
include('../connect.php');

$b = $_POST['name'];
$c = $_POST['cost'];
$y = $_POST['discount'];
$d = $_POST['price'];
$k = $_POST['c_price'];
$z = $_POST['form'];
$g = $_POST['experiy_date'];
$e = $_POST['supplier'];
$f = $_POST['qty'];
$i = $_POST['level'];
 
// query
$sql = "INSERT INTO products (product_name,cost,discount,price,c_price,form,experiy_date,supplier,qty,level) VALUES (:b,:c,:y,:d,:k,:z,:g,:e,:f,:i)";
$q = $db->prepare($sql);

$q->execute(array(':b'=>$b,':c'=>$c,':y'=>$y,':d'=>$d,':k'=>$k,':z'=>$z,':g'=>$g,':e'=>$e,':f'=>$f,':i'=>$i));
header("location: products.php");


?>