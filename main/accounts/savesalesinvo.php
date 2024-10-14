<?php
session_start();
include('connect.php');


   $date1 = new DateTime($_POST['amount3']);
   $date2 = new DateTime($_POST['amount4']);
   $difference = $date1->diff($date2);
   echo " . $difference->days  . ";



$a = $_POST['invoice'];
$b = $_POST['cashier'];
$c = $_POST['date'];
$d = $_POST['ptype'];
$h = $_POST['t_type'];
$n = 0;
$e = $_POST['amount'];

$y = $_POST['amount1'];
$m = $_POST['amount2'];
$r = $_POST['amount3'];
$p = $_POST['amount4'];
$l = $_POST['amount5'];
$i = $_POST['amount6'];


$x =  "$difference->days";
$w = $_POST['cash'];
$v = 'TOTAL';
$cname = $_POST['cname'];
if($d=='cash') {
$f = $_POST['due'];
$sql = "INSERT INTO invoice (invoice_number,cashier,date,type,t_type,amount,profit,due_date,d_due,name,tax) VALUES (:a,:b,:c,:d,:h,:e,:z,:f,:w,:g,:x)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':h'=>$h,':e'=>$e,':z'=>$z,':f'=>$f,':w'=>$w,':g'=>$cname,':x'=>$x));
header("location: preview.php?invoice=$a");
exit();
}
if($d=='credit') {
$f = $_POST['credit'];
$sql = "INSERT INTO invoice (invoice_number,cashier,date,type,t_type,t_type1,amount1,amount2,amount3,amount4,amount5,amount6,amount,due_date,name,tax) VALUES (:a,:b,:c,:d,:h,:n,:y,:m,:r,:p,:l,:i,:e,:f,:g,:x)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':h'=>$h,':n'=>$n,':y'=>$y,':m'=>$m,':r'=>$r,':p'=>$p,':l'=>$l,':i'=>$i,':e'=>$e,':f'=>$f,':g'=>$cname,':x'=>$x));



header("location: invoice2.php?invoice=$a");
exit();
}
// query



?>