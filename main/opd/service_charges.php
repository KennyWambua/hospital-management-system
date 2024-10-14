<?php
session_start();
include('connect.php');
$a = $_POST['invoice'];
$id = $_POST['patient_id'];
$b = $_POST['product'];
$x = $_POST['status'];
$c = $_POST['qty'];
$w = $_POST['pt'];
$discount = $_POST['discount'];
$y = $_POST['insurance_id'];
$z = $_POST['transdep'];
$result = $db->prepare("SELECT * FROM services WHERE product_name= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$asasb=$row['cost'];
$f=$row['price'];
$asasa=$f;

$name=$row['product_name'];
}

//edit qty

$sql = "UPDATE quee
        SET status=?
		WHERE patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($x,$id));

$fffffff=$asasa-$discount;
$abcd= $asasa-$asasb;
$j=$abcd*$c;
$h=$asasb*$c;
$d=$fffffff*$c;
// query
$sql = "INSERT INTO sales_order (invoice,product,qty,amount,name,cost,price,discount,profit,transdep,insurance_id) VALUES (:a,:b,:c,:d,:e,:h,:f,:g,:j,:y,:z)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':h'=>$h,':f'=>$f,':g'=>$discount,':j'=>$j,':z'=>$z,':y'=>$y));
header("location: select_department2.php?id=$w&invoice=$a&insurance_id=$y&transdep=$z&patient_id=$id");


?>