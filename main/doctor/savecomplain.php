<?php
session_start();
include('connect.php');
$a = $_POST['code'];

$b = $_POST['name'];

// query
$sql = "INSERT INTO commoncomp (code,name) VALUES (:a,:b)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b));
header("location: common.php");


?>