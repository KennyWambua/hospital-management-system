<?php
session_start();
include('../connect.php');


$b = $_POST['name'];

// query
$sql = "INSERT INTO insurance (name) VALUES (:b)";
$q = $db->prepare($sql);
$q->execute(array(':b'=>$b));
header("location: schemes.php");


?>