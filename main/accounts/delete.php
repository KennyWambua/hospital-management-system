<?php
	include('connect.php');
	$id=$_GET['id'];
	$c=$_GET['invoice'];
	$sdsd=$_GET['dle'];
	$w=$_GET['patient_id'];
	$qty=$_GET['qty'];
	$wapak=$_GET['code'];
	$z = $_POST['prescription_id'];
	//edit qty
	$sql = "UPDATE products 
			SET qty=qty+?
			WHERE product_name=?";
	$q = $db->prepare($sql);
	$q->execute(array($qty,$wapak));

	$result = $db->prepare("DELETE FROM sales_order WHERE transaction_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	
	header("location: location: cash_sales.php?patient_id=$w&invoice=$a&prescription_id=$z");
?>