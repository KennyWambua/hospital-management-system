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
$f = $_POST['age'];
$i = $_POST['fee'];
$m = $_POST['copay'];
$n = $_POST['discount'];
$w = date('Y-m-d');
// query
$sql = "INSERT INTO patient (name,address,phone,insurance_id,in_number,sex,height,weight,age,fee,date,copay,discount) VALUES (:b,:c,:y,:d,:k,:z,:g,:e,:f,:i,:w,:m,:n)";
$q = $db->prepare($sql);


$q->execute(array(':b'=>$b,':c'=>$c,':y'=>$y,':d'=>$d,':k'=>$k,':z'=>$z,':g'=>$g,':e'=>$e,':f'=>$f,':i'=>$i,':w'=>$w,':m'=>$m,':n'=>$n));
// $q->execute(array(':b'=>$b,':c'=>$c,':y'=>$y,':d'=>$d,':k'=>$k,':z'=>$z,':g'=>$g,':e'=>$e,':f'=>$f,':i'=>$i,':w'=>$w));
;
header("location: patientss.php");


?>
