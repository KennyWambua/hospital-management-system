<?php
session_start();
include('connect.php');
$a = $_POST['records'];
$b = $_POST['lab'];
$c = $_POST['pharmacy'];
$d = $_POST['x_ray'];
$p = $_POST['physio'];
$t = $_POST['orthopedic'];
$f = $_POST['theatre'];
$g = $_POST['inpatient'];
$h = $_POST['dental'];
$i = $_POST['total'];
$s = $_POST['scheme'];
$e = date('d/m/Y');

 
// query
$sql = "INSERT INTO insurance_collection(scheme,date,records,lab,pharmacy,x_ray,physio,orthopedic,theatre,inpatient,dental,total) VALUES (:s,:e,:a,:b,:c,:d,:p,:t,:f,:g,:h,:i)";
$q = $db->prepare($sql);

$q->execute(array(':s'=>$s,':e'=>$e,':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':p'=>$p,':t'=>$t,':f'=>$f,':g'=>$g,':h'=>$h,':i'=>$i));
header("location: periodreport.php");


?>