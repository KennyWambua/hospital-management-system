<?php
session_start();
include('connecth.php');
$a = $_POST['invoice'];

$b = $_POST['product'];
$c = $_POST['qty'];
$name=$_POST['product'];
$asasa=$_POST['price'];
$z = $_POST['patient_id'];
$m = $_POST['prescription_id'];
$discount = $_POST['discount'];
$result = $db->prepare("SELECT * FROM products WHERE product_name= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
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
$date = date('Y-m-d');
$j=$abcd*$c;

$d=$fffffff*$c;
// query
$sql = "INSERT INTO sales_order (invoice,product,qty,amount,name,price,discount,profit,date) VALUES (:a,:b,:c,:d,:e,:f,:g,:j,:t)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':f'=>$asasa,':g'=>$discount,':j'=>$j,':t'=>$date));
header("location: cash_sales.php?id=$w&patient_id=$z&invoice=$a&transdep=$p&prescription_id=$m");


?>