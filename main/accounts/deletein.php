<?php
	include('connect.php');
	$id=$_GET['invoice_no'];
	$d1=$_GET['d1'];
	$d2=$_GET['d2'];
	
	

	$result = $db->prepare("DELETE FROM invoice WHERE invoice_no= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	
	header("location: viewinvoices.php?id=$id&d1=$d1&d2=$d2");
?>