<?php
session_start();
include('../connect.php');
$a = $_POST['exp_name'];
$b = $_POST['exp_type'];
$c = $_POST['quantity'];
$d = $_POST['cost'];
$e = $_POST['date'];
// query
$sql = "INSERT INTO expenses (exp_name,exp_type,quantity,cost,date) VALUES (:a,:b,:c,:d,:e)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e));
header("location: index.php");


?>