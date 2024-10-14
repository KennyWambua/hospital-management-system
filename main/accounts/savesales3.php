<?php
session_start();
include('connect.php');
$a = $_POST['invoice'];
$g = $_POST['patient_id'];
$z = $_POST['transdep'];
$b = $_POST['cashier'];
$c = $_POST['date'];

$k = $_POST['cost'];
$e = $_POST['amount'];
$y= $_POST['insurance_id'];
$number = $_POST['number'];
$session = $_POST['session'];
$w = $_POST['shift'];
date_default_timezone_set('Africa/Nairobi');
$date= date('d-m-Y h:i:s A',time());


$sql = "INSERT INTO sales (invoice_number,transdep,insurance_id,cashier,date,type,cost,amount,due_date,number,patient_id,session,shift,timez) VALUES (:a,:z,:y,:b,:c,:d,:k,:e,:f,:u,:g,:s,:w,:n)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':z'=>$z,':y'=>$y,':b'=>$b,':c'=>$c,':d'=>$d,':k'=>$k,':e'=>$e,':f'=>$f,':u'=>$number,':g'=>$g,':s'=>$session,':w'=>$w,':n'=>$date));
header("location: receipt.php?invoice=$a");
exit();

// query



?>