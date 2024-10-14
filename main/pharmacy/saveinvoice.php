<?php
session_start();
include('connect.php');

$b = $_POST['patient_id'];
$c = $_POST['d1'];
$y = $_POST['d2'];
$d = $_POST['lessnhif'];
$k = date('d M Y');

 
// query
$sql = "INSERT INTO INVOICE (patient_id,d1,d2,lessnhif,date) VALUES (:b,:c,:y,:d,:k)";
$q = $db->prepare($sql);

$q->execute(array(':b'=>$b,':c'=>$c,':y'=>$y,':d'=>$d,':k'=>$k));
header("location: invoice.php?patient_id=$b&lessnhif=$d&d1=$c&d2=$y");


?>