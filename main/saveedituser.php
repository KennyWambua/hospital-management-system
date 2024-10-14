<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['memi'];
$a = $_POST['username'];
$b = $_POST['password'];
$c = $_POST['name'];
$d = $_POST['contact'];
$m = $_POST['department'];
$g = $_POST['position'];

// query
$sql = "UPDATE user 
        SET username=?, password=?, name=?, contact=?,department=?,position=? 
		WHERE id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$m,$g,$id));
header("location: users.php");

?>