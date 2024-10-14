<?php
session_start();
include('connect.php');
$a = $_POST['invoice'];
$z = $_POST['transdep'];
$b = $_POST['product'];
$c = $_POST['qty'];
$w = $_POST['pt'];
$k = $_POST['date'];

$discount = $_POST['discount'];
$result = $db->prepare("SELECT * FROM products WHERE product_id= :userid");
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
$j=$abcd*$c;
$h=$asasb*$c;
$d=$fffffff*$c;
// query
$sql = "INSERT INTO sales_order (invoice,transdep,product,qty,amount,name,cost,price,discount,profit,date) VALUES (:a,:z,:b,:c,:d,:e,:h,:f,:g,:j,:k)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':z'=>$z,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':h'=>$h,':f'=>$asasa,':g'=>$discount,':j'=>$j,':k'=>$k));
header("location: cash_salesd.php?id=$w&transdep=$z&invoice=$a");


?>