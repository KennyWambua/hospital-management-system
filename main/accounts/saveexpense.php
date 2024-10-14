<?php
session_start();
include('connect.php');
$a = $_POST['expense_name'];
$b = $_POST['desc1'];
$c = $_POST['amount'];
$d = $_POST['date'];


// query
$sql = "INSERT INTO expenses (expense_name,desc1,amount,date) VALUES (:a,:b,:c,:d)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d));
header("location: expenses.php");


?>