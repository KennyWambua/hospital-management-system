<?php
session_start();
include('connect.php');
$m = $_POST['patient_id'];
$b = $_POST['name'];
$c = $_POST['address'];
$y = $_POST['phone'];
$d = $_POST['insurance_id'];
$k = $_POST['in_number'];
$z = $_POST['sex'];
$g = $_POST['height'];
$e = $_POST['weight'];
$f = $_POST['age'];
$i = $_POST['fee'];

 
// query
$sql = "INSERT INTO revists (patient_id,name,address,phone,insurance_id,in_number,sex,height,weight,age,fee,account_opening_timestamp) VALUES (:m,:b,:c,:y,:d,:k,:z,:g,:e,:f,:i,:p)";
$q = $db->prepare($sql);
$p = date('Y-m-d');

$q->execute(array(':m'=>$m,':b'=>$b,':c'=>$c,':y'=>$y,':d'=>$d,':k'=>$k,':z'=>$z,':g'=>$g,':e'=>$e,':f'=>$f,':i'=>$i,':p'=>$p));
header("location: patients.php?patient_id=$m");


?>