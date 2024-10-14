

<?php
// configuration
include('connect.php');

// new data
$id = $_POST['id'];

$p = $_POST['patient_id'];

// query
$sql = "UPDATE appointments

        SET status='seen'
		WHERE id=?";
$q = $db->prepare($sql);
$q->execute(array($id));
header("location: patient_file.php?patient_id=$p");

?>