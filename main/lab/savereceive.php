<?php
session_start();
include('connect.php');
$a = $_POST['invoice'];
$b = $_POST['cashier'];
$c = $_POST['date'];
$d = $_POST['ptype'];
$e = $_POST['amount'];
$h = $_POST['receptno'];

$cname = $_POST['supplier'];


$sql = "INSERT INTO receives (invoice_number,cashier,date,type,amount,name,receptno) VALUES (:a,:b,:c,:d,:e,:g,:h)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':g'=>$cname,':h'=>$h));
header("location: ../index.php");

// query



?>