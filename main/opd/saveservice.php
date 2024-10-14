<?php
// configuration
include('connect.php');

// new data
$id = $_POST['patient_id'];
$pre = $_POST['prescription_id'];
$m = $_POST['insurance_id'];
$k =$_POST['department'];
$g = $_POST['service1'];
$h = $_POST['service2'];
$z = $_POST['status'];

$sql = "UPDATE quee 
        SET department=?,status=?
		WHERE patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($k,$z,$id));
// query
$sql = "UPDATE prescription 
        SET department=?, service1=?, service2=? WHERE prescription_id=? and patient_id=? and insurance_id=?";
$q = $db->prepare($sql);
$q->execute(array($k,$g,$h,$pre,$id,$m));
header("location:patient_file.php?patient_id=$id&insurance_id=$m");

?>