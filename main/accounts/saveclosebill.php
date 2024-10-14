<?php
session_start();
include('connect.php');

$g = $_POST['patient_id'];

$k = 'BILLED';




$sql = "UPDATE credit_orders
        SET bill=?
		WHERE patient_id=? ";
$q = $db->prepare($sql);
$sql = "UPDATE sales_order
        SET bill=?
		WHERE patient_id=? ";
$q = $db->prepare($sql);
$q->execute(array($k,$g));
$sql = "UPDATE diagnosis_report
        SET bill=?
		WHERE patient_id=? ";
$q = $db->prepare($sql);
$q->execute(array($k,$g));
header("location: ../index.php");
exit();

// query



?>
