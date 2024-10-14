<?php
session_start();
include('../connect.php');
$a = $_POST['invoice'];
$b = $_POST['cashier'];
$c = $_POST['date'];
$d = $_POST['ptype'];
$k = $_POST['cost'];
$e = $_POST['amount'];
$anumber = $_POST['anumber'];


if($d=='credit') {
$f = $_POST['due'];
$sql = "INSERT INTO salescredit (invoice_number,cashier,date,type,cost,amount,due_date,anumber) VALUES (:a,:b,:c,:d,:k,:e,:f,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':k'=>$k,':e'=>$e,':f'=>$f,':g'=>$anumber));
header("location: preview3.php?invoice=$a");
exit();
}
if($d=='cash') {
$f = $_POST['cash'];
$sql = "INSERT INTO salescredit (invoice_number,cashier,date,type,cost,amount,due_date,anumber) VALUES (:a,:b,:c,:d,:k,:e,:f,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':k'=>$k,':e'=>$e,':f'=>$f,':g'=>$anumber));
header("location: preview3.php?invoice=$a");
exit();
}
// query



?>