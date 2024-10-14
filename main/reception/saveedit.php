<?php
session_start();
include('connect.php');

$g = $_POST['prescription_id'];

$k = $_POST['date'];


$sql = "UPDATE prescription
        SET date=?
		WHERE prescription_id=? ";
$q = $db->prepare($sql);
$q->execute(array($k,$g));


header("location: ../index.php");
exit();

// query



?>
