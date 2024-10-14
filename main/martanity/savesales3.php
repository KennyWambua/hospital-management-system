<?php
session_start();
include('../connect.php');
$a = $_POST['invoice'];
$z = $_POST['transdep'];
$b = $_POST['cashier'];
$c = $_POST['date'];

$k = $_POST['cost'];
$e = $_POST['amount'];

$number = $_POST['number'];
$session = $_POST['session'];



$sql = "INSERT INTO salesr (invoice_number,transdep,cashier,date,type,cost,amount,due_date,anumber,number,session) VALUES (:a,:z,:b,:c,:d,:k,:e,:f,:g,:u,:s)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':z'=>$z,':b'=>$b,':c'=>$c,':d'=>$d,':k'=>$k,':e'=>$e,':f'=>$f,':g'=>$anumber,':u'=>$number,':s'=>$session));
header("location: receipt.php?invoice=$a");
exit();

// query



?>