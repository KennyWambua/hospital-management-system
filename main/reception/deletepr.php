<?php
	include('connect.php');
	$id=$_GET['prescription_id'];
	$c=$_GET['invoice'];
	$sdsd=$_GET['dle'];
	$qty=$_GET['qty'];
	

	$result = $db->prepare("DELETE FROM prescription WHERE prescription_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	
	header("location: ../index.php");
?>