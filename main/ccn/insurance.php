<?php
session_start();
include('connect.php');
$a = $_POST['invoice'];
$w = $_POST['patient_id'];
$b = $_POST['product'];
$c = $_POST['qty'];
$x = date('d/m/Y');

$discount = $_POST['discount'];
$result = $db->prepare("SELECT * FROM ccn_inventory WHERE product_id= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$asasb=$row['cost'];
$asasa=$row['c_price'];

$name=$row['product_name'];
}

//edit qty
$sql = "UPDATE products 
        SET qty=qty-?
		WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($c,$b));
$fffffff=$asasa-$discount;
$abcd= $asasa-$asasb;

$h=$asasb*$c;
$d=$fffffff*$c;
// query
$sql = "INSERT INTO other_services (invoice,product,qty,amount,name,cost,price,discount,profit,date,patient_id) VALUES (:a,:b,:c,:d,:e,:h,:f,:g,:j,:x,:w)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':h'=>$h,':f'=>$asasa,':g'=>$discount,':j'=>$j,':x'=>$x,':w'=>$w));
header("location: sales.php?invoice=$a&patient_id=$w");


?>