<?php
	include('connect.php');
	$id=$_GET['id'];
	$c=$_GET['invoice'];
	$sdsd=$_GET['dle'];
	$qty=$_GET['qty'];
	$wapak=$_GET['code'];
	
	//edit qty
	$sql = "UPDATE products 
			SET qty=qty-?
			WHERE product_name=?";
	$q = $db->prepare($sql);
	$q->execute(array($qty,$wapak));

	$result = $db->prepare("DELETE FROM receivings WHERE transaction_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	
	header("location: receiving.php?id=$sdsd&transdep=PHARMACY&invoice=$c");
?>