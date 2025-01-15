<?php
include('connect.php');

$id = $_POST['memi'];
$a = $_POST['code'];
$b = $_POST['name'];

$sql = "UPDATE diagnosis
        SET code=?, name=? 
		    WHERE id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$id));
header("location: disease.php");
?>