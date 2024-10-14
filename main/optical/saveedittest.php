<?php
// configuration
include('connect.php');

// new data
$id = $_POST['patient_id'];
$pre = $_POST['prescription_id'];
$m = $_POST['insurance_id'];
$a = $_POST['test1'];
$b = $_POST['test2'];
$c = $_POST['test3'];
$d = $_POST['test4'];
$e = $_POST['test5'];
$k =$_POST['department'];
$f = $_POST['test6'];
$g = $_POST['test7'];
$h = $_POST['test8'];

$sql = "UPDATE quee 
        SET department=?
		WHERE patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($k,$id));
// query
$sql = "UPDATE prescription 
        SET test1=?, test2=?, test3=?, test4=?,test5=?, test6=?, test7=?, test4=? WHERE prescription_id=? and patient_id=? and insurance_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$e,$f,$g,$h,$pre,$id,$m));
header("location:patient_file.php?patient_id=$id&insurance_id=$m");

?>