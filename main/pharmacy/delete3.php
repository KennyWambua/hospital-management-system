<?php
	include('../connect.php');
	$id=$_GET['id'];
	$c=$_GET['invoice'];
	$sdsd=$_GET['dle'];
	$qty=$_GET['qty'];
	$wapak=$_GET['code'];
	//edit qty
	$sql = "UPDATE products 
			SET qty=qty+?
			WHERE product_code=?";
	$q = $db->prepare($sql);
	$q->execute(array($qty,$wapak));

	$result = $db->prepare("DELETE FROM pro_order WHERE transaction_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	
	header("location: drungsdespense.php?id=$sdsd&invoice=$c");
?>