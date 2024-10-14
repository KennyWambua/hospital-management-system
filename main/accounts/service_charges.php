<?php
session_start();
include('connect.php');
$a = $_POST['invoice'];
$f=$_POST['price'];
$b = $_POST['product'];
$c = $_POST['qty'];
$w = $_POST['pt'];
$discount = $_POST['discount'];
$z = $_POST['insurance_id'];
$result = $db->prepare("SELECT * FROM service WHERE product_id= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$asasb=$row['cost'];
$asasa=$f;

$name=$row['product_name'];
}

//edit qty

$sql = "UPDATE service
        SET qty=qty-?
		WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($c,$b));

$fffffff=$asasa-$discount;
$abcd= $asasa-$asasb;
$j=$abcd*$c;
$h=$asasb*$c;
$d=$fffffff*$c;
// query
$sql = "INSERT INTO sales_order (invoice,product,qty,amount,name,cost,price,discount,profit) VALUES (:a,:b,:c,:d,:e,:h,:f,:g,:j)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':h'=>$h,':f'=>$f,':g'=>$discount,':j'=>$j));
header("location: services.php?id=$w&invoice=$a&insurance_id=$z");


?>