<?php
session_start();
include('connect.php');
$a = $_POST['patient_id'];
$b = $_POST['d1'];
$c = $_POST['d2'];
$d = $_POST['lessnhif'];

$y= $_POST['invo'];
$k = date('Y-m-d');

 
// query
$sql = "INSERT INTO invoice (patient_id,date) VALUES (:a,:k)";
$q = $db->prepare($sql);

$q->execute(array(':a'=>$a,':k'=>$k));
header("location: invoice1.php?patient_id=$a&lessnhif=$d&d1=$b&d2=$c&days=$y");


?>