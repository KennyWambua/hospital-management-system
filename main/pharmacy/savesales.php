<?php
session_start();
include('../connect.php');
$a = $_POST['invoice'];
$b = $_POST['cashier'];
$c = $_POST['date'];
$d = $_POST['ptype'];
$k = $_POST['cost'];
$e = $_POST['amount'];
$cname = $_POST['name'];
$scheme = $_POST['scheme'];
$number = $_POST['number'];
$anumber = $_POST['anumber'];
$adate = $_POST['adate'];
$ddate = $_POST['ddate'];
$nhif = $_POST['nhif'];
$bpayable = $_POST['amount']-$_POST['nhif'];

if($d=='credit') {
$f = $_POST['due'];
$sql = "INSERT INTO salescredit(invoice_number,cashier,date,type,cost,amount,due_date,name,scheme,number,anumber,adate,ddate,nhif,bpayable) VALUES (:a,:b,:c,:d,:k,:e,:f,:g,:h,:i,:j,:k,:l,:w,:p)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':k'=>$k,':e'=>$e,':f'=>$f,':g'=>$cname,':h'=>$scheme,':i'=>$number,':j'=>$anumber,':k'=>$adate,':l'=>$ddate,':w'=>$nhif,':p'=>$bpayable));
header("location: preview.php?invoice=$a");
exit();
}
if($d=='cash') {
$f = $_POST['cash'];
$sql = "INSERT INTO salescredit (invoice_number,cashier,date,type,cost,amount,due_date,name) VALUES (:a,:b,:c,:d,:k,:e,:f,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':k'=>$k,':e'=>$e,':f'=>$f,':g'=>$cname));
header("location: preview.php?invoice=$a");
exit();
}
// query



?>