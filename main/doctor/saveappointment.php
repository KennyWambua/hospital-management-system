<?php
session_start();
include('connect.php');

$g = $_POST['patient_id'];
$z = $_POST['name'];
$b = $_POST['insurance_id'];
$c = $_POST['doctor'];
$n = $_POST['purpose'];
$k = $_POST['nextvist'];




$sql = "INSERT INTO appointments (patient_id,name,insurance_id,doctor,purpose,nextvist) VALUES (:g,:z,:b,:c,:n,:k)";
$q = $db->prepare($sql);
$q->execute(array(':g'=>$g,':z'=>$z,':b'=>$b,':c'=>$c,':n'=>$n,':k'=>$k));
header("location: patient_file.php?patient_id=$g");
exit();

// query



?>