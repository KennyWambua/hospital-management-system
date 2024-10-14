<?php
// configuration
include('connect.php');

// new data
$id = $_POST['bed_id'];
$i = $_POST['bed_number'];
$a = $_POST['type'];
$b = $_POST['status'];
$c = $_POST['description'];
$d = $_POST['price'];
// query
$sql = "UPDATE bed 
        SET bed_number=?, type=?, status=?, description=?,price=?
		WHERE bed_id=?";
$q = $db->prepare($sql);
$q->execute(array($i,$a,$b,$c,$d,$id));
header("location: view_beds.php");

?>