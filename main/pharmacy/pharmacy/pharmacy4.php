<?php
session_start();
include('../connect.php');
$a = $_POST['invoice'];

$b = $_POST['product'];
$c = $_POST['qty'];
$p = $_POST['transdep'];

$z = $_POST['patient_id'];
$discount = $_POST['discount'];
$result = $db->prepare("SELECT * FROM products WHERE product_name= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$asasb=$row['cost'];
$asasa=$row['price'];

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
$date = date('d/m/Y');
$j=$abcd*$c;
$h=$asasb*$c;
$d=$fffffff*$c;
// query
$sql = "INSERT INTO sales_order (invoice,transdep,product,qty,amount,name,cost,price,discount,profit,patient_id,date) VALUES (:a,:p,:b,:c,:d,:e,:h,:f,:g,:j,:z,:t)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':p'=>$p,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':h'=>$h,':f'=>$asasa,':g'=>$discount,':j'=>$j,':z'=>$z,':t'=>$date));
header("location: cash_sales.php?id=$w&patient_id=$z&invoice=$a");


?>