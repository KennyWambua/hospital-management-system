<?php
session_start();
include('connect.php');
$a = $_POST['invoice'];
$b = $_POST['product'];
$c = $_POST['qty'];
$m = $_POST['cost'];
$e = $_POST['price'];
$l = $_POST['c_price'];
$f = $_POST['experiy_date'];
$discount = $_POST['discount'];


$result = $db->prepare("SELECT * FROM products WHERE product_id= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
//$asasb=$row['cost'];
//$asasa=$row['price'];
//$asasc=$row['minprice'];
$name=$row['product_name'];
}

//edit qty
$sql = "UPDATE products 
        SET qty=qty+?,experiy_date=?,cost=?,price=?,c_price=?
		WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($c,$f,$m,$e,$l,$b));
$fffffff=$m-$discount;
$abcd= $asasa-$asasb;
$j=$abcd*$c;
$h=$asasb*$c;
$d=$fffffff*$c;
// query
$sql = "INSERT INTO receivings (invoice,product,qty,amount,name,cost,price,c_price,discount,experiy_date) VALUES (:a,:b,:c,:d,:v,:m,:e,:l,:k,:f)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':v'=>$name,':m'=>$m,':e'=>$e,':l'=>$l,':k'=>$discount,':f'=>$f));
header("location: receiving.php?id=$w&invoice=$a");


?>