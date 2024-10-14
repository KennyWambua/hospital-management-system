<?php
// configuration
include('connect.php');

// new data
$id = $_POST['patient_id'];

$a = $_POST['medication1'];
$b = $_POST['desc1'];
$c = $_POST['medication2'];
$d = $_POST['desc2'];
$e = $_POST['medication3'];
$f = $_POST['desc3'];
$g = $_POST['medication4'];
$m = $_POST['desc4'];
$n = $_POST['medication5'];
$o = $_POST['desc5'];
$p = $_POST['medication6'];
$u = $_POST['desc6'];
$s = $_POST['medication7'];
$t = $_POST['desc7'];
$w = $_POST['medication8'];
$x = $_POST['desc8'];
$y = $_POST['medication9'];
$z = $_POST['desc9'];
$p = $_POST['medication10'];
$i = $_POST['desc10'];
$j = date('d/m/Y');

// query
$sql = "INSERT INTO nurse_orders (patient_id,medication1,desc1,medication2,desc2,medication3,desc3,medication4,desc4,medication5,desc5,medication6,desc6,medication7,desc7,medication8,desc8,medication9,desc9,medication10,desc10,date) VALUES (:k,:a,:b,:c,:d,:e,:f,:g,:m,:n,:o,:p,:u,:s,:t,:w,:x,:y,:z,:p,:i,:j)";
$q = $db->prepare($sql);
$q->execute(array(':k'=>$id,':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g,':m'=>$m,':n'=>$n,':o'=>$o,':p'=>$p,':u'=>$u,':s'=>$s,':t'=>$t,':w'=>$w,':x'=>$x,':y'=>$y,':z'=>$z,':p'=>$p,':i'=>$i,':j'=>$j));
header("location:patient_file.php?patient_id=$id");

?>