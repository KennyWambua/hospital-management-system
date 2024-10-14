<?php
session_start();
include('connect.php');
$u = $_POST['patient_id'];
$a = $_POST['invoice'];
$z = $_POST['transdep'];
$b = $_POST['cashier'];
$c = $_POST['date'];
$h = $_POST['insurance_id'];
$k = $_POST['cost'];
$e = $_POST['amount'];

$number = $_POST['number'];
$session = $_POST['session'];

$sql = "UPDATE quee 
        SET status=?
		WHERE patient_id=?";

$sql = "INSERT INTO sales (invoice_number,transdep,cashier,date,type,cost,amount,due_date,patient_id,session,insurance_id) VALUES (:a,:z,:b,:c,:d,:k,:e,:f,:u,:s,:h)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':z'=>$z,':b'=>$b,':c'=>$c,':d'=>$d,':k'=>$k,':e'=>$e,':f'=>$f,':u'=>$u,':s'=>$session,':h'=>$h));
header("location: receipt.php?invoice=$a");
exit();

// query



?>