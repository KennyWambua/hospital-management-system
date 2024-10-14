<?php
session_start();
include('connect.php');
$a = $_POST['invoice'];
$b = $_POST['nursing_type'];
$c = $_POST['qty'];
$z = $_POST['patient_id'];

$n= $_POST['cashier'];
$g= date('Y-m-d');
$result = $db->prepare("SELECT * FROM services WHERE product_name= :userid");
$result->bindParam(':userid', $b);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){

$w=$row['price'];
$name=$row['product_name'];
$h=$w*$c;
}

//edit qty

// query
$sql = "INSERT INTO nursing (invoice,patient_id,nursing_type,qty,price,date,amount,cashier) VALUES (:a,:z,:b,:c,:w,:g,:h,:n)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':z'=>$z,':b'=>$b,':c'=>$c,':w'=>$w,':g'=>$g,'h'=>$h,'n'=>$n));
header("location: operations.php?id=$w&patient_id=$z&invoice=$a&cashier=$n");


?>