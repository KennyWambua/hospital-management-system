<?php
session_start();
include('connect.php');
$id = $_POST['patient_id'];

$c = $_POST['date'];









$d = $_POST['department'];

$z = $_POST['use_type'];

$sql = "UPDATE quee 
        SET department=?
		WHERE patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($d,$id));


$sql = "INSERT INTO sales (date,patient_id,use_type) VALUES (:c,:e,:z)";
$q = $db->prepare($sql);
$q->execute(array(':c'=>$c,':e'=>$id,':z'=>$z));
header("location: previewcredit.php?invoice=$a");

// query



?>