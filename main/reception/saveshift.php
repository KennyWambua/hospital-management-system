<?php
session_start();
include('connect.php');
$a = $_POST['shift_name'];

$b = $_POST['status'];

date_default_timezone_set('Africa/Nairobi');
$date= date('d-m-Y ',time());

// query
$sql = "INSERT INTO shift (shift_name,status,date) VALUES (:a,:b,:c)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$date));
header("location: shiftview.php");


?>