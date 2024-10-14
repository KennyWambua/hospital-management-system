<?php
session_start();
include('connect.php');
$a = $_POST['patient_id'];
$b = $_POST['name'];
$c = $_POST['total'];
$d = $_POST['date'];


 
// query
$sql = "INSERT INTO bills (patient_id,name,total,date) VALUES (:a,:b,:c,:d)";
$q = $db->prepare($sql);

$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d));
header("location: invoice.php?patient_id=$a&lessnhif=$d&d1=$b&d2=$c&days=$y");


?>