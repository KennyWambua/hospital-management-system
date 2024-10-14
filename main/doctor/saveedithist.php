<?php
// configuration
include('connect.php');

// new data
$id = $_POST['patient_id'];
$pre = $_POST['prescription_id'];


$a = $_POST['complain1'];
$b = $_POST['period1'];
$c = $_POST['complain2'];
$d = $_POST['period2'];
$e = $_POST['complain3'];
$f = $_POST['period3'];
$g = $_POST['complain4'];
$h = $_POST['period4'];
$i = $_POST['complain5'];
$j = $_POST['period5'];
$k = $_POST['case_history'];

// query

$sql = "UPDATE prescription SET complain1=?, period1=?, complain2=?, period2=?, complain3=?, period3=?, complain4=?, period4=?, complain5=?, period5=?, case_history=? WHERE prescription_id=? and patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$e,$f,$g,$h,$i,$j,$k,$pre,$id));
header("location:patient_file.php?patient_id=$id");

?>