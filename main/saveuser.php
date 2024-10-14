<?php
session_start();
include('../connect.php');
$a = $_POST['name'];
$b = $_POST['username'];
$c = $_POST['password'];
$d = $_POST['position'];
$z = $_POST['contact'];
$u = $_POST['department'];
// query
$sql = "INSERT INTO user (username,password,name,contact,department,position) VALUES (:b,:c,:a,:z,:u,:d)";
$q = $db->prepare($sql);
$q->execute(array(':b'=>$b,':c'=>$c,':a'=>$a,':z'=>$z,':u'=>$u,':d'=>$d));
header("location: users.php");


?>