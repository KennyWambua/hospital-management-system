<?php
session_start();
include('../connect.php');
$a = $_POST['invoice'];
$b = $_POST['product'];
$c = $_POST['qty'];
$w = $_POST['patient_id'];


$result = $db->prepare("SELECT * FROM products WHERE product_name= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$asasa=$_POST['price'];
$asasb=$row['cost'];



$name=$row['product_name'];
}

//edit qty
$sql = "UPDATE products 
        SET qty=qty-?
		WHERE product_name=?";
$q = $db->prepare($sql);
$q->execute(array($c,$b));
$fffffff=$asasa-$discount;
$abcd= $asasa-$asasb;
$j=$abcd*$c;
$h=$asasb*$c;
$date = date('d/m/Y');
$d=$fffffff*$c;
// query
$sql = "INSERT INTO credit_orders (invoice,product,qty,amount,name,cost,price,profit,date,patient_id) VALUES (:a,:b,:c,:d,:e,:h,:f,:j,:t,:w)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':h'=>$h,':f'=>$asasa,':j'=>$j,':t'=>$date,':w'=>$w));
header("location: nurse_orders.php?patient_id=$w&invoice=$a");


?>