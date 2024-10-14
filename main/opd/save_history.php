<?php
session_start();
include('connect.php');
$a= $_POST['doctor_id'];
$b = $_POST['patient_id'];
$m = $_POST['insurance_id'];
$c = $_POST['case_history'];
$d = $_POST['date'];




$sql = "INSERT INTO prescription (doctor_id,patient_id,insurance_id,case_history,date) VALUES (:a,:b,:m,:c,:d)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':m'=>$m,':c'=>$c,':d'=>$d));
header("location: patient_file.php?patient_id=$b&insurance_id=$m");
exit();

// query



?>