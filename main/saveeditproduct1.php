<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['memi'];
$a = $_POST['code'];
$b = $_POST['name'];
$c = $_POST['price'];
$d = $_POST['c_price'];



// query
$sql = "UPDATE services
        SET product_code=?, product_name=?, price=?,c_price=? 
		WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$id));
header("location: services.php");

?>