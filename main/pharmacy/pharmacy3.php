<?php
session_start();
include('connect.php');
$a = $_POST['invoice'];
$b = $_POST['product'];
$c = $_POST['qty'];
$w = $_POST['patient_id'];
$in = $_POST['scheme'];
$z = $_POST['prescription_id'];
$asasa=$_POST['price'];


if($in=='KENYA POWER'){
$result = $db->prepare("SELECT * FROM products WHERE product_name= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){

$asasb=$row['cost'];

$asasa=$row['c_price'];

$name=$row['product_name'];
}
}
else{

$result = $db->prepare("SELECT * FROM products WHERE product_name= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){

$asasb=$row['cost'];



$name=$row['product_name'];
}
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
$date = date('Y-m-d');
$d=$fffffff*$c;
// query
$sql = "INSERT INTO credit_orders (invoice,product,qty,amount,name,cost,price,profit,date,patient_id) VALUES (:a,:b,:c,:d,:e,:h,:f,:j,:t,:w)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':h'=>$h,':f'=>$asasa,':j'=>$j,':t'=>$date,':w'=>$w));
header("location: credit_sales.php?patient_id=$w&invoice=$a&prescription_id=$z&scheme=$in");


?>