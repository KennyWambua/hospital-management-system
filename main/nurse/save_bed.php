<?php
session_start();
include('connect.php');
$m = $_POST['bed_number'];
$b = $_POST['type'];
$y = $_POST['status'];
$d = $_POST['description'];
$k = $_POST['price'];

// query
$sql = "INSERT INTO bed (bed_number,type,status,description,price) VALUES (:m,:b,:y,:d,:k)";
$q = $db->prepare($sql);


$q->execute(array(':m'=>$m,':b'=>$b,':y'=>$y,':d'=>$d,':k'=>$k));
header("location: view_beds.php");


?>