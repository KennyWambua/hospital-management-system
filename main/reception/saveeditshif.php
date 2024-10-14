<?php
// configuration
include('connect.php');

// new data
$id = $_POST['memi'];
$a = $_POST['status'];


// query
$sql = "UPDATE shift 
        SET status=?
		WHERE shift_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$id));
header("location: shiftview.php");

?>