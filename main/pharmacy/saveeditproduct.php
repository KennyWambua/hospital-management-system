<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['memi'];
$a = $_POST['code'];
$b = $_POST['name'];
$c = $_POST['cost'];
$d = $_POST['price'];
$m = $_POST['c_price'];
$g = $_POST['experiy_date'];
$e = $_POST['supplier'];

$f = $_POST['qty']+$_POST['new'];

$k = $_POST['level'];
// query
$sql = "UPDATE products 
        SET product_code=?, product_name=?, cost=?, price=?,c_price=?, experiy_date=?,supplier=?, qty=?  ,level=? 
		WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$m,$g,$e,$f,$k,$id));
header("location: products.php");

?>