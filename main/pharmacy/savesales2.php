<?php
session_start();
include('connect.php');
$id = $_POST['patient_id'];
$a = $_POST['invoice'];
$b = $_POST['cashier'];
$c = $_POST['date'];
$j = $_POST['number'];
$k = $_POST['cost'];
$x = $_POST['shift'];
$e = $_POST['amount'];
$w = $_POST['transdep'];
$y = $_POST['insurance_id'];
$scheme = $_POST['scheme'];
$d = $_POST['department'];
$patype = $_POST['patype'];
$z = $_POST['use_type'];

$sql = "UPDATE quee 
        SET department=?
		WHERE patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($d,$id));


$sql = "INSERT INTO sales (invoice_number,cashier,date,cost,amount,scheme,number,patient_id,transdep,insurance_id,patype,use_type,shift) VALUES (:a,:b,:c,:k,:e,:f,:j,:h,:w,:y,:p,:z,:x)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':k'=>$k,':e'=>$e,':f'=>$scheme,':j'=>$j,':h'=>$id,':w'=>$w,':y'=>$y,':p'=>$patype,':z'=>$z,':x'=>$x));
header("location: receipt.php?invoice=$a");

// query



?>