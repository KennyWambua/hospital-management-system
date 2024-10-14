<?php
session_start();
include('connect.php');
$a = $_POST['report_type'];
$j = $_POST['inpatient'];
$b = $_POST['prescription_id'];
$c = $_POST['patient_id'];
$d = $_POST['description'];
$d1 = $_POST['description1'];
$d2 = $_POST['description2'];
$d3 = $_POST['description3'];
$d4 = $_POST['description4'];
$d5 = $_POST['description5'];
$d6 = $_POST['description6'];
$d7 = $_POST['description7'];
$d8 = $_POST['description8'];
$d9 = $_POST['description9'];
$e = $_POST['laboratorist_id'];
$z = $_POST['date'];
$k =$_POST['department'];
$p =$_POST['department1'];
$n =$_POST['insurance_id'];




$result = $db->prepare("SELECT * FROM services WHERE product_name= :userid");
$result->bindParam(':userid', $a);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){

$asasa=$row['price'];

$result_type=$row['product_name'];
}

//edit qty
$sql = "UPDATE inpatient_request 
        SET department=?
		WHERE patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($k,$c));
// query
$sql = "INSERT INTO diagnosis_report (inpatient,report_type,prescription_id,patient_id,description,description1,description2,description3,description4,description5,description6,description7,description8,description9,laboratorist_id,price,date,department1,insurance_id) VALUES (:j,:a,:b,:c,:d,:d1,:d2,:d3,:d4,:d5,:d6,:d7,:d8,:d9,:e,:f,:z,:p,:n)";
$q = $db->prepare($sql);
$q->execute(array(':j'=>$j,':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':d1'=>$d1,':d2'=>$d2,':d3'=>$d3,':d4'=>$d4,':d5'=>$d5,':d6'=>$d6,':d7'=>$d7,':d8'=>$d8,':d9'=>$d9,':e'=>$e,':f'=>$asasa,':z'=>$z,':p'=>$p,':n'=>$n));
header("location: add_resultin.php?id=$w&patient_id=$c&prescription_id=$b&department1=$p&insurance_id=$n&inpatient=$j");


?>