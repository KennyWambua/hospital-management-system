<?php
	include('connect.php');
	$id=$_GET['patient_id'];
	$c=$_GET['invoice'];
	$sdsd=$_GET['dle'];
	$qty=$_GET['qty'];
	

	$result = $db->prepare("DELETE FROM patient WHERE patient_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	
	header("location: patientsz.php");
?>