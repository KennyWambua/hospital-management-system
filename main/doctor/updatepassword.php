<?php
// configuration
include('connect.php');

// new data
$name = $_POST['name'];
$password = $_POST['password'];




// query
$sql = "UPDATE user SET password=? WHERE name=? ";
$q = $db->prepare($sql);
$q->execute(array($name,$password));
header("location:patient_file.php?patient_id=$id");

?>