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
	

	$result = $db->prepare("DELETE FROM sales WHERE transaction_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	
	header("location: location: collection.php?d1=0&d2=0&shift=0");
?>