<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['memi'];
$a = $_POST['qty'];
$b = $_POST['price'];
$c = $_POST['price']*$_POST['qty'];
$w = $_POST['pt'];
$a = $_POST['invoice'];

  
// query
$sql = "UPDATE sales_order 
        SET qty=?, price=?, amount=? 
		WHERE invoice=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$id));

header("location: sales_credit.php?id=credit&invoice=$a");

?>