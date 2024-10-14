<?php
	include('connect.php');
	$id=$_GET['id'];
	$c=$_GET['patient_id'];
	$d=$_GET['prescription_id'];
	$z=$_GET['laboratorist_id'];
	$w=$_GET['insurance_id'];
	$p=$_GET['patient_id'];
	//edit qty
	

	$result = $db->prepare("DELETE FROM diagnosis_report WHERE diagnosis_report_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
	
	header("location: add_result.php?patient_id=$c&prescription_id=$d&cashier=$z&insurance_id=$w&patient_name=$p");
?>