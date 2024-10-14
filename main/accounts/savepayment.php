<?php
session_start();
include('connect.php');
$a = $_POST['date'];
$b = $_POST['type'];
$c = $_POST['due_date'];
$d = $_POST['name'];
$g = $_POST['pay'];
$n = $_POST['number'];

// query
$sql = "INSERT INTO receives (date,type,pay,number,due_date,name) VALUES (:a,:b,:g,:n,:c,:d)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':g'=>$g,':n'=>$n,':c'=>$c,':d'=>$d));
header("location: supplier.php");


?>