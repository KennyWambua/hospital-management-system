<?php
session_start();
include('connect.php');

$b = $_POST['name'];
$c = $_POST['address'];
$y = $_POST['phone'];
$d = $_POST['insurance_id'];
$k = $_POST['in_number'];
$z = $_POST['sex'];
$g = $_POST['height'] ?? 0;
$e = $_POST['weight'] ?? 0;
$f = $_POST['dob'];
$i = $_POST['fee'];
$m = $_POST['copay'];
$n = $_POST['discount'];
$w = date('Y-m-d');

$dob = new DateTime($f);
$today = new DateTime();
$ageInterval = $today->diff($dob);
$years = $ageInterval->y;
$months = $ageInterval->m;

$age = $years . ' years ' . $months . ' months';
// query
$sql = "INSERT INTO patient (name,address,phone,insurance_id,in_number,sex,height,weight,dob,fee,date,copay,discount, age) VALUES (:b,:c,:y,:d,:k,:z,:g,:e,:f,:i,:w,:m,:n,:age)";
$q = $db->prepare($sql);


$q->execute(array(':b'=>$b,':c'=>$c,':y'=>$y,':d'=>$d,':k'=>$k,':z'=>$z,':g'=>$g,':e'=>$e,':f'=>$f,':i'=>$i,':w'=>$w,':m'=>$m,':n'=>$n, ':age'=>$age));
// $q->execute(array(':b'=>$b,':c'=>$c,':y'=>$y,':d'=>$d,':k'=>$k,':z'=>$z,':g'=>$g,':e'=>$e,':f'=>$f,':i'=>$i,':w'=>$w));
;
header("location: patientss.php");


?>
