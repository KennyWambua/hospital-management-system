<?php
session_start();
include('connect.php');
$a = $_POST['patient_id'];
$z = $_POST['name'];
$b = $_POST['insurance_id'];
$c = $_POST['doctor'];

$k = $_POST['department'];
$e = $_POST['status'];

$d = $_POST['date'];

$t = $_POST['test1'];
$w = $_POST['test2'];
$y = $_POST['test3'];
date_default_timezone_set('Africa/Nairobi');
$g= date('Y-m-d H:i:s');

$sql = "INSERT INTO prescription (patient_id,patient_name,insurance_id,date,test1,test2,test3,time) VALUES (:a,:z,:b,:d,:t,:w,:y,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':z'=>$z,':b'=>$b,':d'=>$d,':t'=>$t,':w'=>$w,':y'=>$y,':g'=>$g));

$sql = "INSERT INTO quee (patient_id,name,insurance_id,doctor,department,status,date) VALUES (:a,:z,:b,:c,:k,:e,:d)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':z'=>$z,':b'=>$b,':c'=>$c,':k'=>$k,':e'=>$e,':d'=>$d));
header("location: patients.php?patient_id=$a");
exit();

// query



?>