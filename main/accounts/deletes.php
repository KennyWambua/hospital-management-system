<?php
	include('connect.php');
	$id=$_GET['id'];
	$c=$_GET['invoice'];
	$sdsd=$_GET['dle'];
	$qty=$_GET['qty'];
	$p=$_GET['patient_id'];
	

	$result = $db->prepare("DELETE FROM sales_order WHERE transaction_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	
	header("location: cash_lab.php?id=$sdsd&invoice=$c&patient_id=$p");
?>