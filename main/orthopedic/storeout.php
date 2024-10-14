<?php
session_start();
include('connect.php');
$a = $_POST['invoice'];
$z = $_POST['transdep'];
$b = $_POST['product'];
$c = $_POST['qty'];
$w = $_POST['pt'];
$u = $_POST['user'];
$discount = $_POST['discount'];
$result = $db->prepare("SELECT * FROM stock WHERE product_id= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$asasb=$row['cost'];
$asasa=$row['price'];

$name=$row['product_name'];
}

//edit qty

$fffffff=$asasa-$discount;
$abcd= $asasa-$asasb;
$j=$abcd*$c;
$h=$asasb*$c;
$d=$fffffff*$c;
$i= date('d/m/Y');
// query
$sql = "INSERT INTO request_order (invoice,transdep,product,qty,amount,name,cost,price,discount,profit,date,user) VALUES (:a,:z,:b,:c,:d,:e,:h,:f,:g,:j,:i,:u)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':z'=>$z,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':h'=>$h,':f'=>$asasa,':g'=>$discount,':j'=>$j,':i'=>$i,':u'=>$u));
header("location: storerequest.php?id=$w&transdep=$z&invoice=$a&user=$u");


?>