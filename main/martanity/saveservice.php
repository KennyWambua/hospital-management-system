<?php
// configuration
include('connect.php');

// new data
$id = $_POST['patient_id'];
$z = $_POST['name'];
$m = $_POST['insurance_id'];
$k =$_POST['department'];
$p =$_POST['pdepartment'];
$g = $_POST['service1'];
$h = $_POST['service2'];
$date = date('Y-m-d');

// query
$sql = "INSERT INTO inpatient_request (patient_id,name,insurance_id,department,pdepartment,service1,service2,date) VALUES (:y,:z,:m,:k,:p,:g,:h,:d)";
$q = $db->prepare($sql);


$q->execute(array(':y'=>$id,':z'=>$z,':m'=>$m,':k'=>$k,':p'=>$p,':g'=>$g,':h'=>$h,':d'=>$date));
header("location:patient_file.php?patient_id=$id&insurance_id=$m");

?>